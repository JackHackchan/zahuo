function 选择到阵容(值)
    if 值 == 16 then
        return true
    else
        按键("right_arrow")
        
    end
    return false
end

function 阵容调配()
    while 1 do
        local 当前屏幕ID = 取屏幕ID()
        local 页面文字 = 取当前刷新文字()
        local data = 取当前页面信息()
        local 当前页面 = data.curpagename
        local 主页面名 = data.mainpagename
        local 选项位置值 = data.subitemid
        local 页面文字表 = string.split(页面文字, "|")
        
        
        
        if 主页面名 then
            if 主页面名=='FutHub2' then
                if 当前页面 =='FUT_CENTRAL_CLUB' then
                    if 选择到阵容(选项位置值) then
                        按键("enter")
                        延时(4000)
                    end
                else
                    按键("c")
                    延时(2000)
                end
            elseif 主页面名=='MainMenuHub' then
                if 当前屏幕ID == 'mainhubG5cfg' then
                    print("掉线")
                    break
                else
                    print("MainMenuHub")
                end
            elseif 主页面名=='FutSquadSearchFilter' then
                if 当前页面 =='FUT_SEARCH_SQUAD_NONE' then
                    if 页面文字:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_2:", 1, true) then
                        print("新手教程")
                        按键("enter")
                    elseif 页面文字:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_1:", 1, true) then
                        print("新手教程")
                        按键("enter")
                    elseif 页面文字:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_1:", 1, true) then
                        print("新手教程")
                        按键("enter")
                    else
                        球员换人直到数量够("ST","LST",4)
                        球员换人直到数量够("CM","LCM",4)
                        球员换人直到数量够("CB","LCB",4)
                        球员换人直到数量够("LM","LM",2)
                        球员换人直到数量够("RM","RM",2)
                        球员换人直到数量够("LB","LB",2)
                        球员换人直到数量够("RB","RB",2)
                        球员换人直到数量够("GK","GK",2)
                        break
                    end
             
                end
            else
                print("未知")
            end
		end
		
        延时(500)
    end
end



function 查询球员数量(位置)
    local 球员数量 = 0
    local 球员表 = 遍历球队()
    for 场上位置, 球员 in pairs(球员表.位置) do
        if  球员.最佳位置 == 位置 then
            球员数量 = 球员数量 + 1
        end
    end
    return 球员数量
end

function 查询球员最佳位置(位置)
    local 球员表 = 遍历球队()
    for 场上位置, 球员 in pairs(球员表.位置) do
        if 场上位置 == 位置 then
            return 球员.最佳位置
        end
    end
end


function 根据球员名字查询位置(名字)
    local 球员表 = 遍历球队()
    for 场上位置, 球员 in pairs(球员表.位置) do
        if 球员.名称 == 名字 then
            return 场上位置
        end
    end
end



function 查询球员后背上的多的球员(位置)
    local 球员表 = 遍历球队()
    for 场上位置, 球员 in pairs(球员表.位置) do
        if 场上位置:find("后备", 1, true) then
            if 球员.最佳位置 == 位置 then
                return 场上位置
            end
        end
    end
end



function 查询球员最佳位置不需要的()
    local 球员表 = 遍历球队()
    for 场上位置, 球员 in pairs(球员表.位置) do
        if 球员.最佳位置 == "ST" then
        elseif 球员.最佳位置 == "CM" then
        elseif 球员.最佳位置 == "CB" then
        elseif 球员.最佳位置 == "LM" then
        elseif 球员.最佳位置 == "RM" then
        elseif 球员.最佳位置 == "LB" then
        elseif 球员.最佳位置 == "RB" then
        elseif 球员.最佳位置 == "GK" then
        else
            print(场上位置.."的最佳位置是"..球员.最佳位置)
            return 场上位置
        end
    end
end


function 根据球员名字查询位置(名字)
    local 球员表 = 遍历球队()
    for 场上位置, 球员 in pairs(球员表.位置) do
        if 球员.名称 == 名字 then
            return 场上位置
        end
    end
end

function 查询场上租借球员()
    local 球员表 = 遍历球队()
    for 场上位置, 球员 in pairs(球员表.位置) do
        if 场上位置:find("后备", 1, true) or 场上位置:find("替补", 1, true) then
            
        elseif 球员.租借球员  then
            return 场上位置
        end
    end
    return false
end
function 查询全场租借球员()
    local 球员表 = 遍历球队()
    for 场上位置, 球员 in pairs(球员表.位置) do
        if 球员.租借球员  then
            return 场上位置
        end
    end
    return false
