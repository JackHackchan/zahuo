function ѡ������(ֵ)
    if ֵ == 16 then
        return true
    else
        ����("right_arrow")
        
    end
    return false
end

function ���ݵ���()
    while 1 do
        local ��ǰ��ĻID = ȡ��ĻID()
        local ҳ������ = ȡ��ǰˢ������()
        local data = ȡ��ǰҳ����Ϣ()
        local ��ǰҳ�� = data.curpagename
        local ��ҳ���� = data.mainpagename
        local ѡ��λ��ֵ = data.subitemid
        local ҳ�����ֱ� = string.split(ҳ������, "|")
        
        
        
        if ��ҳ���� then
            if ��ҳ����=='FutHub2' then
                if ��ǰҳ�� =='FUT_CENTRAL_CLUB' then
                    if ѡ������(ѡ��λ��ֵ) then
                        ����("enter")
                        ��ʱ(4000)
                    end
                else
                    ����("c")
                    ��ʱ(2000)
                end
            elseif ��ҳ����=='MainMenuHub' then
                if ��ǰ��ĻID == 'mainhubG5cfg' then
                    print("����")
                    break
                else
                    print("MainMenuHub")
                end
            elseif ��ҳ����=='FutSquadSearchFilter' then
                if ��ǰҳ�� =='FUT_SEARCH_SQUAD_NONE' then
                    if ҳ������:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_2:", 1, true) then
                        print("���ֽ̳�")
                        ����("enter")
                    elseif ҳ������:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_1:", 1, true) then
                        print("���ֽ̳�")
                        ����("enter")
                    elseif ҳ������:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_1:", 1, true) then
                        print("���ֽ̳�")
                        ����("enter")
                    else
                        ��Ա����ֱ��������("ST","LST",4)
                        ��Ա����ֱ��������("CM","LCM",4)
                        ��Ա����ֱ��������("CB","LCB",4)
                        ��Ա����ֱ��������("LM","LM",2)
                        ��Ա����ֱ��������("RM","RM",2)
                        ��Ա����ֱ��������("LB","LB",2)
                        ��Ա����ֱ��������("RB","RB",2)
                        ��Ա����ֱ��������("GK","GK",2)
                        break
                    end
             
                end
            else
                print("δ֪")
            end
		end
		
        ��ʱ(500)
    end
end



function ��ѯ��Ա����(λ��)
    local ��Ա���� = 0
    local ��Ա�� = �������()
    for ����λ��, ��Ա in pairs(��Ա��.λ��) do
        if  ��Ա.���λ�� == λ�� then
            ��Ա���� = ��Ա���� + 1
        end
    end
    return ��Ա����
end

function ��ѯ��Ա���λ��(λ��)
    local ��Ա�� = �������()
    for ����λ��, ��Ա in pairs(��Ա��.λ��) do
        if ����λ�� == λ�� then
            return ��Ա.���λ��
        end
    end
end


function ������Ա���ֲ�ѯλ��(����)
    local ��Ա�� = �������()
    for ����λ��, ��Ա in pairs(��Ա��.λ��) do
        if ��Ա.���� == ���� then
            return ����λ��
        end
    end
end



function ��ѯ��Ա���ϵĶ����Ա(λ��)
    local ��Ա�� = �������()
    for ����λ��, ��Ա in pairs(��Ա��.λ��) do
        if ����λ��:find("��", 1, true) then
            if ��Ա.���λ�� == λ�� then
                return ����λ��
            end
        end
    end
end



function ��ѯ��Ա���λ�ò���Ҫ��()
    local ��Ա�� = �������()
    for ����λ��, ��Ա in pairs(��Ա��.λ��) do
        if ��Ա.���λ�� == "ST" then
        elseif ��Ա.���λ�� == "CM" then
        elseif ��Ա.���λ�� == "CB" then
        elseif ��Ա.���λ�� == "LM" then
        elseif ��Ա.���λ�� == "RM" then
        elseif ��Ա.���λ�� == "LB" then
        elseif ��Ա.���λ�� == "RB" then
        elseif ��Ա.���λ�� == "GK" then
        else
            print(����λ��.."�����λ����"..��Ա.���λ��)
            return ����λ��
        end
    end
end


function ������Ա���ֲ�ѯλ��(����)
    local ��Ա�� = �������()
    for ����λ��, ��Ա in pairs(��Ա��.λ��) do
        if ��Ա.���� == ���� then
            return ����λ��
        end
    end
