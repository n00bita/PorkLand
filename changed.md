# 世界

修复了岛会连接在一起的问题(scripts/map/separate_region.lua)





# 季节
修改季节温度曲线, 现在温度曲线更平滑, 但是保持上下限不变(30~40)
季节长度 极短5天, 短7天, 默认10天, 长15天, 极长20天
首个平合季降水会比正常的平和季来的慢


## 潮湿季
在潮湿季起雾时,修复所有的防水物品(除了可以防雾潮湿的物品)失效,只让它们在防雾的潮湿时失效
背重物不会再由雾引起的速度降低,但是它不能避免玩家佩戴其他装备的减速(类似象鼻虫披风)。因为他们自带减速





# 物品

## 象鼻虫壳
可作祟



# 生物

## 发光飞虫
现在发光飞虫和虫茧是两个prefab
修复虫茧可以被捕捉，被冰冻，被催眠的问题
修复虫茧当玩家走远时会被移除

添加虫茧爆开时的声音
添加虫茧死亡时的声音
飞虫和虫茧可作祟

## 呆望雀
添加了呆望雀刷新点(可修改数量), 刷新时间(很少15天, 默认10天, 较多5天, 大量1天), 刷新点数量可选

添加了冰冻动画的图层, 在被拔毛后也能正确显示冰冻动画
修复了被火烧后, 吃东西被攻击时会呆住不动的问题
修复了羽毛被拔后只能再生一根的问题, 跳过时间也可正常再生
修复了被拔毛后羽毛还能正常显示
修复了被拔毛后不能正常再生毛的问题, 毛再生时间1天一次(TUNING.PEAGAWK_FEATHER_REGROW_TIME)
可作祟


## 象鼻虫
添加跳跃动画, 用来上船, 并且在船上时不会触发钻地
象鼻虫刷新时间(很少6时刻, 默认3时刻(3*30), 较多1.5时刻, 大量0.75时刻)
象鼻虫刷新点数量(被感染的高草)可修改数量(只对世界生成时被感染的高草起作用)
可作祟


## 疯狂甲虫
可作祟
可跳船


# 植物

## 芦笋
芦笋生成数量可调
芦笋可再生, 再生速度可调(繁茂季0.5倍速再生, 默认20天)
可作祟


## 高草
高草生成数量可调
可作祟





# 建筑

## 日晷
更改日晷按钮为只有活着的玩家才能踩(为了防止放上物品压住后传送离开或者下线永久压住按钮, 并且房间不可进)
现在日晷同时左右两边按钮踩下时会进行抵消(默认转速和声音)
现在踩在日晷上跳时间可以起作用(可能有bug)
可作祟

修复毁灭季时重新加载游戏日晷会有转动的声音
修复代码中以及动画文件中的拼写错误