end

function 查询全场空位置球员()
    local 球员表 = 遍历球队()
    for 场上位置, 球员 in pairs(球员表.位置) do
        if not 球员.最佳位置 then
            print("空位置球员"..场上位置)
            return 场上位置
        end
    end
    return false
end

function 球员换人直到数量够(需要的最佳位置,场上的位置,数量)
    while 2 do
        要删除球员的位置 = 查询全场租借球员()
        if 要删除球员的位置 then
            异常状态前置处理()
            移动到球员位置(要删除球员的位置, "是")
            while 1 do
                页面文字 = 取当前刷新文字()
                if 页面文字:find("FUT_CHANGE_PLAYER:", 1, true) then
                    print("有球员合同字串")
                    break
                else
                    print("没有更改球员字串")
                     按键("s")
                     延时(3000)
                end
            end
            修改文件内容("chushou")
            while 1 do
                页面文字 = 取当前刷新文字()
                if 读取文件内容()=="2"  then
                    print("合同按回车")
                    按键("enter",5000)
                    local 页面文字表 = string.split(页面文字, "|")
                    print(table.tostring(页面文字表))
                    修改文件内容("3")
                elseif 页面文字:find("Swap:", 1, true) and 读取文件内容()=="3" then
                    print("有换人字样了")
                    break
                elseif 页面文字:find("ReallyDiscardCard:", 1, true) then
                    print("确认出售")
                    按键("down_arrow")
                    延时(2000)
                    按键("enter")
                    延时(2000)
                else
                    print(读取文件内容().."读取文件内容()")
                    print("等待python 处理")
                    延时(2000)
                end
                延时(5000)
            end
        end
            要添加的球员 = 查询全场空位置球员()
            if 要添加的球员 then
                异常状态前置处理()
                移动到球员位置(要添加的球员, "是")
                按键("enter")
                延时(2000)
                按键("c")
                延时(2000)
                while 1 do
                        local 当前屏幕ID = 取屏幕ID()
                        local 页面文字 = 取当前刷新文字()
                        local data = 取当前页面信息()
                        local 当前页面 = data.curpagename
                        local 主页面名 = data.mainpagename
                        local 选项位置值 = data.subitemid
                        local 页面文字表 = string.split(页面文字, "|")
                        print(table.tostring(页面文字表))
                        
                        if 当前屏幕ID == "FUT_CLUB_CAP" then
                            
                            --if 页面文字:find("FUT_ERROR_POPUP_PLAYGAME:", 1, true) then
                            if 页面文字:find("FUT_RevisionInSquad:", 1, true) then
                                print("已经有这个球员其他版本")
                                按键("enter")
                                延时(3000)
                                按键("right_arrow")
                                延时(3000)
                                按键("enter")
                                延时(3000)
                            elseif 页面文字:find("FUT_SHOW_LISTVIEW:", 1, true) then
                                print("有切换列表视图按钮")
                                按键("enter")
                                延时(3000)
                                --break
                            elseif 页面文字:find("FUT_CHALKTUT_MULTISWAP_DESC_1:", 1, true) then
                                print("有新手教程")
                                按键("enter")
                                延时(3000)
                                --break
                            else
                                按键("enter")
                                延时(3000)
                            end
                        elseif 当前屏幕ID == "FUT_GENERIC_OK_POPUP_ID" then
                                print("已经有这个球员其他版本")
                                按键("enter")
                                延时(3000)
                                按键("right_arrow")
                                延时(3000)
                                按键("enter")
                                延时(3000)
                        elseif 当前屏幕ID == "FUT_UC_SQUAD" then
                            break
                        else
                            print("继续等待")
                            延时(1000)
                        end
                        延时(2000)
                end
            end
        if not 查询全场租借球员() and not 查询全场空位置球员() then
            print("没有租借,也没有空位置球员")
            break
        end
        延时(3000)
    end

    -- 要删除球员的位置 = 根据球员名字查询位置("Donnarumma")
    -- if 要删除球员的位置 then
            -- 异常状态前置处理()
            -- 移动到球员位置(要删除球员的位置, "是")
            -- 按键("enter")
            -- 延时(2000)
            -- 按键("c")
            -- 延时(2000)
            -- while 1 do
                    -- local 当前屏幕ID = 取屏幕ID()
                    -- local 页面文字 = 取当前刷新文字()
                    -- local data = 取当前页面信息()
                    -- local 当前页面 = data.curpagename
                    -- local 主页面名 = data.mainpagename
                    -- local 选项位置值 = data.subitemid
                    
                    -- if 当前屏幕ID == "FUT_CLUB_CAP" then
                        -- if 页面文字:find("FUT_SHOW_LISTVIEW:", 1, true) then
                            -- print("有切换列表视图按钮")
                            -- 按键("right_arrow")
                            -- 延时(3000)
                            -- 按键("enter")
                            -- 延时(3000)
                            -- --break
                        -- elseif 页面文字:find("FUT_CHALKTUT_MULTISWAP_DESC_1:", 1, true) then
                            -- print("有新手教程")
                            -- 按键("enter")
                            -- 延时(3000)
                            -- --break
                        -- else
                            -- 按键("enter")
                            -- 延时(3000)
                        -- end
                    -- elseif 当前屏幕ID == "FUT_UC_SQUAD" then
                        -- break
                    -- else
                        -- print("继续等待")
                        -- 延时(1000)
                    -- end
                    -- 延时(500)
            -- end
    -- end
        
    -- while 1 do
        -- 要删除球员的位置 = 查询场上租借球员()
        -- if 要删除球员的位置 then
            -- 异常状态前置处理()
            -- 移动到球员位置(要删除球员的位置, "是")
            -- 按键("enter")
            -- 延时(2000)
            -- 按键("c")
            -- 延时(2000)
            -- while 1 do
                    -- local 当前屏幕ID = 取屏幕ID()
                    -- local 页面文字 = 取当前刷新文字()
                    -- local data = 取当前页面信息()
                    -- local 当前页面 = data.curpagename
                    -- local 主页面名 = data.mainpagename
                    -- local 选项位置值 = data.subitemid
                    
                    -- if 当前屏幕ID == "FUT_CLUB_CAP" then
                        -- if 页面文字:find("FUT_SHOW_LISTVIEW:", 1, true) then
                            -- print("有切换列表视图按钮")
                            -- 按键("right_arrow")
                            -- 延时(3000)
                            -- 按键("enter")
                            -- 延时(3000)
                            -- --break
                        -- elseif 页面文字:find("FUT_CHALKTUT_MULTISWAP_DESC_1:", 1, true) then
                            -- print("有新手教程")
                            -- 按键("enter")
                            -- 延时(3000)
                            -- --break
                        -- else
                            -- 按键("enter")
                            -- 延时(3000)
                        -- end
                    -- elseif 当前屏幕ID == "FUT_UC_SQUAD" then
                        -- break
                    -- else
                        -- print("继续等待")
                        -- 延时(1000)
                    -- end
                    -- 延时(500)
            -- end
        -- else
            -- break
        -- end
    -- end
    
    while 查询球员数量(需要的最佳位置) <= 数量-1 do
        if 查询球员最佳位置(场上的位置) != 需要的最佳位置 then
            异常状态前置处理()
            移动到球员位置(场上的位置, "是")
            按键("enter")
            延时(2000)
            按键("c")
            延时(2000)
            while 1 do
                    local 当前屏幕ID = 取屏幕ID()
                    local 页面文字 = 取当前刷新文字()
                    local data = 取当前页面信息()
                    local 当前页面 = data.curpagename
                    local 主页面名 = data.mainpagename
                    local 选项位置值 = data.subitemid
                    
                        if 当前屏幕ID == "FUT_CLUB_CAP" then
                            
                            --if 页面文字:find("FUT_ERROR_POPUP_PLAYGAME:", 1, true) then
                            if 页面文字:find("FUT_RevisionInSquad:", 1, true) then
                                print("已经有这个球员其他版本")
                                按键("enter")
                                延时(3000)
                                按键("right_arrow")
                                延时(3000)
                                按键("enter")
                                延时(3000)
                            elseif 页面文字:find("FUT_SHOW_LISTVIEW:", 1, true) then
                                print("有切换列表视图按钮")
                                按键("enter")
                                延时(3000)
                                --break
                            elseif 页面文字:find("FUT_CHALKTUT_MULTISWAP_DESC_1:", 1, true) then
                                print("有新手教程")
                                按键("enter")
                                延时(3000)
                                --break
                            else
                                按键("enter")
                                延时(3000)
                            end
                        elseif 当前屏幕ID == "FUT_GENERIC_OK_POPUP_ID" then
                                print("已经有这个球员其他版本")
                                按键("enter")
                                延时(3000)
                                按键("right_arrow")
                                延时(3000)
                                按键("enter")
                                延时(3000)
                        elseif 当前屏幕ID == "FUT_UC_SQUAD" then
                            break
                        else
                            print("继续等待")
                            延时(1000)
                        end
                        延时(2000)
            end
        else
                要删除球员的位置 = 查询全场租借球员()
                if 要删除球员的位置 then
                    异常状态前置处理()
                    移动到球员位置(要删除球员的位置, "是")
                    按键("enter")
                    延时(2000)
                    按键("c")
                    延时(2000)
                    while 1 do
                            local 当前屏幕ID = 取屏幕ID()
                            local 页面文字 = 取当前刷新文字()
                            local data = 取当前页面信息()
                            local 当前页面 = data.curpagename
                            local 主页面名 = data.mainpagename
                            local 选项位置值 = data.subitemid
                            
                        if 当前屏幕ID == "FUT_CLUB_CAP" then
                            
                            --if 页面文字:find("FUT_ERROR_POPUP_PLAYGAME:", 1, true) then
                            if 页面文字:find("FUT_RevisionInSquad:", 1, true) then
                                print("已经有这个球员其他版本")
                                按键("enter")
                                延时(3000)
                                按键("right_arrow")
                                延时(3000)
                                按键("enter")
                                延时(3000)
                            elseif 页面文字:find("FUT_SHOW_LISTVIEW:", 1, true) then
                                print("有切换列表视图按钮")
                                按键("enter")
                                延时(3000)
                                --break
                            elseif 页面文字:find("FUT_CHALKTUT_MULTISWAP_DESC_1:", 1, true) then
                                print("有新手教程")
                                按键("enter")
                                延时(3000)
                                --break
                            else
                                按键("enter")
                                延时(3000)
                            end
                        elseif 当前屏幕ID == "FUT_GENERIC_OK_POPUP_ID" then
                                print("已经有这个球员其他版本")
                                按键("enter")
                                延时(3000)
                                按键("right_arrow")
                                延时(3000)
                                按键("enter")
                                延时(3000)
                        elseif 当前屏幕ID == "FUT_UC_SQUAD" then
                            break
                        else
                            print("继续等待")
                            延时(1000)
                        end
                        延时(2000)
                    end
                else
                    可以换的位置 = 查询球员最佳位置不需要的()
                    if 可以换的位置 then
                        异常状态前置处理()
                        交换位置(场上的位置, 可以换的位置)
                    else
                        if 查询球员数量("CB") >= 5 then
                            可以换的位置 = 查询球员后背上的多的球员("CB")
                            if 可以换的位置 then
                                异常状态前置处理()
                                交换位置(场上的位置, 可以换的位置)
                            else
                                print("没有可换的")
                                break
                            end
                        elseif 查询球员数量("CM") >= 5 then
                            可以换的位置 = 查询球员后背上的多的球员("CM")
                            if 可以换的位置 then
                                异常状态前置处理()
                                交换位置(场上的位置, 可以换的位置)
                            else
                                print("没有可换的")
                                break
                            end
                        elseif 查询球员数量("ST") >= 5 then
                            可以换的位置 = 查询球员后背上的多的球员("ST")
                            if 可以换的位置 then
                                异常状态前置处理()
                                交换位置(场上的位置, 可以换的位置)
                            else
                                print("没有可换的")
                                break
                            end
                        elseif 查询球员数量("RB") >= 3 then
                            可以换的位置 = 查询球员后背上的多的球员("RB")
                            if 可以换的位置 then
                                异常状态前置处理()
                                交换位置(场上的位置, 可以换的位置)
                            else
                                print("没有可换的")
                                break
                            end
                        elseif 查询球员数量("RM") >= 3 then
                            可以换的位置 = 查询球员后背上的多的球员("RB")
                            if 可以换的位置 then
                                异常状态前置处理()
                                交换位置(场上的位置, 可以换的位置)
                            else
                                print("没有可换的")
                                break
                            end
                        elseif 查询球员数量("LM") >= 3 then
                            可以换的位置 = 查询球员后背上的多的球员("RB")
                            if 可以换的位置 then
                                异常状态前置处理()
                                交换位置(场上的位置, 可以换的位置)
                            else
                                print("没有可换的")
                                break
                            end
                        elseif 查询球员数量("LB") >= 3 then
                            可以换的位置 = 查询球员后背上的多的球员("LB")
                            if 可以换的位置 then
                                异常状态前置处理()
                                交换位置(场上的位置, 可以换的位置)
                            else
                                print("没有可换的")
                                break
                            end
                        elseif 查询球员数量("GK") >= 3 then
                            可以换的位置 = 查询球员后背上的多的球员("GK")
                            if 可以换的位置 then
                                异常状态前置处理()
                                交换位置(场上的位置, 可以换的位置)
                            else
                                print("没有可换的")
                                break
                            end
                        else
                            print("配置阵容 不知道拿谁还")
                        end
                        
                    end
                end
        end
    end