end

function ��ѯ���������Ա()
    local ��Ա�� = �������()
    for ����λ��, ��Ա in pairs(��Ա��.λ��) do
        if ����λ��:find("��", 1, true) or ����λ��:find("�油", 1, true) then
            
        elseif ��Ա.�����Ա  then
            return ����λ��
        end
    end
    return false
end
function ��ѯȫ�������Ա()
    local ��Ա�� = �������()
    for ����λ��, ��Ա in pairs(��Ա��.λ��) do
        if ��Ա.�����Ա  then
            return ����λ��
        end
    end
    return false
end

function ��ѯȫ����λ����Ա()
    local ��Ա�� = �������()
    for ����λ��, ��Ա in pairs(��Ա��.λ��) do
        if not ��Ա.���λ�� then
            print("��λ����Ա"..����λ��)
            return ����λ��
        end
    end
    return false
end

function ��Ա����ֱ��������(��Ҫ�����λ��,���ϵ�λ��,����)
    while 2 do
        Ҫɾ����Ա��λ�� = ��ѯȫ�������Ա()
        if Ҫɾ����Ա��λ�� then
            �쳣״̬ǰ�ô���()
            �ƶ�����Աλ��(Ҫɾ����Ա��λ��, "��")
            while 1 do
                ҳ������ = ȡ��ǰˢ������()
                if ҳ������:find("FUT_CHANGE_PLAYER:", 1, true) then
                    print("����Ա��ͬ�ִ�")
                    break
                else
                    print("û�и�����Ա�ִ�")
                     ����("s")
                     ��ʱ(3000)
                end
            end
            �޸��ļ�����("chushou")
            while 1 do
                ҳ������ = ȡ��ǰˢ������()
                if ��ȡ�ļ�����()=="2"  then
                    print("��ͬ���س�")
                    ����("enter",5000)
                    local ҳ�����ֱ� = string.split(ҳ������, "|")
                    print(table.tostring(ҳ�����ֱ�))
                    �޸��ļ�����("3")
                elseif ҳ������:find("Swap:", 1, true) and ��ȡ�ļ�����()=="3" then
                    print("�л���������")
                    break
                elseif ҳ������:find("ReallyDiscardCard:", 1, true) then
                    print("ȷ�ϳ���")
                    ����("down_arrow")
                    ��ʱ(2000)
                    ����("enter")
                    ��ʱ(2000)
                else
                    print(��ȡ�ļ�����().."��ȡ�ļ�����()")
                    print("�ȴ�python ����")
                    ��ʱ(2000)
                end
                ��ʱ(5000)
            end
        end
            Ҫ��ӵ���Ա = ��ѯȫ����λ����Ա()
            if Ҫ��ӵ���Ա then
                �쳣״̬ǰ�ô���()
                �ƶ�����Աλ��(Ҫ��ӵ���Ա, "��")
                ����("enter")
                ��ʱ(2000)
                ����("c")
                ��ʱ(2000)
                while 1 do
                        local ��ǰ��ĻID = ȡ��ĻID()
                        local ҳ������ = ȡ��ǰˢ������()
                        local data = ȡ��ǰҳ����Ϣ()
                        local ��ǰҳ�� = data.curpagename
                        local ��ҳ���� = data.mainpagename
                        local ѡ��λ��ֵ = data.subitemid
                        local ҳ�����ֱ� = string.split(ҳ������, "|")
                        print(table.tostring(ҳ�����ֱ�))
                        
                        if ��ǰ��ĻID == "FUT_CLUB_CAP" then
                            
                            --if ҳ������:find("FUT_ERROR_POPUP_PLAYGAME:", 1, true) then
                            if ҳ������:find("FUT_RevisionInSquad:", 1, true) then
                                print("�Ѿ��������Ա�����汾")
                                ����("enter")
                                ��ʱ(3000)
                                ����("right_arrow")
                                ��ʱ(3000)
                                ����("enter")
                                ��ʱ(3000)
                            elseif ҳ������:find("FUT_SHOW_LISTVIEW:", 1, true) then
                                print("���л��б���ͼ��ť")
                                ����("enter")
                                ��ʱ(3000)
                                --break
                            elseif ҳ������:find("FUT_CHALKTUT_MULTISWAP_DESC_1:", 1, true) then
                                print("�����ֽ̳�")
                                ����("enter")
                                ��ʱ(3000)
                                --break
                            else
                                ����("enter")
                                ��ʱ(3000)
                            end
                        elseif ��ǰ��ĻID == "FUT_GENERIC_OK_POPUP_ID" then
                                print("�Ѿ��������Ա�����汾")
                                ����("enter")
                                ��ʱ(3000)
                                ����("right_arrow")
                                ��ʱ(3000)
                                ����("enter")
                                ��ʱ(3000)
                        elseif ��ǰ��ĻID == "FUT_UC_SQUAD" then
                            break
                        else
                            print("�����ȴ�")
                            ��ʱ(1000)
                        end
                        ��ʱ(2000)
                end
            end
        if not ��ѯȫ�������Ա() and not ��ѯȫ����λ����Ա() then
            print("û�����,Ҳû�п�λ����Ա")
            break
        end
        ��ʱ(3000)
    end

    -- Ҫɾ����Ա��λ�� = ������Ա���ֲ�ѯλ��("Donnarumma")
    -- if Ҫɾ����Ա��λ�� then
            -- �쳣״̬ǰ�ô���()
            -- �ƶ�����Աλ��(Ҫɾ����Ա��λ��, "��")
            -- ����("enter")
            -- ��ʱ(2000)
            -- ����("c")
            -- ��ʱ(2000)
            -- while 1 do
                    -- local ��ǰ��ĻID = ȡ��ĻID()
                    -- local ҳ������ = ȡ��ǰˢ������()
                    -- local data = ȡ��ǰҳ����Ϣ()
                    -- local ��ǰҳ�� = data.curpagename
                    -- local ��ҳ���� = data.mainpagename
                    -- local ѡ��λ��ֵ = data.subitemid
                    
                    -- if ��ǰ��ĻID == "FUT_CLUB_CAP" then
                        -- if ҳ������:find("FUT_SHOW_LISTVIEW:", 1, true) then
                            -- print("���л��б���ͼ��ť")
                            -- ����("right_arrow")
                            -- ��ʱ(3000)
                            -- ����("enter")
                            -- ��ʱ(3000)
                            -- --break
                        -- elseif ҳ������:find("FUT_CHALKTUT_MULTISWAP_DESC_1:", 1, true) then
                            -- print("�����ֽ̳�")
                            -- ����("enter")
                            -- ��ʱ(3000)
                            -- --break
                        -- else
                            -- ����("enter")
                            -- ��ʱ(3000)
                        -- end
                    -- elseif ��ǰ��ĻID == "FUT_UC_SQUAD" then
                        -- break
                    -- else
                        -- print("�����ȴ�")
                        -- ��ʱ(1000)
                    -- end
                    -- ��ʱ(500)
            -- end
    -- end
        
    -- while 1 do
        -- Ҫɾ����Ա��λ�� = ��ѯ���������Ա()
        -- if Ҫɾ����Ա��λ�� then
            -- �쳣״̬ǰ�ô���()
            -- �ƶ�����Աλ��(Ҫɾ����Ա��λ��, "��")
            -- ����("enter")
            -- ��ʱ(2000)
            -- ����("c")
            -- ��ʱ(2000)
            -- while 1 do
                    -- local ��ǰ��ĻID = ȡ��ĻID()
                    -- local ҳ������ = ȡ��ǰˢ������()
                    -- local data = ȡ��ǰҳ����Ϣ()
                    -- local ��ǰҳ�� = data.curpagename
                    -- local ��ҳ���� = data.mainpagename
                    -- local ѡ��λ��ֵ = data.subitemid
                    
                    -- if ��ǰ��ĻID == "FUT_CLUB_CAP" then
                        -- if ҳ������:find("FUT_SHOW_LISTVIEW:", 1, true) then
                            -- print("���л��б���ͼ��ť")
                            -- ����("right_arrow")
                            -- ��ʱ(3000)
                            -- ����("enter")
                            -- ��ʱ(3000)
                            -- --break
                        -- elseif ҳ������:find("FUT_CHALKTUT_MULTISWAP_DESC_1:", 1, true) then
                            -- print("�����ֽ̳�")
                            -- ����("enter")
                            -- ��ʱ(3000)
                            -- --break
                        -- else
                            -- ����("enter")
                            -- ��ʱ(3000)
                        -- end
                    -- elseif ��ǰ��ĻID == "FUT_UC_SQUAD" then
                        -- break
                    -- else
                        -- print("�����ȴ�")
                        -- ��ʱ(1000)
                    -- end
                    -- ��ʱ(500)
            -- end
        -- else
            -- break
        -- end
    -- end
    
    while ��ѯ��Ա����(��Ҫ�����λ��) <= ����-1 do
        if ��ѯ��Ա���λ��(���ϵ�λ��) != ��Ҫ�����λ�� then
            �쳣״̬ǰ�ô���()
            �ƶ�����Աλ��(���ϵ�λ��, "��")
            ����("enter")
            ��ʱ(2000)
            ����("c")
            ��ʱ(2000)
            while 1 do
                    local ��ǰ��ĻID = ȡ��ĻID()
                    local ҳ������ = ȡ��ǰˢ������()
                    local data = ȡ��ǰҳ����Ϣ()
                    local ��ǰҳ�� = data.curpagename
                    local ��ҳ���� = data.mainpagename
                    local ѡ��λ��ֵ = data.subitemid
                    
                        if ��ǰ��ĻID == "FUT_CLUB_CAP" then
                            
                            --if ҳ������:find("FUT_ERROR_POPUP_PLAYGAME:", 1, true) then
                            if ҳ������:find("FUT_RevisionInSquad:", 1, true) then
                                print("�Ѿ��������Ա�����汾")
                                ����("enter")
                                ��ʱ(3000)
                                ����("right_arrow")
                                ��ʱ(3000)
                                ����("enter")
                                ��ʱ(3000)
                            elseif ҳ������:find("FUT_SHOW_LISTVIEW:", 1, true) then
                                print("���л��б���ͼ��ť")
                                ����("enter")
                                ��ʱ(3000)
                                --break
                            elseif ҳ������:find("FUT_CHALKTUT_MULTISWAP_DESC_1:", 1, true) then
                                print("�����ֽ̳�")
                                ����("enter")
                                ��ʱ(3000)
                                --break
                            else
                                ����("enter")
                                ��ʱ(3000)
                            end
                        elseif ��ǰ��ĻID == "FUT_GENERIC_OK_POPUP_ID" then
                                print("�Ѿ��������Ա�����汾")
                                ����("enter")
                                ��ʱ(3000)
                                ����("right_arrow")
                                ��ʱ(3000)
                                ����("enter")
                                ��ʱ(3000)
                        elseif ��ǰ��ĻID == "FUT_UC_SQUAD" then
                            break
                        else
                            print("�����ȴ�")
                            ��ʱ(1000)
                        end
                        ��ʱ(2000)
            end
        else
                Ҫɾ����Ա��λ�� = ��ѯȫ�������Ա()
                if Ҫɾ����Ա��λ�� then
                    �쳣״̬ǰ�ô���()
                    �ƶ�����Աλ��(Ҫɾ����Ա��λ��, "��")
                    ����("enter")
                    ��ʱ(2000)
                    ����("c")
                    ��ʱ(2000)
                    while 1 do
                            local ��ǰ��ĻID = ȡ��ĻID()
                            local ҳ������ = ȡ��ǰˢ������()
                            local data = ȡ��ǰҳ����Ϣ()
                            local ��ǰҳ�� = data.curpagename
                            local ��ҳ���� = data.mainpagename
                            local ѡ��λ��ֵ = data.subitemid
                            
                        if ��ǰ��ĻID == "FUT_CLUB_CAP" then
                            
                            --if ҳ������:find("FUT_ERROR_POPUP_PLAYGAME:", 1, true) then
                            if ҳ������:find("FUT_RevisionInSquad:", 1, true) then
                                print("�Ѿ��������Ա�����汾")
                                ����("enter")
                                ��ʱ(3000)
                                ����("right_arrow")
                                ��ʱ(3000)
                                ����("enter")
                                ��ʱ(3000)
                            elseif ҳ������:find("FUT_SHOW_LISTVIEW:", 1, true) then
                                print("���л��б���ͼ��ť")
                                ����("enter")
                                ��ʱ(3000)
                                --break
                            elseif ҳ������:find("FUT_CHALKTUT_MULTISWAP_DESC_1:", 1, true) then
                                print("�����ֽ̳�")
                                ����("enter")
                                ��ʱ(3000)
                                --break
                            else
                                ����("enter")
                                ��ʱ(3000)
                            end
                        elseif ��ǰ��ĻID == "FUT_GENERIC_OK_POPUP_ID" then
                                print("�Ѿ��������Ա�����汾")
                                ����("enter")
                                ��ʱ(3000)
                                ����("right_arrow")
                                ��ʱ(3000)
                                ����("enter")
                                ��ʱ(3000)
                        elseif ��ǰ��ĻID == "FUT_UC_SQUAD" then
                            break
                        else
                            print("�����ȴ�")
                            ��ʱ(1000)
                        end
                        ��ʱ(2000)
                    end
                else
                    ���Ի���λ�� = ��ѯ��Ա���λ�ò���Ҫ��()
                    if ���Ի���λ�� then
                        �쳣״̬ǰ�ô���()
                        ����λ��(���ϵ�λ��, ���Ի���λ��)
                    else
                        if ��ѯ��Ա����("CB") >= 5 then
                            ���Ի���λ�� = ��ѯ��Ա���ϵĶ����Ա("CB")
                            if ���Ի���λ�� then
                                �쳣״̬ǰ�ô���()
                                ����λ��(���ϵ�λ��, ���Ի���λ��)
                            else
                                print("û�пɻ���")
                                break
                            end
                        elseif ��ѯ��Ա����("CM") >= 5 then
                            ���Ի���λ�� = ��ѯ��Ա���ϵĶ����Ա("CM")
                            if ���Ի���λ�� then
                                �쳣״̬ǰ�ô���()
                                ����λ��(���ϵ�λ��, ���Ի���λ��)
                            else
                                print("û�пɻ���")
                                break
                            end
                        elseif ��ѯ��Ա����("ST") >= 5 then
                            ���Ի���λ�� = ��ѯ��Ա���ϵĶ����Ա("ST")
                            if ���Ի���λ�� then
                                �쳣״̬ǰ�ô���()
                                ����λ��(���ϵ�λ��, ���Ի���λ��)
                            else
                                print("û�пɻ���")
                                break
                            end
                        elseif ��ѯ��Ա����("RB") >= 3 then
                            ���Ի���λ�� = ��ѯ��Ա���ϵĶ����Ա("RB")
                            if ���Ի���λ�� then
                                �쳣״̬ǰ�ô���()
                                ����λ��(���ϵ�λ��, ���Ի���λ��)
                            else
                                print("û�пɻ���")
                                break
                            end
                        elseif ��ѯ��Ա����("RM") >= 3 then
                            ���Ի���λ�� = ��ѯ��Ա���ϵĶ����Ա("RB")
                            if ���Ի���λ�� then
                                �쳣״̬ǰ�ô���()
                                ����λ��(���ϵ�λ��, ���Ի���λ��)
                            else
                                print("û�пɻ���")
                                break
                            end
                        elseif ��ѯ��Ա����("LM") >= 3 then
                            ���Ի���λ�� = ��ѯ��Ա���ϵĶ����Ա("RB")
                            if ���Ի���λ�� then
                                �쳣״̬ǰ�ô���()
                                ����λ��(���ϵ�λ��, ���Ի���λ��)
                            else
                                print("û�пɻ���")
                                break
                            end
                        elseif ��ѯ��Ա����("LB") >= 3 then
                            ���Ի���λ�� = ��ѯ��Ա���ϵĶ����Ա("LB")
                            if ���Ի���λ�� then
                                �쳣״̬ǰ�ô���()
                                ����λ��(���ϵ�λ��, ���Ի���λ��)
                            else
                                print("û�пɻ���")
                                break
                            end
                        elseif ��ѯ��Ա����("GK") >= 3 then
                            ���Ի���λ�� = ��ѯ��Ա���ϵĶ����Ա("GK")
                            if ���Ի���λ�� then
                                �쳣״̬ǰ�ô���()
                                ����λ��(���ϵ�λ��, ���Ի���λ��)
                            else
                                print("û�пɻ���")
                                break
                            end
                        else
                            print("�������� ��֪����˭��")
                        end
                        
                    end
                end
        end
    end
