$fill $(pos1_x) $(pos1_y) $(pos1_z) $(pos2_x) $(pos2_y) $(pos2_z) structure_void replace #air
$execute store result score replaceable jrv.item.building_wand run fill $(pos1_x) $(pos1_y) $(pos1_z) $(pos2_x) $(pos2_y) $(pos2_z) air replace structure_void
scoreboard players operation stacks jrv.item.building_wand = replaceable jrv.item.building_wand
scoreboard players operation stacks jrv.item.building_wand /= 64 jrv.constant

scoreboard players operation temp jrv.item.building_wand = stacks jrv.item.building_wand
scoreboard players operation temp jrv.item.building_wand *= 64 jrv.constant
scoreboard players operation singles jrv.item.building_wand = replaceable jrv.item.building_wand
scoreboard players operation singles jrv.item.building_wand -= temp jrv.item.building_wand


tellraw @s ["",{"text":"Preencher:","bold":true,"color":"gold"},"\n",{"text":"Volume da seleção: ","color":"white"},{"score":{"name":"vol","objective":"jrv.item.building_wand"},"color":"green"},"\n","Blocos necessários: ",{"score":{"name":"replaceable","objective":"jrv.item.building_wand"},"color":"green"},"\n",{"text":"[","color":"blue"},{"score":{"name":"stacks","objective":"jrv.item.building_wand"},"color":"green"}," pack(s) + ",{"score":{"name":"singles","objective":"jrv.item.building_wand"},"color":"green"},{"text":"]","color": "blue"}]