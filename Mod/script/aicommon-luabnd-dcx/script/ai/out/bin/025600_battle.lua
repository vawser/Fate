LuaP		¶	hçõ}A       =(none)                              RegisterTableGoal "       GOAL_NPC_Magic_Pyromancy_Merchant        REGISTER_GOAL_NO_SUB_GOAL        Goal        Initialize 	       Activate #       NPC_Magic_Pyromancy_Merchant_Act01 #       NPC_Magic_Pyromancy_Merchant_Act02 #       NPC_Magic_Pyromancy_Merchant_Act03 #       NPC_Magic_Pyromancy_Merchant_Act04 #       NPC_Magic_Pyromancy_Merchant_Act05 #       NPC_Magic_Pyromancy_Merchant_Act20 #       NPC_Magic_Pyromancy_Merchant_Act21 #       NPC_Magic_Pyromancy_Merchant_Act22 #       NPC_Magic_Pyromancy_Merchant_Act23 #       NPC_Magic_Pyromancy_Merchant_Act24 #       NPC_Magic_Pyromancy_Merchant_Act25 #       NPC_Magic_Pyromancy_Merchant_Act40 #       NPC_Magic_Pyromancy_Merchant_Act41 #       NPC_Magic_Pyromancy_Merchant_Act42 #       NPC_Magic_Pyromancy_Merchant_Act43 #       NPC_Magic_Pyromancy_Merchant_Act44 #       NPC_Magic_Pyromancy_Merchant_Act45 #       NPC_Magic_Pyromancy_Merchant_Act46 #       NPC_Magic_Pyromancy_Merchant_Act47 #       NPC_Magic_Pyromancy_Merchant_Act48 2       NPC_Magic_Pyromancy_Merchant_ActAfter_AdjustSpace        Update 
       Terminate 
       Interrupt                                                  !                 P          Init_Pseudo_Global        SetStringIndexedNumber        Dist_Rolling @       Dist_BackStep ÍÌÌÌÌÌ@       AddDistWalk                AddDistRun É?       Common_Clear_Param        GetRandam_Int       ð?      Y@       GetDist        TARGET_ENE_0 
       GetHpRate        TARGET_SELF        GetSp        GetMp       4@       @      8@      $@      D@     D@      I@      à?       HasSpecialEffectId      ö³@      @      @      @      5@      6@      7@      E@      @      9@      G@     G@      H@     ÷³@       IsTargetGuard        IsFinishTimer     @ký@       SpaceCheck      f@       GetStringIndexedNumber      F@     FÀ     V@     VÀ     à`@     à`À       REGIST_FUNC #       NPC_Magic_Pyromancy_Merchant_Act01 #       NPC_Magic_Pyromancy_Merchant_Act02 #       NPC_Magic_Pyromancy_Merchant_Act03 #       NPC_Magic_Pyromancy_Merchant_Act04 #       NPC_Magic_Pyromancy_Merchant_Act05 #       NPC_Magic_Pyromancy_Merchant_Act20 #       NPC_Magic_Pyromancy_Merchant_Act21 #       NPC_Magic_Pyromancy_Merchant_Act22 #       NPC_Magic_Pyromancy_Merchant_Act23 #       NPC_Magic_Pyromancy_Merchant_Act24 #       NPC_Magic_Pyromancy_Merchant_Act25 #       NPC_Magic_Pyromancy_Merchant_Act40 #       NPC_Magic_Pyromancy_Merchant_Act41 #       NPC_Magic_Pyromancy_Merchant_Act42      E@#       NPC_Magic_Pyromancy_Merchant_Act43       F@#       NPC_Magic_Pyromancy_Merchant_Act44 #       NPC_Magic_Pyromancy_Merchant_Act45 #       NPC_Magic_Pyromancy_Merchant_Act46 #       NPC_Magic_Pyromancy_Merchant_Act47 #       NPC_Magic_Pyromancy_Merchant_Act48 2       NPC_Magic_Pyromancy_Merchant_ActAfter_AdjustSpace        Common_Battle_Activate     Ô        YË¾   Á  Y Ë¾  A Y Ë¾  Á Y Ë¾  A Y 
  
  
       	Y KÁ  A 	 Â Å 	Â E 