end


function 阵容创建()
    print("开始执行阵容创建")
    while 1 do
        local 当前屏幕ID = 取屏幕ID()
        local 页面文字 = 取当前刷新文字()
        local data = 取当前页面信息()
        local 当前页面 = data.curpagename
        local 主页面名 = data.mainpagename
        local 选项位置值 = data.subitemid
        local 页面文字表 = string.split(页面文字, "|")
        
        
        
        if 当前屏幕ID == "futSquadWizard" then
            if 页面文字:find( "FUT_SB_Replace_No:", 1, true) then
                按键("right_arrow")
                延时(1000)
            elseif  页面文字:find( "FUT_SB_Replace_Yes:", 1, true) then    
                按键("d")
                延时(1000)
            else
                print("up")
                按键("up_arrow")
                延时(1000)
            end
            
        elseif 当前屏幕ID == "SQUAD_WIZARD_POPUP_ID" then
            if 页面文字:find( "FUT_SQUAD_WIZARD_COMPLETED:", 1, true) then
                print("创建完成")
                按键("enter")
                延时(1000)
                break
            elseif 页面文字:find( "OSDK_LOADING::", 1, true) then
                print("正在处理")
                延时(5000)
            else
                print("阵容创建未知")
                print(table.tostring(页面文字表))
            end
        elseif 页面文字:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_2:", 1, true) then
                        print("新手教程")
                        按键("enter")
        elseif 页面文字:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_1:", 1, true) then
                        print("新手教程")
                        按键("enter")
        elseif 页面文字:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_1:", 1, true) then
                        print("新手教程")
                        按键("enter")
        elseif 页面文字:find( "FUT_CHALKTUT_PLAYERVIEWS_TITLE_1:", 1, true) then
                        print("新手教程")
                        按键("enter")
        elseif 页面文字:find( "FUT_SQUAD_WIZARD:", 1, true) then
            按键("down_arrow")
            延时(1000)
            按键("down_arrow")
            延时(1000)
            按键("enter")
            延时(1000)
            
        else
            按键("w")
            延时(1000)
        end
        延时(500)
    end
