
-------------------以下是一个礼包的定义
--礼品包的详细信息
function GetPacketItemsInfo_34058(RoleIndex, PacketID)
	local Sex = GetRoleSex(RoleIndex)
	if Sex == SexType_Male then
		return " 32002       ,2   ,-1,33003       ,1   ,-1,22004       ,1    ,604800"		--物品1ID 数量 有效时间1, 物品2ID 数量2 有效时间2, 物品ID3 数量3 有效时间3
	else
		return " 32002       ,2   ,-1,33003       ,1   ,-1,22004       ,1    ,604800"		--物品1ID 数量 有效时间1, 物品2ID 数量2 有效时间2, 物品ID3 数量3 有效时间3
	end
end

-- 礼包定义,需要填物品ID号,数量
function PacketGetReward_34058 (RoleIndex)
	local nPacketID = 34058
	local Sex = GetRoleSex(RoleIndex)
	--礼包的道具数量,必填
	local Count = 3
	local ItemTable = {}
	--------------------------------ItemID    数量  有效期         
	
	if Sex == SexType_Male then    
		AddItemToTable(ItemTable,     32002       ,2   ,-1)
		AddItemToTable(ItemTable,     33003       ,1   ,-1)
		AddItemToTable(ItemTable,     22004       ,1    ,604800)


	else
		AddItemToTable(ItemTable,     32002       ,2   ,-1)
		AddItemToTable(ItemTable,     33003       ,1   ,-1)
		AddItemToTable(ItemTable,     22004       ,1    ,604800)
	end		
	
	if CanAddPacketItem(RoleIndex,nPacketID) == 1 then
		for	i = 1, Count do
			AddItemToRole(RoleIndex,ItemTable[i][1],ItemTable[i][2], ItemTable[i][3],nPacketID);		
		end
			ModifyRoleMoney(RoleIndex, 58);	------第二个参数表示增加的金券数,如果需要添加金券,则需要修改该数字；没有该函数或该数字为0（这条语句）表示金券为0,
		return 1
	else
		return 0
	end	
end


--注册获取礼包信息函数
-- 礼包ID 礼包描述函数
RegisterGetPacketInfo(34058, GetPacketItemsInfo_34058)
--注册礼包使用函数
--                    礼包ID 礼包获取函数
RegisterGetPacketItem(34058, PacketGetReward_34058)