Ã 	E 	KÃ 
Å 
Ã T ×Ã Ô  IDI@ÃÔ Å   IDIÀ WE  Å E A  X Æ  I@IÀIÀI@I@IÀI@IÀI@ÄT IDÔ ×  I@IÀIÀI@CI@IÀI@IÀI@I@IDIÀÄIDÃ ×  I@IÀIÀI@CI@IÀI@IÀI@I@IDIÄÃIDIÄT ×  I@IÀIÀI@CI@IÀI@IÀI@I@IDIÄÃIDIÄ ×  I@IÀIÀI@CI@IÀI@IÀI@I@I@IÄÃIDIÄÔ I@IÀIÀI@I@I@IÀI@IÀIDI@I@IÄIÀI@IÀÅ E 
    I@KÉ Å Ôÿ É Á      IÀÉ       AÉ A      ÁÅ E A    I@     Á Ê         IÀ      Ê             A Ê          I@      Ê             Á Ê          IÀ      Ê             A Ê          I@     Á Ê          I@     Á       IÀ               Á       I@Å       ÉÅ     E  ÉÅ       ÉÅ     Å  ÉÅ       ÉÅ     E  ÉÅ       ÉÅ     Å  ÉÅ       ÉÅ     E  ÉÅ       ÉÅ     Å  ÉÅ       ÉÅ     E  ÉÅ     Å  É Å     E  É¡Å       ÉÅ     Å  ÉÅ       ÉÅ     E  ÉÅ       Å          Y          	                          GetWellSpace_Odds       Y@       A                                           GetWellSpace_Odds       Y@       A                                           GetWellSpace_Odds       Y@       A                 '                          GetWellSpace_Odds       Y@       A                 1                          GetRandam_Int       ð?      Y@       GetDist        TARGET_ENE_0        GetSp        TARGET_SELF        GetEquipWeaponIndex        ARM_R        WEP_Primary        AddSubGoal )       GOAL_COMMON_ComboTunable_SuccessAngle180       $@       NPC_ATK_ArrowKeyRight      8@              4@       GOAL_COMMON_AttackTunableSpin        NPC_ATK_L2        AttDist        TimingSetTimer       @      .@       UPDATE_SUCCESS        GetWellSpace_Odds     3   > A     > A     K?  Ë?  K@  	E   Á Å 	 
E   Á Á Y T Á E 	 
  Å Á Á ÃA 	 
Å YÁ              M                          GetWellSpace_Odds       Y@       A                 W                          GetDist        TARGET_ENE_0        GetRandam_Int       ð?      Y@       GetSp        TARGET_SELF        SpaceCheck      f@       GetStringIndexedNumber        Dist_BackStep        AddSubGoal )       GOAL_COMMON_ComboTunable_SuccessAngle180       $@       NPC_ATK_ButtonXmark      8@               GetWellSpace_Odds     '   > E  ? Á    ? Á    Ë?  Å      	 
Ë@       KÁ  	A 
 E  Á   Y G E            s                          GetDist        TARGET_ENE_0        GetRandam_Int       ð?      Y@       GetSp        TARGET_SELF       @       SpaceCheck                GetStringIndexedNumber        Dist_Rolling        AddSubGoal )       GOAL_COMMON_ComboTunable_SuccessAngle180       $@       NPC_ATK_Up_ButtonXmark      8@     F@     FÀ      I@       NPC_ATK_UpLeft_ButtonXmark        NPC_ATK_UpRight_ButtonXmark        GetWellSpace_Odds     u   > E  ? Á    ? Á    Ë?  ×        	A 
A Á     T Á E 	 
Å E   A A Y       	 
A Á     
       	A 
A Á     T WC T Á E 	 
 E   A A Y
 Á E 	 
E E   A A Y Á E 	 
 E   A A Y       	A 