end


function ���ݴ���()
    print("��ʼִ�����ݴ���")
    while 1 do
        local ��ǰ��ĻID = ȡ��ĻID()
        local ҳ������ = ȡ��ǰˢ������()
        local data = ȡ��ǰҳ����Ϣ()
        local ��ǰҳ�� = data.curpagename
        local ��ҳ���� = data.mainpagename
        local ѡ��λ��ֵ = data.subitemid
        local ҳ�����ֱ� = string.split(ҳ������, "|")
        
        
        
        if ��ǰ��ĻID == "futSquadWizard" then
            if ҳ������:find( "FUT_SB_Replace_No:", 1, true) then
                ����("right_arrow")
                ��ʱ(1000)
            elseif  ҳ������:find( "FUT_SB_Replace_Yes:", 1, true) then    
                ����("d")
                ��ʱ(1000)
            else
                print("up")
                ����("up_arrow")
                ��ʱ(1000)
            end
            
        elseif ��ǰ��ĻID == "SQUAD_WIZARD_POPUP_ID" then
            if ҳ������:find( "FUT_SQUAD_WIZARD_COMPLETED:", 1, true) then
                print("�������")
                ����("enter")
                ��ʱ(1000)
                break
            elseif ҳ������:find( "OSDK_LOADING::", 1, true) then
                print("���ڴ���")
                ��ʱ(5000)
            else
                print("���ݴ���δ֪")
                print(table.tostring(ҳ�����ֱ�))
            end
        elseif ҳ������:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_2:", 1, true) then
                        print("���ֽ̳�")
                        ����("enter")
        elseif ҳ������:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_1:", 1, true) then
                        print("���ֽ̳�")
                        ����("enter")
        elseif ҳ������:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_1:", 1, true) then
                        print("���ֽ̳�")
                        ����("enter")
        elseif ҳ������:find( "FUT_CHALKTUT_PLAYERVIEWS_TITLE_1:", 1, true) then
                        print("���ֽ̳�")
                        ����("enter")
        elseif ҳ������:find( "FUT_SQUAD_WIZARD:", 1, true) then
            ����("down_arrow")
            ��ʱ(1000)
            ����("down_arrow")
            ��ʱ(1000)
            ����("enter")
            ��ʱ(1000)
            
        else
            ����("w")
            ��ʱ(1000)
        end
        ��ʱ(500)
    end
