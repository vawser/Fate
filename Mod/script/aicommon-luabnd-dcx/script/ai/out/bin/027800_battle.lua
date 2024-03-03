RegisterTableGoal(GOAL_NPC_SpecialB, "GOAL_NPC_SpecialB")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_SpecialB, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetEventRequest(2)
    if arg1:GetNpcThinkParamID() == 27820 and local0 ~= 99 then
        arg1:SetStringIndexedNumber("NPC_PointFrontWall", 3302805)
        arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    elseif arg1:GetNpcThinkParamID() == 27821 and local0 ~= 99 then
        arg1:SetStringIndexedNumber("NPC_PointFrontWall", 3702852)
        arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    elseif arg1:GetNpcThinkParamID() == 27822 and local0 ~= 99 then
        arg1:SetStringIndexedNumber("NPC_PointFrontWall", 4102805)
        arg2:AddSubGoal(GOAL_NPC_WhiteGhost_Battle, 2)
    end
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_Rolling", 4.4)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2.6)
    arg1:SetStringIndexedNumber("AddDistWalk", 0)
    arg1:SetStringIndexedNumber("AddDistRun", 0.2)
    local local1 = {}
    local local2 = {}
    local local3 = {}
    Common_Clear_Param(local1, local2, local3)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetDist(TARGET_ENE_0)
    local local6 = arg1:GetSp(TARGET_SELF)
    local local7 = arg1:GetNumber(0)
    if local0 == 99 then
        local1[47] = 100
    elseif arg1:GetHpRate(TARGET_SELF) <= 0.5 and not arg1:HasSpecialEffectId(TARGET_SELF, 5110) then
        if 5 <= local5 and arg1:HasSpecialEffectId(TARGET_SELF, 5060) then
            local1[42] = 100
        else
            local1[1] = 1
            local1[2] = 1
            local1[21] = 20
            local1[22] = 0
            local1[23] = 0
            local1[24] = 40
            local1[41] = 40
            local1[42] = 25
        end
    elseif local6 < 20 then
        if 5 <= local5 then
            local1[1] = 1
            local1[2] = 1
            local1[40] = 10
            local1[41] = 0
        else
            local1[1] = 1
            local1[2] = 1
            local1[24] = 10
            local1[40] = 0
            local1[41] = 20
        end
    elseif 7 <= local5 then
        local1[1] = 0
        local1[2] = 0
        local1[3] = 0
        local1[4] = 20
        local1[5] = 10
        local1[20] = 20
        local1[21] = 0
        local1[22] = 0
        local1[23] = 0
        local1[24] = 0
        local1[25] = 0
        local1[40] = 20
        local1[41] = 0
        local1[46] = 140
    elseif 5 <= local5 then
        local1[1] = 10
        local1[2] = 10
        local1[3] = 0
        local1[4] = 20
        local1[5] = 10
        local1[20] = 0
        local1[21] = 0
        local1[22] = 10
        local1[23] = 0
        local1[24] = 0
        local1[25] = 0
        local1[40] = 20
        local1[41] = 0
        local1[46] = 160
    elseif 3 <= local5 then
        local1[1] = 20
        local1[2] = 40
        local1[3] = 0
        local1[4] = 0
        local1[5] = 40
        local1[20] = 0
        local1[21] = 0
        local1[22] = 0
        local1[23] = 0
        local1[24] = 0
        local1[25] = 0
        local1[40] = 0
        local1[41] = 10
        local1[46] = 220
    elseif 1 <= local5 then
        local1[1] = 40
        local1[2] = 20
        local1[3] = 0
        local1[4] = 0
        local1[5] = 40
        local1[20] = 0
        local1[21] = 20
        local1[22] = 0
        local1[23] = 0
        local1[24] = 0
        local1[25] = 0
        local1[40] = 0
        local1[41] = 10
        local1[46] = 0
    else
        local1[1] = 40
        local1[2] = 20
        local1[3] = 0
        local1[4] = 0
        local1[5] = 40
        local1[20] = 0
        local1[21] = 20
        local1[22] = 0
        local1[23] = 0
        local1[24] = 0
        local1[25] = 0
        local1[40] = 0
        local1[41] = 10
        local1[46] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5111) then
        local1[25] = 0
    end
    if arg1:IsFinishTimer(0) == false then
        local1[46] = 0
    end
    if arg1:IsTargetGuard(TARGET_ENE_0) then
        local1[5] = local1[5] + 10
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_BackStep")) == false then
        local1[21] = 0
    end
    if SpaceCheck(arg1, arg2, -45, arg1:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(arg1, arg2, 45, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local1[22] = 0
    end
    if SpaceCheck(arg1, arg2, -90, arg1:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(arg1, arg2, 90, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local1[23] = 0
    end
    if SpaceCheck(arg1, arg2, -135, arg1:GetStringIndexedNumber("Dist_Rolling")) == false and SpaceCheck(arg1, arg2, 135, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local1[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        local1[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        local1[41] = 0
    end
    if SpaceCheck(arg1, arg2, -90, 1) == false and SpaceCheck(arg1, arg2, 90, 1) == false then
        local1[40] = 0
    end
    if local6 < 20 then
        local1[20] = 0
        local1[21] = 0
        local1[22] = 0
        local1[23] = 0
        local1[24] = 0
    end
    local2[1] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act01)
    local2[2] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act02)
    local2[3] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act03)
    local2[4] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act04)
    local2[5] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act05)
    local2[20] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act20)
    local2[21] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act21)
    local2[22] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act22)
    local2[23] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act23)
    local2[24] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act24)
    local2[25] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act25)
    local2[40] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act40)
    local2[41] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act41)
    local2[42] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act42)
    local2[43] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act43)
    local2[44] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act44)
    local2[45] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act45)
    local2[46] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act46)
    local2[47] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act47)
    local2[48] = REGIST_FUNC(arg1, arg2, NPC_SpecialB_Act48)
    Common_Battle_Activate(arg1, arg2, local1, local2, REGIST_FUNC(arg1, arg2, NPC_SpecialB_ActAfter_AdjustSpace), local3)
    return 
