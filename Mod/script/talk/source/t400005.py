#-------------------------------------------
#-- NG+ Giant
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t400005_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400005_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400005_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t400005_x0():
    """ State 0,1 """
    while True:
        call = t400005_x3()

# Client Player
def t400005_x1():
    """ State 0,1 """
    assert t400005_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t400005_x2():
    """ State 0,1 """
    if not CheckSpecificPersonTalkHasEnded(0):
        """ State 7 """
        ClearTalkProgressData()
        StopEventAnimWithoutForcingConversationEnd(0)
        """ State 6 """
        ReportConversationEndToHavokBehavior()
    else:
        pass
    """ State 2 """
    if CheckSpecificPersonGenericDialogIsOpen(0) == 1:
        """ State 3 """
        ForceCloseGenericDialog()
    else:
        pass
    """ State 4 """
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """ State 5 """
        ForceCloseMenu()
    else:
        pass
    """ State 8 """
    return 0
    
# Check Death
def t400005_x3():
    """ State 0,1 """
    call = t400005_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t400005_x4():
    """ State 0,5 """
    while True:
        call = t400005_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t400005_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400005_x6() # Attack Check
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 2 or GetPlayerYDistance() > 0.25:
                """ State 4 """
                call = t400005_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400005_x2() # Clear Talk State
    
# Interaction State
def t400005_x5():
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif CheckActionButtonArea(6120):
            break
    """ State 4 """
    return 0

# Attack Check
def t400005_x6():
    """ State 0,6 """
    assert t400005_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t400005_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t400005_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t400005_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t400005_x8():
    """ State 0,1 """
    assert t400005_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t400005_x9():
    c1110()
    while True:
        ClearTalkListData()
        # Advance Journey
        AddTalkListData(20, 15028000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 20:
            OpenGenericDialog(1, 15028010, 0, 0, 0)
            assert t400005_x10()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

# Menu Loop 2
def t400005_x10():
    c1110()
    while True:
        ClearTalkListData()
        # Are you sure?
        AddTalkListData(20, 15028001, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 20:
            assert t400005_x11()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
# Menu Loop 3
def t400005_x11():
    c1110()
    while True:
        ClearTalkListData()
        # Are you really sure?
        AddTalkListData(20, 15028002, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 20:
            SetEventState(74000012, 1)
            SetEventState(14005617, 0)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
            
#----------------------------------------------------
# Utility
#----------------------------------------------------
# Acquire Gesture
def t400005_x50(z2=_, z3=_, flag1=_):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z2)
        OpenItemAcquisitionMenu(3, z3, 1)
        SetEventState(flag1, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0