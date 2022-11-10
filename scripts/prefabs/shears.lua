local assets =
{
    Asset("ANIM", "anim/shears.zip"),
    Asset("ANIM", "anim/swap_shears.zip"),
}

local function onfinished(inst)
    inst:Remove()
end

local function onequip(inst, owner) 
    owner.AnimState:OverrideSymbol("swap_object", "swap_shears", "swap_shears")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end

local function fn()
    local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)
	MakeInventoryFloatable(inst)
    
    inst.AnimState:SetBank("shears")
    inst.AnimState:SetBuild("shears")
    inst.AnimState:PlayAnimation("idle")

    inst:AddTag("shears")	

    inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end	

    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(TUNING.SHEARS_DAMAGE)

    inst:AddComponent("tool")
    inst.components.tool:SetAction(ACTIONS.SHEAR, 3)

    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(TUNING.SHEARS_USES)
    inst.components.finiteuses:SetUses(TUNING.SHEARS_USES)
    
    inst.components.finiteuses:SetOnFinished(onfinished)
    inst.components.finiteuses:SetConsumption(ACTIONS.SHEAR, 1)

    inst:AddComponent("equippable")
	
    inst:AddComponent("inspectable")
    inst:AddComponent("inventoryitem")
	
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)
    
    MakeHauntablePanic(inst)

    return inst
end

return Prefab("shears", fn, assets) 