A Á     T Á E 	 
E E   A A YÔÿ               °                          GetDist        TARGET_ENE_0        GetRandam_Int       ð?      Y@       GetSp        TARGET_SELF        SpaceCheck      V@     VÀ       GetStringIndexedNumber        Dist_Rolling       I@       AddSubGoal )       GOAL_COMMON_ComboTunable_SuccessAngle180       $@       NPC_ATK_Left_ButtonXmark      8@               NPC_ATK_Right_ButtonXmark        GetWellSpace_Odds     ^   > E  ? Á    ? Á    Ë?  Å      	A 
A Á     
 Å      	 
A Á     T A T ËÁ  	Á 
 E  A   Y
 ËÁ  	Á 
Å E  A   Y ËÁ  	Á 
 E  A   Y Å      	 
A Á     T ËÁ  	Á 
Å E  A   YÔÿ               Þ                          GetDist        TARGET_ENE_0        GetRandam_Int       ð?      Y@       GetSp        TARGET_SELF        SpaceCheck      f@       GetStringIndexedNumber        Dist_Rolling        AddSubGoal )       GOAL_COMMON_ComboTunable_SuccessAngle180        NPC_ATK_Down_ButtonXmark      8@             à`@     à`À      I@       NPC_ATK_DownLeft_ButtonXmark        NPC_ATK_DownRight_ButtonXmark        GetWellSpace_Odds     u   > E  ? Á    ? Á    Ë?  W¿  Å      	 
Ë@      T KÁ  	Á  
E E   Á Á Y Å      	A 
Ë@      
 Å      	 
Ë@      T C T KÁ  	Á  
Å E   Á Á Y
 KÁ  	Á  
 E   Á Á Y KÁ  	Á  
Å E   Á Á Y Å      	 
Ë@      T KÁ  	Á  
 E   Á Á YÔÿ  G E                                      ChangeEquipItem        @       SetStringIndexedNumber        item_Knife        GetStringIndexedNumber       ð?       AddSubGoal        GOAL_COMMON_AttackTunableSpin       $@       NPC_ATK_ButtonSquare        TARGET_ENE_0      8@               GetWellSpace_Odds       Y@       > A  Y? Á  ? Á  Í?Y À Å  E  Á 	 
 Y G E            !                          GetRandam_Int       ð?      Y@       GetDist        TARGET_ENE_0        GetSp        TARGET_SELF       @       IsInsideTarget        AI_DIR_TYPE_L      f@       AddSubGoal        GOAL_COMMON_SidewayMove ÍÌÌÌÌÌü?             ÀR@     V@       GetWellSpace_Odds     R   > A     K?  Ë?  Á @  	E 
 T  T KÁ  	A 
  > Á       Y 
 KÁ  	A 
  > Á      Y   T KÁ  	A 
 A  > Á       Y  KÁ  	A 
 A  > Á      Y   G E            I                          GetDist        TARGET_ENE_0        GetSp        TARGET_SELF       @       AddSubGoal        GOAL_COMMON_LeaveTarget ÍÌÌÌÌÌü?      @               GetWellSpace_Odds       Y@    !   > E  ? Å   W T Ë¿  Á 	E  
 E    A Y Ë¿  Á 	E  
 E   A YÁ              a                   !       AddObserveSpecialEffectAttribute        TARGET_SELF      §@       ChangeEquipItem                AddSubGoal        GOAL_COMMON_AttackTunableSpin       $@       NPC_ATK_ButtonSquare        TARGET_ENE_0      8@       GetWellSpace_Odds       Y@       > E    Y K?  YË¿  Á  E  	 
 Y Ç Å            p                          AddSubGoal        GOAL_COMMON_Wait       à?       TARGET_ENE_0                GetWellSpace_Odds       Y@       ¾ E    Å    	 
