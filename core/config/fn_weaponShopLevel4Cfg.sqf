#include <macro.h>
/*
    File: fn_weaponShopCfg.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Master configuration file for the weapon shops.

    Return:
    String: Close the menu
    Array:
    [Shop Name,
    [ //Array of items to add to the store
        [classname,Custom Name (set nil for default),price]
    ]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.


[] call life_fnc_profSetup;

switch(_shop) do
{

 case "civ_weapon":
    {
		switch(true) do
        {
            case (playerSide != civilian): {"Finger weg, Soldat!"};
			case (life_level >= 25): {"Du bist hier falsch!"};
			case (life_level < 3): {"Hau ab, du Frischling!"};
            case (life_level == 3):
            {
                ["Level 3 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100]
                    ]
                ];
            };

            case (life_level == 4):
            {
                ["Level 4 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100]
                    ]
                ];
            };

            case (life_level == 5):
            {
                ["Level 5 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100]
                    ]
                ];
            };

            case ((life_level == 6) OR (life_level == 7)):
            {
                ["Level 6/7 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100]
                    ]
                ];
            };

            case ((life_level == 8) OR (life_level == 9)):
            {
                ["Level 8/9 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],                        
                        ["30Rnd_mas_545x39_mag",nil,100]
                    ]
                ];
            };

            case ((life_level == 10) OR (life_level == 11)):
            {
                ["Level 10/11 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],                        
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100]

                    ]
                ];
            };

            case ((life_level == 12) OR (life_level == 13) OR (life_level == 14)):
            {
                ["Level 12/13/14 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100]

                    ]
                ];
            };

            case ((life_level == 15) OR (life_level == 16)):
            {
                ["Level 15/16 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100]

                    ]
                ];
            };

            case ((life_level == 17) OR (life_level == 18)):
            {
                ["Level 17/18 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100]

                    ]
                ];
            };

            case (life_level == 19):
            {
                ["Level 19 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100]

                    ]
                ];
            };

            case (life_level == 20):
            {
                ["Level 20 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100]

                    ]
                ];
            };

            case ((life_level == 21) OR (life_level == 22)):
            {
                ["Level 21/22 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100]

                    ]
                ];
            };

            case ((life_level == 23) OR (life_level == 24)):
            {
                ["Level 23/24 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100]

                    ]
                ];
            };
            case (life_level == 25):
            {
                ["Level 25 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100]

                    ]
                ];
            };

		};

	};
};