end



function �������ݴ�������()
    print("-----�������ݴ�������-----")
    --��Ϸǰ̨()
    ��ʱ(1000)
    
    ��δִ�й����ݴ��� = 1
    ��δִ�й����ݵ��� = 1
    while 1 do
        local ��ǰ��ĻID = ȡ��ĻID()
        local ҳ������ = ȡ��ǰˢ������()
        local data = ȡ��ǰҳ����Ϣ()
        local ��ǰҳ�� = data.curpagename
        local ��ҳ���� = data.mainpagename
        local ѡ��λ��ֵ = data.subitemid
        local ҳ�����ֱ� = string.split(ҳ������, "|")
        

        print(��ǰ��ĻID)
        if ��ҳ���� then
            if ��ҳ����=='FutHub2' then
                if ��ǰҳ�� =='FUT_CENTRAL_CLUB' then
                    if ѡ������(ѡ��λ��ֵ) then
                        ����("enter")
                        ��ʱ(4000)
                    end
                else
                    ����("c")
                    ��ʱ(2000)
                end
            elseif ��ҳ����=='MainMenuHub' then
                if ��ǰ��ĻID == 'mainhubG5cfg' then
                    print("����")
                    break
                else
                    print("MainMenuHub")
                end
            elseif ��ҳ����=='FutSquadSearchFilter' then
                if ��ǰҳ�� =='FUT_SEARCH_SQUAD_NONE' then
                    if ҳ������:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_2:", 1, true) then
                        print("���ֽ̳�")
                        ����("enter")
                    elseif ҳ������:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_1:", 1, true) then
                        print("���ֽ̳�")
                        ����("enter")
                    elseif ҳ������:find( "FUT_CHALKTUT_BUILDINGCHEMISTRY_TITLE_1:", 1, true) then
                        print("���ֽ̳�")
                        ����("enter")
                    elseif ҳ������:find( "FUT_CHALKTUT_PLAYERVIEWS_TITLE_1:", 1, true) then
                        print("���ֽ̳�")
                        ����("enter")
                    elseif ��δִ�й����ݴ��� == 1 then
                        ���ݴ���()
                        ��ʱ(5000)
                        ��δִ�й����ݴ��� = 0
                    elseif ��δִ�й����ݵ��� == 1 then
                        ���ݵ���()
                        ��δִ�й����ݵ��� = 0
                        break
                    end
             
                end
            else
                print("δ֪")
            end

        else
            print("δ֪")
            --�̵�_��ҳ�治���ڴ���(ҳ������)
        end
        ��ʱ(500)
    end
end



�������ݴ�������()