Y  G E            |                	          AddSubGoal        GOAL_COMMON_AttackTunableSpin       $@       NPC_ATK_ArrowKeyRight        TARGET_ENE_0      8@               GetWellSpace_Odds       Y@       ¾ E    Å   A 	 
 Y Ç Å                            	          AddSubGoal        GOAL_COMMON_AttackTunableSpin       $@       NPC_ATK_ArrowKeyLeft        TARGET_ENE_0      8@               GetWellSpace_Odds       Y@       ¾ E    Å   A 	 
 Y Ç Å                                      ChangeEquipMagic                GetRandam_Int       ð?      Y@       GetDist        TARGET_ENE_0        GetSp        TARGET_SELF        GreatFireball_DIST_MAX        IsBothHandMode        AddSubGoal )       GOAL_COMMON_ComboTunable_SuccessAngle180       $@       NPC_ATK_ButtonTriangle      8@       @ÍÌÌÌÌÌü?      I@       NPC_Approach_Act_Flex        GOAL_COMMON_AttackTunableSpin        NPC_ATK_R1        TimingSetTimer        @      (@       UPDATE_SUCCESS        GetWellSpace_Odds     K   > A  Y? Á    ? Á    Ë?  K@  E A  A 	 		 KÁ 	 A   Á A  A  Y	 	Ì¾
Â A  C   A  Å                 Y KÁ  A E   A  A  ÄA  ? Á   E Y              ¾                          ChangeEquipMagic       ð?       GetRandam_Int       Y@       GetDist        TARGET_ENE_0        GetSp        TARGET_SELF        GreatCombustion_DIST_MAX                IsBothHandMode        AddSubGoal )       GOAL_COMMON_ComboTunable_SuccessAngle180       $@       NPC_ATK_ButtonTriangle      8@       @ÍÌÌÌÌÌü?      I@       NPC_Approach_Act_Flex        GOAL_COMMON_AttackTunableSpin        NPC_ATK_R1        TimingSetTimer       @       UPDATE_SUCCESS        GetWellSpace_Odds     K   > A  Y? A  Á   ? A  Á   ? E @ Å  A A 	Å 		 KÁ 	 A  E Á A A Y	 	ÌÀ
ÂÁ  A  C   A Å                 Y KÁ  A E E  A A ÄA  ?  Á   YÁ  G E            è                          ChangeEquipMagic        @       GetRandam_Int       ð?      Y@       GetDist        TARGET_ENE_0        GetSp        TARGET_SELF        Firestorm_DIST_MAX                IsBothHandMode        AddSubGoal )       GOAL_COMMON_ComboTunable_SuccessAngle180       $@       NPC_ATK_ButtonTriangle      8@ÍÌÌÌÌÌü?      I@       NPC_Approach_Act_Flex        GOAL_COMMON_AttackTunableSpin        NPC_ATK_R1        TimingSetTimer        UPDATE_SUCCESS        GetWellSpace_Odds     K   > A  Y? Á    ? Á    Ë?  K@  E  KA 	 		 Á 	E  Å     Y	 	Á
Ì¾ A A  C    Å                 Y Á   E     ÄA  ?  A   Å Y                                                                             Update_Default_NoSubGoal                              #                                     -                          GetSp        TARGET_SELF        GetDist        TARGET_ENE_0        GetRandam_Int       ð?      Y@ÍÌÌÌÌÌ@       GuardBreak_Act        AddSubGoal        GOAL_COMMON_AttackTunableSpin       $@       NPC_ATK_R2      8@              ð¿       IsInterupt        INTERUPT_FindAttack       9@      @      4@       ClearSubGoal #       NPC_Magic_Pyromancy_Merchant_Act24        INTERUPT_Damaged       I@    H   ¾ E  ¿ Å  ¿ A   Á     	  
     Ë@ 
Á  Å  A  Á Y  Â E 
 T Ã Ô WC T ×  Ô ËCY    	  
Y  Â Å 
 T Ä Ô WC T ×  Ô ËCY    	  
Y       B      E  A  Y    E   Y Å   "  I  Å   b  I ¢     â   Ç  "    b  G  ¢    â  Ç  "    b  G  ¢    â  Ç  "    b  G  ¢    â  Ç  "    b  G  ¢    â  Ç  "    b  G  ¢    Å   â I Å   " I  Å   b I   