end

function NPC_SpecialB_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetSp(TARGET_SELF)
    local local3 = 2.1
    local local4 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 2.1
        local4 = 0
    end
    if arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    if 1 <= local1 then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local local5 = 25
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 + 25
            end
            if local0 <= local5 then
                local4 = 0
                local3 = 2.1
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local5 = 50
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local5 = local5 - 25
            end
            if local0 <= local5 then
                local4 = 100
                local3 = 2.1
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    if local2 < 60 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 0, local3 + 2, 100, local4, 1.8, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 and 0 < local4 and local3 <= local1 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 120 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif 60 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetSp(TARGET_SELF)
    local local4 = 2.2
    local local5 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local4 = 2.2
        local5 = 0
    end
    if arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    if 1 <= local2 then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local local6 = 25
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local6 = local6 + 25
            end
            if local0 <= local6 then
                local5 = 0
                local4 = 2.2
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local6 = 50
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local6 = local6 - 25
            end
            if local0 <= local6 then
                local5 = 100
                local4 = 2.2
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    if local3 < 60 then
        local5 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local4, local4 + 0, local4 + 2, 100, local5, 1.8, 2)
    if local1 <= 50 and 0 < local5 and local4 <= local2 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if 60 <= local3 and 67 < local0 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        elseif local1 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2_Hold, TARGET_ENE_0, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 1.6
    local local4 = 0
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 1.6
        local4 = 0
    end
    if arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetSp(TARGET_SELF) < 50 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 0, local3 + 2, 100, local4, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = 4.8
    local local4 = 100
    if arg0:IsBothHandMode(TARGET_SELF) then
        local3 = 5.6
        local4 = 0
    end
    if arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetSp(TARGET_SELF) < 60 then
        local4 = 0
    end
    NPC_Approach_Act_Flex(arg0, arg1, local3, local3 + 0, local3 + 2, 100, local4, 1.8, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act05(arg0, arg1, arg2)
    local local0 = 2.6
    local local1 = KMorlianBlade_BOTH_ArtR2_DIST_MAX
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        if local0 < local2 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local0, TARGET_SELF, false, NPC_ATK_L2Hold)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpHold_L2Hold, TARGET_ENE_0, 999, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
        end
    elseif local1 < local2 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local1, TARGET_SELF, false, NPC_ATK_L2Hold)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpHold_L2Hold, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 2.8
    local local3 = 4
    if arg0:IsBothHandMode(TARGET_SELF) then
        local2 = 3.2
        local3 = -1
    end
    if arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    if 1 <= arg0:GetDist(TARGET_ENE_0) then
        if not arg0:IsBothHandMode(TARGET_SELF) then
            local local4 = 25
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local4 = local4 + 25
            end
            if local0 <= local4 then
                local3 = -1
                local2 = 3.2
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        elseif arg0:IsBothHandMode(TARGET_SELF) then
            local local4 = 50
            if arg0:IsTargetGuard(TARGET_ENE_0) then
                local4 = local4 - 25
            end
            if local0 <= local4 then
                local3 = 4
                local2 = 2.8
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
            end
        end
    end
    local local4 = local2
    if arg0:GetSp(TARGET_SELF) < 60 then
        local3 = -1
    end
    if local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, local3)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, local4, TARGET_SELF, local3)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_BackStep")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 80 and 60 < arg0:GetSp(TARGET_SELF) then
        local local2 = 2.8
        local local3 = 0.8
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local2 = 3.2
            local3 = 1
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local2, local3, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act22(arg0, arg1, arg2)
    if 5 <= arg0:GetDist(TARGET_ENE_0) and SpaceCheck(arg0, arg1, 0, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, -45, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        if SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
            if arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        end
    elseif SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 100 and 60 < arg0:GetSp(TARGET_SELF) then
        local local0 = 5.8
        local local1 = 5.4
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 5.4
            local1 = 4.6
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if SpaceCheck(arg0, arg1, -90, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        if SpaceCheck(arg0, arg1, 90, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
            if arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        end
    elseif SpaceCheck(arg0, arg1, 90, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 100 and 60 < arg0:GetSp(TARGET_SELF) then
        local local1 = 5.8 - 2
        local local2 = 5.4 - 2
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local1 = 5.4 - 2
            local2 = 4.6 - 2
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local1, local2, R1Fate)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act24(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 1 and SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(arg0, arg1, -135, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        if SpaceCheck(arg0, arg1, 135, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
            if arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        end
    elseif SpaceCheck(arg0, arg1, 135, arg0:GetStringIndexedNumber("Dist_Rolling")) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 100 and 60 < arg0:GetSp(TARGET_SELF) then
        local local0 = 5.8 - 4
        local local1 = 5.4 - 4
        if arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and arg0:IsBothHandMode(TARGET_SELF) then
            local0 = 5.4 - 4
            local1 = 4.6 - 4
        end
        arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, local0, local1, 50)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act25(arg0, arg1, arg2)
    arg0:ChangeEquipItem(3)
    arg0:SetStringIndexedNumber("Firebomb", arg0:GetStringIndexedNumber("Firebomb") - 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 1.8
    local local3 = NPC_ATK_L1Hold
    if arg0:IsBothHandMode(TARGET_SELF) then
        if 40 <= local1 and local0 <= 50 then
            local3 = NPC_ATK_L1Hold
        end
    elseif arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary and 40 <= local1 and local0 <= 100 then
        local3 = NPC_ATK_L1Hold
    end
    local local4 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                local4 = 0
            else
                local4 = 1
            end
        else
            local4 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        local4 = 1
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    if arg0:GetDist(TARGET_ENE_0) < 5 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local4, arg0:GetRandam_Int(75, 90), false, true, local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, local4, arg0:GetRandam_Int(75, 90), true, true, local3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetSp(TARGET_SELF)
    local local2 = 40
    local local3 = 40
    local local4 = 1.8
    local local5 = 3.2
    if arg0:GetDist(TARGET_ENE_0) < 5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, local5, TARGET_ENE_0, false, NPC_ATK_L1Hold)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, local5, TARGET_ENE_0, true, NPC_ATK_L1Hold)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    arg0:ChangeEquipItem(0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act46(arg0, arg1, arg2)
    arg0:ChangeEquipMagic(0)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetSp(TARGET_SELF)
    if not not arg0:IsBothHandMode(TARGET_SELF) or arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    local local4 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    local4 = local4:TimingSetTimer(0, arg0:GetRandam_Int(10, 20), UPDATE_SUCCESS)
    local4:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1.2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act47(arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, NPC_ATK_Gesture04, TARGET_ENE_0, 999, 0, 0)
    local0:SetLifeEndSuccess(true)
    local0 = arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0, 0, 0, 0)
    local0:SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function NPC_SpecialB_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetSp(TARGET_SELF)
    local local1 = arg1:GetDist(TARGET_ENE_0)
    local local2 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_GuardBreak) and local1 < 3 then
        arg2:ClearSubGoal()
        local local3 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
        local3:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    elseif arg1:IsInterupt(INTERUPT_FindAttack) then
        if local1 < 1.8 and local2 <= 80 then
            if local2 <= 60 and 30 <= local0 then
                arg2:ClearSubGoal()
                NPC_SpecialB_Act41(arg1, arg2, paramTbl)
                return true
            elseif local0 <= 35 and 0 <= local0 then
                arg2:ClearSubGoal()
                NPC_SpecialB_Act22(arg1, arg2, paramTbl)
                return true
            end
        elseif local1 <= 3 and 20 <= local0 and local2 <= 60 then
            arg2:ClearSubGoal()
            NPC_SpecialB_Act40(arg1, arg2, paramTbl)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and local2 <= 33 and 20 <= local0 then
        arg2:ClearSubGoal()
        NPC_SpecialB_Act23(arg1, arg2)
        return true
    else
        return false
    end
end

return 
