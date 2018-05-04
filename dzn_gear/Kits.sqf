// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

/*
*	IDF 4+4+1
*/

#define idf_helm ["IDF_Helmet_Mitsnefet_1","IDF_Helmet_Mitsnefet_2","IDF_Helmet_Mitsnefet_3"]
#define idf_r_w ["idf_x95m","idf_x95m_ng","CUP_arifle_M16A2"]
#define idf_r_a ["30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag"]

kit_idf_random = [
	"kit_idf_r"
	,"kit_idf_gr"
	,"kit_idf_ar"
	,"kit_idf_ftl"
	,"kit_idf_sl"
];

kit_idf_pl = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_rba_lbe_rm","usm_pack_st138_prc77",idf_helm,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M16A4_Base","30Rnd_556x45_Stanag",["","","CUP_optic_RCO",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[UNIFORM_ITEMS_L,["PRIMARY MAG",9],["HandGrenade",2],["1Rnd_SmokeRed_Grenade_shell",2],["SmokeShell",2],["SmokeShellGreen",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_idf_sl = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_rba_lbe_rm","usm_pack_st138_prc77",idf_helm,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M16A4_Base","30Rnd_556x45_Stanag",["","","CUP_optic_RCO",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[UNIFORM_ITEMS_L,["PRIMARY MAG",9],["HandGrenade",2],["1Rnd_SmokeRed_Grenade_shell",2],["SmokeShell",2],["SmokeShellGreen",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_idf_ftl = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_rba_lbe_gr","",idf_helm,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M16A2_GL","30Rnd_556x45_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[UNIFORM_ITEMS_L,["PRIMARY MAG",9],["1Rnd_HE_Grenade_shell",15],["1Rnd_SmokeRed_Grenade_shell",4],["HandGrenade",2],["SmokeShell",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_idf_ar = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_rba_lbe_mg","CUP_B_AlicePack_Bedroll",idf_helm,""],
	["<PRIMARY WEAPON >>  ","LMG_Zafir_F","150Rnd_762x54_Box",["","","rhsusf_acc_ELCAN",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Glock17_blk","CUP_17Rnd_9x19_glock17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[UNIFORM_ITEMS,["PRIMARY MAG",3],["HANDGUN MAG",3],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",4]]]
];

kit_idf_gr = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_rba_lbe_gr","",idf_helm,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M16A2_GL","30Rnd_556x45_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[UNIFORM_ITEMS,["PRIMARY MAG",9],["1Rnd_HE_Grenade_shell",15],["1Rnd_SmokeRed_Grenade_shell",2],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_idf_r = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_rba_lbv_gr","CUP_B_AlicePack_Bedroll",idf_helm,""],
	["<PRIMARY WEAPON >>  ",idf_r_w,idf_r_a,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_M72A6","ACE_PreloadedMissileDummy_M72A6_CUP",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[UNIFORM_ITEMS,["PRIMARY MAG",9],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["150Rnd_762x54_Box",4]]]
];

kit_idf_crew = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_rba","usm_pack_st138_prc77","CUP_H_CZ_Helmet05",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_MicroUzi","CUP_30Rnd_9x19_UZI",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[UNIFORM_ITEMS_L,["ACE_fieldDressing",5]]],
	["<BACKPACK ITEMS >> ",[UNIFORM_ITEMS_L,["HANDGUN MAG",3],["SmokeShellGreen",2]]]
];

kit_idf_cargo = [
	[["rhs_weap_M136_hedp",10]],
	[["30Rnd_556x45_Stanag",60],["HandGrenade",20],["150Rnd_762x54_Box",30],["1Rnd_HE_Grenade_shell",60]],
	[["ACE_fieldDressing",30],["ACE_packingBandage",30],["ACE_elasticBandage",30],["ACE_tourniquet",5],["ACE_morphine",20],["ACE_epinephrine",20],["ACE_quikclot",20]],
	[]
];

kit_idf_h =	[
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_rba","",idf_helm,""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];

/*
*	Hezbollah - 4+3+2
*/

#define hzb_uni ["TRYK_U_B_wood_CombatUniform","TRYK_U_B_woodR_CombatUniformTshirt"]
#define hzb_vest ["CUP_V_B_RRV_Medic","CUP_V_B_RRV_Officer","CUP_V_B_RRV_Scout","CUP_V_B_RRV_Scout2","CUP_V_B_RRV_TL"]
#define hzb_bp ["CUP_B_AlicePack_Khaki","CUP_B_AlicePack_Bedroll"]

kit_hzb_sl =	[
	["<EQUIPEMENT >>  ",hzb_uni,hzb_vest,"tf_mr3000_rhs","TRYK_H_Helmet_WOOD","rhs_ess_black"],
	["<PRIMARY WEAPON >>  ","rhs_weap_akms_gp25","rhs_30Rnd_762x39mm",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch","ItemRadio"],
	["<UNIFORM ITEMS >> ",[["binocular",1],["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_VOG25",10]]]
];

kit_hzb_ar =	[
	["<EQUIPEMENT >>  ",hzb_uni,hzb_vest,hzb_bp,"TRYK_H_Helmet_WOOD","rhs_ess_black"],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkm","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch","ItemRadio"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]]],
	["<VEST ITEMS >> ",[["HandGrenade",1],["rhs_100Rnd_762x54mmR_green",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_hzb_at =	[
	["<EQUIPEMENT >>  ",hzb_uni,hzb_vest,"rhs_rpg_empty","TRYK_H_Helmet_WOOD","rhs_ess_black"],
	["<PRIMARY WEAPON >>  ","rhs_weap_akms","rhs_30Rnd_762x39mm",["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch","ItemRadio"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",2]]]
];

kit_hzb_aat =	[
	["<EQUIPEMENT >>  ",hzb_uni,hzb_vest,"rhs_rpg_empty","TRYK_H_Helmet_WOOD","rhs_ess_black"],
	["<PRIMARY WEAPON >>  ","rhs_weap_akms","rhs_30Rnd_762x39mm",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch","ItemRadio"],
	["<UNIFORM ITEMS >> ",[["binocular",1],["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",2]]]
];

kit_hzb_ss =	[
	["<EQUIPEMENT >>  ",hzb_uni,hzb_vest,hzb_bp,"TRYK_H_Helmet_WOOD","rhs_ess_black"],
	["<PRIMARY WEAPON >>  ","rhs_weap_akms_gp25","rhs_30Rnd_762x39mm",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch","ItemRadio"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]]],
	["<VEST ITEMS >> ",[["binocular",1],["HandGrenade",2],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[["rhs_VOG25",10]]]
];

kit_hzb_r =	[
	["<EQUIPEMENT >>  ",hzb_uni,hzb_vest,hzb_bp,"TRYK_H_Helmet_WOOD","rhs_ess_black"],
	["<PRIMARY WEAPON >>  ","rhs_weap_akms","rhs_30Rnd_762x39mm",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch","ItemRadio"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_100Rnd_762x54mmR",2]]]
];

kit_hzb_crew =	[
	["<EQUIPEMENT >>  ",hzb_uni,"CUP_V_C_Police_Holster","","rhs_tsh4_ess",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74u","rhs_30Rnd_545x39_AK",["rhs_acc_pgs64_74u","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch","ItemRadio"],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_hzb_random = 	[
	"kit_hzb_aat"
	,"kit_hzb_at"
	,"kit_hzb_ar"
	,"kit_hzb_sl"
	,"kit_hzb_r"
	,"kit_hzb_ss"
];

kit_hzb_cargo = [
	[],
	[["rhs_VOG25",60],["rhs_30Rnd_762x39mm",60],["rhs_100Rnd_762x54mmR",30],["rhs_rpg7_PG7VL_mag",10],["rhs_rpg7_OG7V_mag",10]],
	[["ACE_fieldDressing",30],["ACE_packingBandage",30],["ACE_elasticBandage",30],["ACE_tourniquet",5],["ACE_morphine",20],["ACE_epinephrine",20],["ACE_quikclot",20]],
	[]
];