end



function 进入阵容创建阵容()
    print("-----进入阵容创建阵容-----")
    --游戏前台()
    延时(1000)
    
    还未执行过阵容创建 = 1
    还未执行过阵容调配 = 1
    while 1 do
        local 当前屏幕ID = 取屏幕ID()
        local 页面文字 = 取当前刷新文字()
        local data = 取当前页面信息()
        local 当前页面 = data.curpagename
        local 主页面名 = data.mainpagename
        local 选项位置值 = data.subitemid
        local 页面文字表 = string.split(页面文字, "|")
        

        print(当前屏幕ID)
        if 主页面名 then
            if 主页面名=='FutHub2' then
                if 当前页面 =='FUT_CENTRAL_CLUB' then
                    if 选择到阵容(选项位置值) then
                        按键("enter")
                        延时(4000)
                    end
                else
                    按键("c")
                    延时(2000)
                end
            elseif 主页面名=='MainMenuHub' then
                if 当前屏幕ID == 'mainhubG5cfg' then
                    print("掉线")
                    break
                else
                    print("MainMenuHub")
                end
            elseif 主页面名=='FutSquadSearchFilter' then
                if 当前页面 =='FUT_SEARCH_SQUAD_NONE' then
                    if 页面文字:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_2:", 1, true) then
                        print("新手教程")
                        按键("enter")
                    elseif 页面文字:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_1:", 1, true) then
                        print("新手教程")
                        按键("enter")
                    elseif 页面文字:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_1:", 1, true) then
                        print("新手教程")
                        按键("enter")
                    elseif 页面文字:find( "FUT_CHALKTUT_PLAYERVIEWS_TITLE_1:", 1, true) then
                        print("新手教程")
                        按键("enter")
                    elseif 还未执行过阵容创建 == 1 then
                        阵容创建()
                        延时(5000)
                        还未执行过阵容创建 = 0
                    elseif 还未执行过阵容调配 == 1 then
                        阵容调配()
                        还未执行过阵容调配 = 0
                        break
                    end
             
                end
            else
                print("未知")
            end

        else
            print("未知")
            --商店_主页面不存在处理(页面文字)
        end
        延时(500)
    end
end



进入阵容创建阵容()




