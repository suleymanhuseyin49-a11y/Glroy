-- Glory V2 | Rayfield UI Edition
-- Uses Rayfield UI Library by Sirius

getgenv().gloryv2 = {
    ["Global"] = {
        ["Mod Detector"] = true,
        ["Key"] = "SjmSwqzoyfjpuuZlJfTZqLxuvwyMKmEU"
    },
    ["Binds"] = {
        ['Select'] = "C",
        ['Camera Aimbot'] = "C",
        ['Triggerbot'] = "C",
        ['Speed'] = "V"
    },
    ['Targeting'] = {
        ['Target Mode'] = 'Automatic'
    },
    ['Select Only Features'] = {
        ['Force Hit'] = true,
        ['Force Trigger'] = true
    },
    ["Checks"] = {
        ['Visible Check'] = true,
        ['Knock Check'] = true,
        ['Crew Check'] = true,
        ['Grabbed Check'] = true,
        ['Self Knock Check'] = true,
        ['Forcefield Check'] = true
    },
    ['Silent Aimbot'] = {
        ['Enabled'] = true,
        ['Max Range'] = 750,
        ['HitPart'] = "Precise Point",
        ['Prediction'] = { ['X'] = 0, ['Y'] = 0, ['Z'] = 0 },
        ['FOV'] = {
            ['Show FOV'] = false,
            ["X Left"] = 4, ["X Right"] = 4,
            ["Y Upper"] = 4, ["Y Lower"] = 4,
            ["Z Left"] = 4, ["Z Right"] = 4,
            ['Weapon Configuration'] = {
                ['Enabled'] = false,
                ['Shotguns'] = { ["X Left"]=1.011,["X Right"]=1.62,["Y Upper"]=2.025,["Y Lower"]=3.225,["Z Left"]=1.175,["Z Right"]=1.212 },
                ['Pistols']  = { ["X Left"]=1.011,["X Right"]=1.52,["Y Upper"]=2.025,["Y Lower"]=3.425,["Z Left"]=1.175,["Z Right"]=1.21 },
                ['Automatics']={ ["X Left"]=2.5,["X Right"]=2.5,["Y Upper"]=2.5,["Y Lower"]=2.5,["Z Left"]=2.5,["Z Right"]=2.5 },
                ['Rifles']   = { ["X Left"]=2.5,["X Right"]=2.5,["Y Upper"]=2.5,["Y Lower"]=2.5,["Z Left"]=2.5,["Z Right"]=2.5 },
                ['Others']   = { ["X Left"]=2.5,["X Right"]=2.5,["Y Upper"]=2.5,["Y Lower"]=2.5,["Z Left"]=2.5,["Z Right"]=2.5 }
            }
        }
    },
    ['Anti Curve'] = {
        ['Enabled'] = false,
        ['Angle'] = 0.5,
        ['Weapon Configuration'] = {
            ['Enabled'] = true,
            ['Shotguns']   = { ['Angle'] = 1.1 },
            ['Pistols']    = { ['Angle'] = 0.7 },
            ['Automatics'] = { ['Angle'] = 0.45 },
            ['Rifles']     = { ['Angle'] = 0.4 },
            ['Others']     = { ['Angle'] = 0.5 }
        }
    },
    ['Camera Aimbot'] = {
        ['Enabled'] = true,
        ['Max Range'] = 750,
        ['Mode'] = "Hold",
        ['HitPart'] = "Closest Part",
        ['Smoothing'] = { ['Enabled'] = true, ['X'] = 0.587, ['Y'] = 0.539 },
        ['Range Smoothing'] = {
            ['Enabled'] = true,
            ['Close']  = { ['X'] = 0.080, ['Y'] = 0.045 },
            ['Medium'] = { ['X'] = 0.07,  ['Y'] = 0.035 },
            ['Far']    = { ['X'] = 0.03,  ['Y'] = 0.025 }
        },
        ['Easing'] = "Linear",
        ['Humanize'] = { ['Bezier'] = false, ['Enabled'] = true, ['Scale'] = 0.009 },
        ['Prediction'] = { ['X'] = 0, ['Y'] = 0, ['Z'] = 0 },
        ['Camera Aimbot Conditions'] = {
            ['First Person']  = true,
            ['Third Person']  = false,
            ['Right Click']   = true,
            ['Wall']          = false
        },
        ['FOV'] = { ['Radius'] = "165", ['Show FOV'] = false }
    },
    ['Trigger Bot'] = {
        ['Enabled'] = true,
        ['Max Range'] = 250,
        ['Settings'] = { ['Mode'] = "Hold", ['Type'] = "FOV" },
        ['Delay Settings'] = {
            ['Delay Toggle'] = true,
            ['Delay'] = 0,
            ['Weapon Configuration'] = {
                ['Enabled'] = true,
                ['Shotguns']   = { ['Delay'] = 0.013 },
                ['Pistols']    = { ['Delay'] = 0.007 },
                ['Automatics'] = { ['Delay'] = 0.04  },
                ['Rifles']     = { ['Delay'] = 0.06  },
                ['Others']     = { ['Delay'] = 0.095 }
            }
        },
        ['Prediction'] = { ['X'] = 0, ['Y'] = 0, ['Z'] = 0 },
        ['FOV'] = {
            ['Show FOV'] = false,
            ['Size'] = { ["X Left"]=4,["X Right"]=4,["Y Upper"]=4,["Y Lower"]=4,["Z Left"]=4,["Z Right"]=4 },
            ['Weapon Configuration'] = {
                ['Enabled'] = false,
                ['Shotguns']   = { ["X Left"]=1.62,["X Right"]=1.62,["Y Upper"]=2.6,["Y Lower"]=2.6,["Z Left"]=1.175,["Z Right"]=1.175 },
                ['Pistols']    = { ["X Left"]=1.02,["X Right"]=1.02,["Y Upper"]=2.6,["Y Lower"]=2.6,["Z Left"]=1.175,["Z Right"]=1.175 },
                ['Automatics'] = { ["X Left"]=2.5,["X Right"]=2.5,["Y Upper"]=2.5,["Y Lower"]=2.5,["Z Left"]=2.5,["Z Right"]=2.5 },
                ['Rifles']     = { ["X Left"]=2.5,["X Right"]=2.5,["Y Upper"]=2.5,["Y Lower"]=2.5,["Z Left"]=2.5,["Z Right"]=2.5 },
                ['Others']     = { ["X Left"]=2.5,["X Right"]=2.5,["Y Upper"]=2.5,["Y Lower"]=2.5,["Z Left"]=2.5,["Z Right"]=2.5 }
            }
        }
    },
    ['Spread Modifications'] = {
        ['Enabled'] = false,
        ['Mode'] = "Fixed",
        ['Double-Barrel SG'] = { ['Fixed']=0,   ['Min']=0.2, ['Max']=0.6 },
        ['TacticalShotgun']  = { ['Fixed']=0,   ['Min']=0.2, ['Max']=0.5 },
        ['Shotgun']          = { ['Fixed']=0.9, ['Min']=0.85,['Max']=0.95 },
        ['DrumShotgun']      = { ['Fixed']=0.85,['Min']=0.8, ['Max']=0.9  }
    },
    ['Speed Modifications'] = {
        ['Enabled'] = false,
        ['Normal']     = { ['Multiplier'] = 8.8 },
        ['Low Health'] = { ['Health Threshold'] = 35, ['Multiplier'] = 1.8 }
    }
}

getgenv().LPH_NO_VIRTUALIZE = function(f) return f end

-- ============================================================
--  RAYFIELD UI LOAD
-- ============================================================
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name            = "Glory V2",
    Icon            = 0,   -- Roblox asset id or 0
    LoadingTitle    = "Glory V2",
    LoadingSubtitle = "by glory",
    Theme           = "Default",
    DisableRayfieldPrompts  = false,
    DisableBuildWarnings    = false,
    ConfigurationSaving     = { Enabled = true, FileName = "GloryV2" },
    Discord = { Enabled = false },
    KeySystem = false,  -- set true and fill KeySettings to re-enable
    --[[
    KeySystem  = true,
    KeySettings = {
        Title    = "Glory V2",
        Subtitle = "Key Required",
        Note     = "Join the Discord for a key",
        FileName = "GloryKey",
        SaveKey  = true,
        GrabKeyFromSite = false,
        Key      = { getgenv().gloryv2.Global.Key }
    }
    ]]
})

-- ============================================================
--  TAB: AIMBOT
-- ============================================================
local AimbotTab = Window:CreateTab("Aimbot", 4483362458)

-- Silent Aimbot
local SilentSection = AimbotTab:CreateSection("Silent Aimbot")

AimbotTab:CreateToggle({
    Name    = "Silent Aimbot",
    CurrentValue = getgenv().gloryv2['Silent Aimbot'].Enabled,
    Flag    = "SilentEnabled",
    Callback = function(v) getgenv().gloryv2['Silent Aimbot'].Enabled = v end
})

AimbotTab:CreateSlider({
    Name         = "Max Range",
    Range        = {50, 1500},
    Increment    = 10,
    Suffix       = "studs",
    CurrentValue = getgenv().gloryv2['Silent Aimbot']['Max Range'],
    Flag         = "SilentRange",
    Callback     = function(v) getgenv().gloryv2['Silent Aimbot']['Max Range'] = v end
})

AimbotTab:CreateDropdown({
    Name    = "Hit Part",
    Options = {"Precise Point", "Center Point", "Closest Part", "Head", "UpperTorso"},
    CurrentOption = {getgenv().gloryv2['Silent Aimbot'].HitPart},
    Flag    = "SilentHitPart",
    Callback = function(v) getgenv().gloryv2['Silent Aimbot'].HitPart = v[1] end
})

AimbotTab:CreateToggle({
    Name    = "Show FOV",
    CurrentValue = getgenv().gloryv2['Silent Aimbot'].FOV['Show FOV'],
    Flag    = "SilentShowFOV",
    Callback = function(v) getgenv().gloryv2['Silent Aimbot'].FOV['Show FOV'] = v end
})

AimbotTab:CreateToggle({
    Name    = "Weapon FOV Config",
    CurrentValue = getgenv().gloryv2['Silent Aimbot'].FOV['Weapon Configuration'].Enabled,
    Flag    = "SilentWeaponFOV",
    Callback = function(v) getgenv().gloryv2['Silent Aimbot'].FOV['Weapon Configuration'].Enabled = v end
})

-- Anti Curve
local AntiCurveSection = AimbotTab:CreateSection("Anti Curve")

AimbotTab:CreateToggle({
    Name    = "Anti Curve",
    CurrentValue = getgenv().gloryv2['Anti Curve'].Enabled,
    Flag    = "AntiCurveEnabled",
    Callback = function(v) getgenv().gloryv2['Anti Curve'].Enabled = v end
})

AimbotTab:CreateSlider({
    Name         = "Angle Threshold",
    Range        = {0, 5},
    Increment    = 0.05,
    Suffix       = "°",
    CurrentValue = getgenv().gloryv2['Anti Curve'].Angle,
    Flag         = "AntiCurveAngle",
    Callback     = function(v) getgenv().gloryv2['Anti Curve'].Angle = v end
})

AimbotTab:CreateToggle({
    Name    = "Weapon Angle Config",
    CurrentValue = getgenv().gloryv2['Anti Curve']['Weapon Configuration'].Enabled,
    Flag    = "AntiCurveWeapon",
    Callback = function(v) getgenv().gloryv2['Anti Curve']['Weapon Configuration'].Enabled = v end
})

-- ============================================================
--  TAB: CAMERA AIMBOT
-- ============================================================
local CamTab = Window:CreateTab("Camera Lock", 4483362458)
local CamSection = CamTab:CreateSection("Camera Aimbot")

CamTab:CreateToggle({
    Name    = "Camera Aimbot",
    CurrentValue = getgenv().gloryv2['Camera Aimbot'].Enabled,
    Flag    = "CamEnabled",
    Callback = function(v) getgenv().gloryv2['Camera Aimbot'].Enabled = v end
})

CamTab:CreateSlider({
    Name         = "Max Range",
    Range        = {50, 1500},
    Increment    = 10,
    Suffix       = "studs",
    CurrentValue = getgenv().gloryv2['Camera Aimbot']['Max Range'],
    Flag         = "CamRange",
    Callback     = function(v) getgenv().gloryv2['Camera Aimbot']['Max Range'] = v end
})

CamTab:CreateDropdown({
    Name    = "Mode",
    Options = {"Hold", "Toggle"},
    CurrentOption = {getgenv().gloryv2['Camera Aimbot'].Mode},
    Flag    = "CamMode",
    Callback = function(v) getgenv().gloryv2['Camera Aimbot'].Mode = v[1] end
})

CamTab:CreateDropdown({
    Name    = "Hit Part",
    Options = {"Precise Point", "Center Point", "Closest Part", "Head", "UpperTorso"},
    CurrentOption = {getgenv().gloryv2['Camera Aimbot'].HitPart},
    Flag    = "CamHitPart",
    Callback = function(v) getgenv().gloryv2['Camera Aimbot'].HitPart = v[1] end
})

local SmoothSection = CamTab:CreateSection("Smoothing")

CamTab:CreateToggle({
    Name    = "Smoothing",
    CurrentValue = getgenv().gloryv2['Camera Aimbot'].Smoothing.Enabled,
    Flag    = "CamSmoothing",
    Callback = function(v) getgenv().gloryv2['Camera Aimbot'].Smoothing.Enabled = v end
})

CamTab:CreateSlider({
    Name         = "Smooth X",
    Range        = {0, 2},
    Increment    = 0.001,
    CurrentValue = getgenv().gloryv2['Camera Aimbot'].Smoothing.X,
    Flag         = "CamSmoothX",
    Callback     = function(v) getgenv().gloryv2['Camera Aimbot'].Smoothing.X = v end
})

CamTab:CreateSlider({
    Name         = "Smooth Y",
    Range        = {0, 2},
    Increment    = 0.001,
    CurrentValue = getgenv().gloryv2['Camera Aimbot'].Smoothing.Y,
    Flag         = "CamSmoothY",
    Callback     = function(v) getgenv().gloryv2['Camera Aimbot'].Smoothing.Y = v end
})

CamTab:CreateToggle({
    Name    = "Range Smoothing",
    CurrentValue = getgenv().gloryv2['Camera Aimbot']['Range Smoothing'].Enabled,
    Flag    = "CamRangeSmooth",
    Callback = function(v) getgenv().gloryv2['Camera Aimbot']['Range Smoothing'].Enabled = v end
})

local HumanizeSection = CamTab:CreateSection("Humanizer")

CamTab:CreateToggle({
    Name    = "Humanize",
    CurrentValue = getgenv().gloryv2['Camera Aimbot'].Humanize.Enabled,
    Flag    = "CamHumanize",
    Callback = function(v) getgenv().gloryv2['Camera Aimbot'].Humanize.Enabled = v end
})

CamTab:CreateToggle({
    Name    = "Bezier Curve",
    CurrentValue = getgenv().gloryv2['Camera Aimbot'].Humanize.Bezier,
    Flag    = "CamBezier",
    Callback = function(v) getgenv().gloryv2['Camera Aimbot'].Humanize.Bezier = v end
})

CamTab:CreateSlider({
    Name         = "Humanize Scale",
    Range        = {0, 0.1},
    Increment    = 0.001,
    CurrentValue = getgenv().gloryv2['Camera Aimbot'].Humanize.Scale,
    Flag         = "CamScale",
    Callback     = function(v) getgenv().gloryv2['Camera Aimbot'].Humanize.Scale = v end
})

local CamCondSection = CamTab:CreateSection("Conditions")

CamTab:CreateToggle({
    Name    = "First Person",
    CurrentValue = getgenv().gloryv2['Camera Aimbot']['Camera Aimbot Conditions']['First Person'],
    Flag    = "CamFP",
    Callback = function(v) getgenv().gloryv2['Camera Aimbot']['Camera Aimbot Conditions']['First Person'] = v end
})

CamTab:CreateToggle({
    Name    = "Third Person",
    CurrentValue = getgenv().gloryv2['Camera Aimbot']['Camera Aimbot Conditions']['Third Person'],
    Flag    = "CamTP",
    Callback = function(v) getgenv().gloryv2['Camera Aimbot']['Camera Aimbot Conditions']['Third Person'] = v end
})

CamTab:CreateToggle({
    Name    = "Require Right Click",
    CurrentValue = getgenv().gloryv2['Camera Aimbot']['Camera Aimbot Conditions']['Right Click'],
    Flag    = "CamRClick",
    Callback = function(v) getgenv().gloryv2['Camera Aimbot']['Camera Aimbot Conditions']['Right Click'] = v end
})

CamTab:CreateToggle({
    Name    = "Show FOV Circle",
    CurrentValue = getgenv().gloryv2['Camera Aimbot'].FOV['Show FOV'],
    Flag    = "CamShowFOV",
    Callback = function(v) getgenv().gloryv2['Camera Aimbot'].FOV['Show FOV'] = v end
})

CamTab:CreateSlider({
    Name         = "FOV Radius",
    Range        = {50, 500},
    Increment    = 5,
    CurrentValue = tonumber(getgenv().gloryv2['Camera Aimbot'].FOV.Radius) or 165,
    Flag         = "CamFOVRadius",
    Callback     = function(v) getgenv().gloryv2['Camera Aimbot'].FOV.Radius = tostring(v) end
})

-- ============================================================
--  TAB: TRIGGERBOT
-- ============================================================
local TrigTab = Window:CreateTab("Triggerbot", 4483362458)
local TrigSection = TrigTab:CreateSection("Triggerbot")

TrigTab:CreateToggle({
    Name    = "Triggerbot",
    CurrentValue = getgenv().gloryv2['Trigger Bot'].Enabled,
    Flag    = "TrigEnabled",
    Callback = function(v) getgenv().gloryv2['Trigger Bot'].Enabled = v end
})

TrigTab:CreateSlider({
    Name         = "Max Range",
    Range        = {50, 1000},
    Increment    = 10,
    Suffix       = "studs",
    CurrentValue = getgenv().gloryv2['Trigger Bot']['Max Range'],
    Flag         = "TrigRange",
    Callback     = function(v) getgenv().gloryv2['Trigger Bot']['Max Range'] = v end
})

TrigTab:CreateDropdown({
    Name    = "Mode",
    Options = {"Always", "Hold", "Toggle"},
    CurrentOption = {getgenv().gloryv2['Trigger Bot'].Settings.Mode},
    Flag    = "TrigMode",
    Callback = function(v) getgenv().gloryv2['Trigger Bot'].Settings.Mode = v[1] end
})

TrigTab:CreateDropdown({
    Name    = "Type",
    Options = {"FOV", "Hitbox"},
    CurrentOption = {getgenv().gloryv2['Trigger Bot'].Settings.Type},
    Flag    = "TrigType",
    Callback = function(v) getgenv().gloryv2['Trigger Bot'].Settings.Type = v[1] end
})

local DelaySection = TrigTab:CreateSection("Delay")

TrigTab:CreateToggle({
    Name    = "Delay Toggle",
    CurrentValue = getgenv().gloryv2['Trigger Bot']['Delay Settings']['Delay Toggle'],
    Flag    = "TrigDelay",
    Callback = function(v) getgenv().gloryv2['Trigger Bot']['Delay Settings']['Delay Toggle'] = v end
})

TrigTab:CreateSlider({
    Name         = "Base Delay",
    Range        = {0, 0.5},
    Increment    = 0.001,
    Suffix       = "s",
    CurrentValue = getgenv().gloryv2['Trigger Bot']['Delay Settings'].Delay,
    Flag         = "TrigBaseDelay",
    Callback     = function(v) getgenv().gloryv2['Trigger Bot']['Delay Settings'].Delay = v end
})

TrigTab:CreateToggle({
    Name    = "Weapon Delay Config",
    CurrentValue = getgenv().gloryv2['Trigger Bot']['Delay Settings']['Weapon Configuration'].Enabled,
    Flag    = "TrigWeaponDelay",
    Callback = function(v) getgenv().gloryv2['Trigger Bot']['Delay Settings']['Weapon Configuration'].Enabled = v end
})

local TrigFOVSection = TrigTab:CreateSection("FOV")

TrigTab:CreateToggle({
    Name    = "Show Trigger FOV",
    CurrentValue = getgenv().gloryv2['Trigger Bot'].FOV['Show FOV'],
    Flag    = "TrigShowFOV",
    Callback = function(v) getgenv().gloryv2['Trigger Bot'].FOV['Show FOV'] = v end
})

TrigTab:CreateToggle({
    Name    = "Weapon FOV Config",
    CurrentValue = getgenv().gloryv2['Trigger Bot'].FOV['Weapon Configuration'].Enabled,
    Flag    = "TrigWeaponFOV",
    Callback = function(v) getgenv().gloryv2['Trigger Bot'].FOV['Weapon Configuration'].Enabled = v end
})

-- ============================================================
--  TAB: TARGETING & CHECKS
-- ============================================================
local TargetTab = Window:CreateTab("Targeting", 4483362458)
local TargetSection = TargetTab:CreateSection("Target Mode")

TargetTab:CreateDropdown({
    Name    = "Target Mode",
    Options = {"Automatic", "Select"},
    CurrentOption = {getgenv().gloryv2['Targeting']['Target Mode']},
    Flag    = "TargetMode",
    Callback = function(v) getgenv().gloryv2['Targeting']['Target Mode'] = v[1] end
})

local SelectSection = TargetTab:CreateSection("Select Only Features")

TargetTab:CreateToggle({
    Name    = "Force Hit",
    CurrentValue = getgenv().gloryv2['Select Only Features']['Force Hit'],
    Flag    = "ForceHit",
    Callback = function(v) getgenv().gloryv2['Select Only Features']['Force Hit'] = v end
})

TargetTab:CreateToggle({
    Name    = "Force Trigger",
    CurrentValue = getgenv().gloryv2['Select Only Features']['Force Trigger'],
    Flag    = "ForceTrigger",
    Callback = function(v) getgenv().gloryv2['Select Only Features']['Force Trigger'] = v end
})

local ChecksSection = TargetTab:CreateSection("Checks")

TargetTab:CreateToggle({
    Name    = "Visible Check",
    CurrentValue = getgenv().gloryv2.Checks['Visible Check'],
    Flag    = "CheckVis",
    Callback = function(v) getgenv().gloryv2.Checks['Visible Check'] = v end
})

TargetTab:CreateToggle({
    Name    = "Knock Check",
    CurrentValue = getgenv().gloryv2.Checks['Knock Check'],
    Flag    = "CheckKnock",
    Callback = function(v) getgenv().gloryv2.Checks['Knock Check'] = v end
})

TargetTab:CreateToggle({
    Name    = "Crew Check",
    CurrentValue = getgenv().gloryv2.Checks['Crew Check'],
    Flag    = "CheckCrew",
    Callback = function(v) getgenv().gloryv2.Checks['Crew Check'] = v end
})

TargetTab:CreateToggle({
    Name    = "Grabbed Check",
    CurrentValue = getgenv().gloryv2.Checks['Grabbed Check'],
    Flag    = "CheckGrab",
    Callback = function(v) getgenv().gloryv2.Checks['Grabbed Check'] = v end
})

TargetTab:CreateToggle({
    Name    = "Self Knock Check",
    CurrentValue = getgenv().gloryv2.Checks['Self Knock Check'],
    Flag    = "CheckSelfKnock",
    Callback = function(v) getgenv().gloryv2.Checks['Self Knock Check'] = v end
})

TargetTab:CreateToggle({
    Name    = "Forcefield Check",
    CurrentValue = getgenv().gloryv2.Checks['Forcefield Check'],
    Flag    = "CheckFF",
    Callback = function(v) getgenv().gloryv2.Checks['Forcefield Check'] = v end
})

-- ============================================================
--  TAB: MISC
-- ============================================================
local MiscTab = Window:CreateTab("Misc", 4483362458)

local SpeedSection = MiscTab:CreateSection("Speed Modifications")

MiscTab:CreateToggle({
    Name    = "Speed Hack",
    CurrentValue = getgenv().gloryv2['Speed Modifications'].Enabled,
    Flag    = "SpeedEnabled",
    Callback = function(v)
        getgenv().gloryv2['Speed Modifications'].Enabled = v
        local hum = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if hum then hum.WalkSpeed = v and (16 * getgenv().gloryv2['Speed Modifications'].Normal.Multiplier) or 16 end
    end
})

MiscTab:CreateSlider({
    Name         = "Speed Multiplier",
    Range        = {1, 20},
    Increment    = 0.1,
    CurrentValue = getgenv().gloryv2['Speed Modifications'].Normal.Multiplier,
    Flag         = "SpeedMult",
    Callback     = function(v) getgenv().gloryv2['Speed Modifications'].Normal.Multiplier = v end
})

MiscTab:CreateSlider({
    Name         = "Low HP Threshold",
    Range        = {1, 100},
    Increment    = 1,
    Suffix       = "HP",
    CurrentValue = getgenv().gloryv2['Speed Modifications']['Low Health']['Health Threshold'],
    Flag         = "SpeedLowHP",
    Callback     = function(v) getgenv().gloryv2['Speed Modifications']['Low Health']['Health Threshold'] = v end
})

MiscTab:CreateSlider({
    Name         = "Low HP Multiplier",
    Range        = {1, 10},
    Increment    = 0.1,
    CurrentValue = getgenv().gloryv2['Speed Modifications']['Low Health'].Multiplier,
    Flag         = "SpeedLowMult",
    Callback     = function(v) getgenv().gloryv2['Speed Modifications']['Low Health'].Multiplier = v end
})

local SpreadSection = MiscTab:CreateSection("Spread Modifications")

MiscTab:CreateToggle({
    Name    = "Spread Mods",
    CurrentValue = getgenv().gloryv2['Spread Modifications'].Enabled,
    Flag    = "SpreadEnabled",
    Callback = function(v) getgenv().gloryv2['Spread Modifications'].Enabled = v end
})

MiscTab:CreateDropdown({
    Name    = "Spread Mode",
    Options = {"Fixed", "Randomized"},
    CurrentOption = {getgenv().gloryv2['Spread Modifications'].Mode},
    Flag    = "SpreadMode",
    Callback = function(v) getgenv().gloryv2['Spread Modifications'].Mode = v[1] end
})

local GlobalSection = MiscTab:CreateSection("Global")

MiscTab:CreateToggle({
    Name    = "Mod Detector",
    CurrentValue = getgenv().gloryv2.Global['Mod Detector'],
    Flag    = "ModDetector",
    Callback = function(v) getgenv().gloryv2.Global['Mod Detector'] = v end
})

-- ============================================================
--  TAB: KEYBINDS
-- ============================================================
local BindsTab = Window:CreateTab("Keybinds", 4483362458)
local BindSection = BindsTab:CreateSection("Keybinds")

BindsTab:CreateKeybind({
    Name    = "Select / Camera / Trigger",
    CurrentKeybind = getgenv().gloryv2.Binds.Select,
    HoldToInteract  = false,
    Flag    = "BindSelect",
    Callback = function(v)
        getgenv().gloryv2.Binds.Select = v
        getgenv().gloryv2.Binds['Camera Aimbot'] = v
        getgenv().gloryv2.Binds.Triggerbot = v
    end
})

BindsTab:CreateKeybind({
    Name    = "Speed Toggle",
    CurrentKeybind = getgenv().gloryv2.Binds.Speed,
    HoldToInteract  = false,
    Flag    = "BindSpeed",
    Callback = function(v) getgenv().gloryv2.Binds.Speed = v end
})

-- ============================================================
--  CORE LOGIC (identical to original, kept below)
-- ============================================================

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local localPlayer = Players.LocalPlayer
local camera = Workspace.CurrentCamera
local mouse = localPlayer:GetMouse()

local triggerBotActive = false
local triggerHold = false
local lastTriggerTime = 0
local camLastUpdate = 0
local CAM_UPDATE_RATE = 1/60
local camFOVLastUpdate = 0
local CAM_FOV_UPDATE_RATE = 1/60
local camFOVCircle = nil
local lastMousePos = nil
local currentTargetPlayer = nil
local leftCtrlHeld = false
local targetPlayer = nil
local camLockActive = false
local camLockHold = false
local camLockTarget = nil
local camLockPart = nil
local rightClickHeld = false

local ShotgunNames   = { ["Double-Barrel SG"]=true,["TacticalShotgun"]=true,["Shotgun"]=true,["DrumShotgun"]=true }
local PistolNames    = { ["Revolver"]=true,["Silencer"]=true,["Glock"]=true }
local AutomaticNames = { ["AK-47"]=true,["AR"]=true,["Silencer AR"]=true,["Drum Gun"]=true }
local RifleNames     = { ["AUG"]=true,["P90"]=true,["Rifle"]=true }

local targetCache = {
    Player=nil,Root=nil,Hitbox=nil,Box=nil,
    Trigger=nil,TriggerBox=nil,lastWeapon=nil,
    SilentFOV={},TriggerFOV={}
}

local R15_PARTS = {
    "Head","UpperTorso","LowerTorso",
    "LeftUpperArm","LeftLowerArm","LeftHand",
    "RightUpperArm","RightLowerArm","RightHand",
    "LeftUpperLeg","LeftLowerLeg","LeftFoot",
    "RightUpperLeg","RightLowerLeg","RightFoot"
}

task.spawn(LPH_NO_VIRTUALIZE(function()
    local CommunityID = 17215700
    local function checkMod(Player)
        if getgenv().gloryv2 and getgenv().gloryv2.Global and getgenv().gloryv2.Global["Mod Detector"] then
            if Player ~= localPlayer and Player:IsInGroup(CommunityID) then
                localPlayer:Kick("A moderator has joined the game!")
                return true
            end
        end
        return false
    end
    for _, Player in ipairs(Players:GetPlayers()) do
        if checkMod(Player) then break end
    end
    Players.PlayerAdded:Connect(function(Player)
        task.wait()
        checkMod(Player)
    end)
end))

local function getWeaponCategory()
    local tool = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Tool")
    if not tool then return "Others" end
    local name = tool.Name:gsub("[%[%]]","")
    if ShotgunNames[name] then return "Shotguns"
    elseif PistolNames[name] then return "Pistols"
    elseif AutomaticNames[name] then return "Automatics"
    elseif RifleNames[name] then return "Rifles"
    else return "Others" end
end

local function getTriggerbotDelay()
    local cfg = getgenv().gloryv2['Trigger Bot']['Delay Settings']
    if not cfg['Delay Toggle'] then return 0 end
    local defaultDelay = cfg['Delay'] or 0.095
    local wc = cfg['Weapon Configuration']
    if wc and wc.Enabled then
        local cat = getWeaponCategory()
        local wcfg = wc[cat] or wc.Others
        return wcfg['Delay'] or defaultDelay
    end
    return defaultDelay
end

local function getCameraSmoothness(distance)
    local cfg = getgenv().gloryv2['Camera Aimbot']['Range Smoothing']
    if not cfg.Enabled then
        return getgenv().gloryv2['Camera Aimbot']['Smoothing'].X,
               getgenv().gloryv2['Camera Aimbot']['Smoothing'].Y
    end
    if distance <= 30 then return cfg.Close.X, cfg.Close.Y
    elseif distance <= 80 then return cfg.Medium.X, cfg.Medium.Y
    else return cfg.Far.X, cfg.Far.Y end
end

local function getSplitFOV(section)
    local fovData = getgenv().gloryv2[section].FOV
    local size = fovData.Size or fovData
    local cfg = {
        xLeft=size["X Left"],xRight=size["X Right"],
        yUpper=size["Y Upper"],yLower=size["Y Lower"],
        zLeft=size["Z Left"],zRight=size["Z Right"]
    }
    local wc = fovData["Weapon Configuration"]
    if wc and wc.Enabled then
        local cat = getWeaponCategory()
        local wcfg = wc[cat] or wc.Others
        cfg.xLeft=wcfg["X Left"] or cfg.xLeft; cfg.xRight=wcfg["X Right"] or cfg.xRight
        cfg.yUpper=wcfg["Y Upper"] or cfg.yUpper; cfg.yLower=wcfg["Y Lower"] or cfg.yLower
        cfg.zLeft=wcfg["Z Left"] or cfg.zLeft; cfg.zRight=wcfg["Z Right"] or cfg.zRight
    end
    return cfg
end

local function isMouseInSilentFOV()
    local root = targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not root then return false end
    local fov = getSplitFOV('Silent Aimbot')
    local center = camera:WorldToViewportPoint(root.Position)
    if center.Z <= 0 then return false end
    local halfX = (fov.xLeft+fov.xRight)*15
    local halfY = (fov.yUpper+fov.yLower)*15
    local mousePos = UserInputService:GetMouseLocation()
    return math.abs(mousePos.X-center.X) <= halfX and math.abs(mousePos.Y-center.Y) <= halfY
end

local function isMouseInTriggerFOV()
    local root = targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not root then return false end
    local fov = getSplitFOV('Trigger Bot')
    local center = camera:WorldToViewportPoint(root.Position)
    if center.Z <= 0 then return false end
    local halfX = (fov.xLeft+fov.xRight)*15
    local halfY = (fov.yUpper+fov.yLower)*15
    local mousePos = UserInputService:GetMouseLocation()
    return math.abs(mousePos.X-center.X) <= halfX and math.abs(mousePos.Y-center.Y) <= halfY
end

local pointsTbl, screensTbl, partsTbl, pointCache = {},{},{},{}
local lastFPS, frameTime = 60, 0
local MAX_POINTS, MIN_POINTS = 500, 350

local function calculateOptimalPoints(dist)
    frameTime = frameTime*0.92+(tick()-(frameTime+1/60))*0.08
    lastFPS = 1/(frameTime+1e-9)
    local base = dist<35 and 1200 or dist<75 and 1120 or 1020
    local raw = base*math.clamp(1400/(dist+25),0.75,2.3)*math.clamp(lastFPS/60*1.35,0.65,2.0)
    return math.clamp(math.floor(raw),MIN_POINTS,MAX_POINTS)
end

local generatePrecisePoints = LPH_NO_VIRTUALIZE(function(char)
    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return nil end
    local dist = (root.Position-camera.CFrame.Position).Magnitude
    local totalPoints = calculateOptimalPoints(dist)
    local pointsPerPart = math.max(160,math.floor(totalPoints/15))
    local parts = {}
    for _,name in ipairs(R15_PARTS) do
        local p = char:FindFirstChild(name)
        if p and p:IsA("BasePart") then table.insert(parts,p) end
    end
    if #parts==0 then return nil end
    table.clear(pointsTbl); table.clear(screensTbl); table.clear(partsTbl)
    local idx = 1
    local mousePos = UserInputService:GetMouseLocation()
    local mouseRay = camera:ViewportPointToRay(mousePos.X,mousePos.Y)
    local rayParams = RaycastParams.new()
    rayParams.FilterType = Enum.RaycastFilterType.Whitelist
    rayParams.FilterDescendantsInstances = {char}
    rayParams.IgnoreWater = true
    local rayResult = workspace:Raycast(mouseRay.Origin,mouseRay.Direction*5000,rayParams)
    if rayResult and rayResult.Instance and rayResult.Instance.Parent==char then
        local screen = camera:WorldToViewportPoint(rayResult.Position)
        if screen.Z>0 then
            pointsTbl[idx]=rayResult.Position; screensTbl[idx]=screen; partsTbl[idx]=rayResult.Instance; idx+=1
        end
    end
    for _,part in ipairs(parts) do
        local cf = part.CFrame
        local size = part.Size*0.5
        for i = 1,pointsPerPart do
            local u,v = math.random(),math.random()
            local theta = 2*math.pi*u
            local phi = math.acos(2*v-1)
            local r = 0.998+math.random()*0.004
            local localPos = Vector3.new(r*size.X*math.sin(phi)*math.cos(theta),r*size.Y*math.sin(phi)*math.sin(theta),r*size.Z*math.cos(phi))
            local worldPos = cf:PointToWorldSpace(localPos)
            local screen = camera:WorldToViewportPoint(worldPos)
            if screen.Z>0 then
                pointsTbl[idx]=worldPos; screensTbl[idx]=screen; partsTbl[idx]=part; idx+=1
                if idx>totalPoints then break end
            end
        end
        if idx>totalPoints then break end
    end
    return { points=pointsTbl,screens=screensTbl,partMap=partsTbl,count=idx-1,timestamp=tick(),rootPos=root.Position }
end)

local getPrecisePoint = LPH_NO_VIRTUALIZE(function(char)
    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return nil end
    local now = tick()
    local cache = pointCache[char]
    if cache then
        local age = now-cache.timestamp
        local moved = (root.Position-cache.rootPos).Magnitude
        if age>=0.016 or moved>=1.6 then cache=generatePrecisePoints(char); pointCache[char]=cache end
    else cache=generatePrecisePoints(char); pointCache[char]=cache end
    if not cache or cache.count==0 then return nil end
    local mouse = UserInputService:GetMouseLocation()
    local bestDistSq, bestIdx = math.huge, nil
    for i = 1,cache.count do
        local scr = cache.screens[i]
        if scr.Z>0 then
            local dx,dy = scr.X-mouse.X, scr.Y-mouse.Y
            local dsq = dx*dx+dy*dy
            if dsq<bestDistSq then bestDistSq=dsq; bestIdx=i end
        end
    end
    if not bestIdx or bestDistSq>160000 then return nil end
    local pred = getgenv().gloryv2['Silent Aimbot'].Prediction
    local finalPos = cache.points[bestIdx]+root.Velocity*Vector3.new(pred.X,pred.Y,pred.Z)
    return { Part=cache.partMap[bestIdx], Position=finalPos }
end)

local getCenterPoint = LPH_NO_VIRTUALIZE(function(character)
    local root = character:FindFirstChild("HumanoidRootPart")
    if not root then return nil end
    local mousePos = UserInputService:GetMouseLocation()
    local bestSq, bestIdx, bestPart = math.huge, nil, nil
    local points, screens = {}, {}
    for _,name in ipairs(R15_PARTS) do
        local part = character:FindFirstChild(name)
        if part and part:IsA("BasePart") then
            local half = part.Size*0.5
            local cf = part.CFrame
            for i = 1,15 do
                local t = i/15; local phi = 2.399*i; local sqrtT = math.sqrt(t)
                local u = (math.cos(phi)*sqrtT+1)*0.5; local v = (math.sin(phi)*sqrtT+1)*0.5
                u = math.clamp(u+(math.noise(i*0.618,tick()*0.03)-0.5)*0.05,0.02,0.98)
                v = math.clamp(v+(math.noise(tick()*0.03,i*0.618)-0.5)*0.05,0.02,0.98)
                local localPos = Vector3.new((u*2-1)*half.X,(v*2-1)*half.Y,half.Z*(math.random()>0.5 and 1 or -1))*0.98
                local world = cf:PointToWorldSpace(localPos)
                local screen = camera:WorldToViewportPoint(world)
                if screen.Z>0 then
                    local dx,dy = screen.X-mousePos.X, screen.Y-mousePos.Y
                    local dsq = dx*dx+dy*dy
                    if dsq<bestSq then
                        bestSq=dsq; bestIdx=#points+1; bestPart=part
                        points[bestIdx]=world; screens[bestIdx]=screen
                    end
                end
            end
        end
    end
    if not bestIdx then return nil end
    local pred = getgenv().gloryv2['Silent Aimbot'].Prediction
    return { Part=bestPart, Position=points[bestIdx]+root.Velocity*Vector3.new(pred.X,pred.Y,pred.Z) }
end)

local function getClosestPart(character)
    if not (character and character.Parent) then return nil end
    local mousePos = UserInputService:GetMouseLocation()
    local bestDist, bestPart = 1e9, nil
    for _,name in R15_PARTS do
        local part = character:FindFirstChild(name)
        if part and part:IsA("BasePart") then
            local screenPos = camera:WorldToViewportPoint(part.Position)
            if screenPos.Z>0 then
                local dist = (Vector2.new(screenPos.X,screenPos.Y)-mousePos).Magnitude
                if dist<bestDist then bestDist=dist; bestPart=part end
            end
        end
    end
    if bestPart then return {Part=bestPart,Position=bestPart.Position} end
    local root = character:FindFirstChild("HumanoidRootPart")
    return root and {Part=root,Position=root.Position}
end

local function getClosestBodyPart(character,isCamlock)
    local section = isCamlock and getgenv().gloryv2['Camera Aimbot'] or getgenv().gloryv2['Silent Aimbot']
    local hitPart = section.HitPart
    if hitPart=="Precise Point" then return getPrecisePoint(character)
    elseif hitPart=="Center Point" then return getCenterPoint(character)
    elseif hitPart=="Closest Part" then return getClosestPart(character)
    else local part=character:FindFirstChild(hitPart); return part and {Part=part,Position=part.Position} end
end

local function isTargetKnocked(target)
    local be = target.Character and target.Character:FindFirstChild("BodyEffects")
    local ko = be and be:FindFirstChild("K.O")
    return ko and ko.Value
end
local function isSelfKnocked()
    local be = localPlayer.Character and localPlayer.Character:FindFirstChild("BodyEffects")
    local ko = be and be:FindFirstChild("K.O")
    return ko and ko.Value
end
local function isTargetGrabbed(player)
    if not getgenv().gloryv2.Checks['Grabbed Check'] then return false end
    local char = player.Character
    if not char then return false end
    return char:FindFirstChild('GRABBING_CONSTRAINT') ~= nil
end
local function isSameCrew(target)
    if not getgenv().gloryv2.Checks['Crew Check'] then return false end
    local lc = localPlayer:GetAttribute("CrewID")
    local tc = target:GetAttribute("CrewID")
    return lc and tc and lc==tc
end
local function isVisible(origin,targetPart,targetCharacter)
    if not getgenv().gloryv2.Checks['Visible Check'] then return true end
    if not (targetPart and targetPart:IsA("BasePart")) then return false end
    local direction = targetPart.Position-origin
    local rayParams = RaycastParams.new()
    rayParams.FilterType = Enum.RaycastFilterType.Blacklist
    rayParams.FilterDescendantsInstances = {localPlayer.Character,targetCharacter}
    rayParams.IgnoreWater = true
    local result = Workspace:Raycast(origin,direction,rayParams)
    return not result or result.Instance:IsDescendantOf(targetCharacter)
end

local function getBestTarget()
    local closestPlayer, closestDist = nil, math.huge
    local mousePos = UserInputService:GetMouseLocation()
    for _,player in ipairs(Players:GetPlayers()) do
        if player ~= localPlayer and player.Character then
            local rootPart = player.Character:FindFirstChild("HumanoidRootPart")
            local be = player.Character:FindFirstChild("BodyEffects")
            local ko = be and be:FindFirstChild("K.O")
            local ff = player.Character:FindFirstChildOfClass("ForceField")
            if rootPart and
               (not getgenv().gloryv2.Checks['Knock Check'] or not ko or not ko.Value) and
               (not getgenv().gloryv2.Checks['Forcefield Check'] or not ff) and
               (not getgenv().gloryv2.Checks['Crew Check'] or not isSameCrew(player)) and
               (not getgenv().gloryv2.Checks['Grabbed Check'] or not isTargetGrabbed(player)) then
                local screenPos = camera:WorldToViewportPoint(rootPart.Position)
                if screenPos.Z>0 and (not getgenv().gloryv2.Checks['Visible Check'] or isVisible(camera.CFrame.Position,rootPart,player.Character)) then
                    local dist = (Vector2.new(screenPos.X,screenPos.Y)-mousePos).Magnitude
                    if dist<closestDist then closestDist=dist; closestPlayer=player end
                end
            end
        end
    end
    return closestPlayer
end

local function isMouseInTriggerHitbox()
    if not targetPlayer or not targetPlayer.Character then return false end
    local mousePos = UserInputService:GetMouseLocation()
    local ray = camera:ViewportPointToRay(mousePos.X,mousePos.Y)
    local rayParams = RaycastParams.new()
    rayParams.FilterType = Enum.RaycastFilterType.Whitelist
    rayParams.FilterDescendantsInstances = {targetPlayer.Character}
    rayParams.IgnoreWater = true
    local result = Workspace:Raycast(ray.Origin,ray.Direction*1000,rayParams)
    if result and result.Instance and result.Instance:IsDescendantOf(targetPlayer.Character) then
        local partName = result.Instance.Name
        for _,name in ipairs(R15_PARTS) do if partName==name then return true end end
    end
    return false
end

local function clearTargetIfInvalid()
    local function wipe()
        targetPlayer = nil
        pcall(function()
            if targetCache.Hitbox then targetCache.Hitbox:Destroy() end
            if targetCache.Box then targetCache.Box:Destroy() end
            if targetCache.Trigger then targetCache.Trigger:Destroy() end
            if targetCache.TriggerBox then targetCache.TriggerBox:Destroy() end
        end)
        camLockActive=false; camLockTarget=nil; camLockPart=nil
    end
    if not targetPlayer or not targetPlayer.Character then wipe(); return true end
    if getgenv().gloryv2.Checks['Self Knock Check'] and isSelfKnocked() then wipe(); return true end
    if getgenv().gloryv2.Checks['Knock Check'] and isTargetKnocked(targetPlayer) then wipe(); return true end
    local rootPart = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
    local ff = targetPlayer.Character:FindFirstChildOfClass("ForceField")
    if not rootPart or
       (getgenv().gloryv2.Checks['Forcefield Check'] and ff) or
       (getgenv().gloryv2.Checks['Crew Check'] and isSameCrew(targetPlayer)) or
       (getgenv().gloryv2.Checks['Grabbed Check'] and isTargetGrabbed(targetPlayer)) then
        wipe(); return true
    end
    return false
end

updateTargetVisuals = LPH_NO_VIRTUALIZE(function()
    local showSilent = getgenv().gloryv2['Silent Aimbot'].FOV['Show FOV']
    local showTrigger = getgenv().gloryv2['Trigger Bot'].FOV['Show FOV']
    if not targetPlayer or not targetPlayer.Character then
        pcall(function()
            if targetCache.Hitbox then targetCache.Hitbox:Destroy(); targetCache.Hitbox=nil end
            if targetCache.Box then targetCache.Box:Destroy(); targetCache.Box=nil end
            if targetCache.Trigger then targetCache.Trigger:Destroy(); targetCache.Trigger=nil end
            if targetCache.TriggerBox then targetCache.TriggerBox:Destroy(); targetCache.TriggerBox=nil end
        end)
        currentTargetPlayer=nil; return
    end
    local root = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not root then return end
    local upperTorso = targetPlayer.Character:FindFirstChild("UpperTorso")
    local basePos = upperTorso and upperTorso.Position or root.Position
    local look = root.CFrame.LookVector
    local facing = CFrame.lookAt(Vector3.new(),Vector3.new(look.X,0,look.Z))

    if showSilent then
        pcall(function() if targetCache.Hitbox then targetCache.Hitbox:Destroy() end if targetCache.Box then targetCache.Box:Destroy() end end)
        local fov = getSplitFOV('Silent Aimbot')
        local size = Vector3.new(fov.xLeft+fov.xRight,fov.yUpper+fov.yLower,fov.zLeft+fov.zRight)
        local offset = Vector3.new((fov.xRight-fov.xLeft)/2,(fov.yUpper-fov.yLower)/2,(fov.zRight-fov.zLeft)/2)
        local worldOffset = facing:VectorToWorldSpace(offset)
        targetCache.Hitbox = Instance.new("Part"); targetCache.Hitbox.Name="SilentHitbox_"..targetPlayer.Name
        targetCache.Hitbox.Anchored=true; targetCache.Hitbox.CanCollide=false; targetCache.Hitbox.Transparency=1
        targetCache.Hitbox.CanQuery=false; targetCache.Hitbox.Size=size
        targetCache.Hitbox.CFrame=CFrame.new(basePos+worldOffset)*facing; targetCache.Hitbox.Parent=Workspace
        targetCache.Box=Instance.new("BoxHandleAdornment"); targetCache.Box.Adornee=targetCache.Hitbox
        targetCache.Box.AlwaysOnTop=true; targetCache.Box.ZIndex=10; targetCache.Box.Transparency=0.7
        targetCache.Box.Size=size; targetCache.Box.Parent=targetCache.Hitbox
        targetCache.Box.Color3=isMouseInSilentFOV() and Color3.new(0,1,0) or Color3.new(1,0,0)
    else
        pcall(function() if targetCache.Hitbox then targetCache.Hitbox:Destroy(); targetCache.Hitbox=nil end if targetCache.Box then targetCache.Box:Destroy(); targetCache.Box=nil end end)
    end

    if showTrigger then
        pcall(function() if targetCache.Trigger then targetCache.Trigger:Destroy() end if targetCache.TriggerBox then targetCache.TriggerBox:Destroy() end end)
        local fov = getSplitFOV('Trigger Bot')
        local pred = getgenv().gloryv2['Trigger Bot'].Prediction
        local size = Vector3.new(fov.xLeft+fov.xRight,fov.yUpper+fov.yLower,fov.zLeft+fov.zRight)
        local offset = Vector3.new((fov.xRight-fov.xLeft)/2,(fov.yUpper-fov.yLower)/2,(fov.zRight-fov.zLeft)/2)
        local worldOffset = facing:VectorToWorldSpace(offset)
        local upperPos = upperTorso and upperTorso.Position or root.Position
        targetCache.Trigger=Instance.new("Part"); targetCache.Trigger.Name="TriggerHitbox_"..targetPlayer.Name
        targetCache.Trigger.Anchored=true; targetCache.Trigger.CanCollide=false; targetCache.Trigger.Transparency=1
        targetCache.Trigger.CanQuery=false; targetCache.Trigger.Size=size
        targetCache.Trigger.CFrame=CFrame.new(upperPos+worldOffset)*facing; targetCache.Trigger.Parent=Workspace
        targetCache.TriggerBox=Instance.new("BoxHandleAdornment"); targetCache.TriggerBox.Adornee=targetCache.Trigger
        targetCache.TriggerBox.AlwaysOnTop=true; targetCache.TriggerBox.ZIndex=10; targetCache.TriggerBox.Transparency=0.7
        targetCache.TriggerBox.Size=size; targetCache.TriggerBox.Parent=targetCache.Trigger
        targetCache.TriggerBox.Color3=isMouseInTriggerFOV() and Color3.new(0,1,0) or Color3.new(1,1,1)
    else
        pcall(function() if targetCache.Trigger then targetCache.Trigger:Destroy(); targetCache.Trigger=nil end if targetCache.TriggerBox then targetCache.TriggerBox:Destroy(); targetCache.TriggerBox=nil end end)
    end
    currentTargetPlayer=targetPlayer
end)

local function triggerbot()
    local Tool = localPlayer.Character:FindFirstChildOfClass("Tool")
    if Tool and Tool:IsDescendantOf(localPlayer.Character) and Tool.Name~='[Knife]' then
        for i=1,3 do Tool:Activate() end
    end
end

local function applySpeed()
    local cfg = getgenv().gloryv2["Speed Modifications"]
    if not cfg or not cfg.Enabled then return end
    local hum = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
    if not hum then return end
    local health = hum.Health
    local speed = 16
    if cfg["Low Health"] and health<=cfg["Low Health"]["Health Threshold"] then
        speed = speed*cfg["Low Health"]["Multiplier"]
    else speed = speed*cfg.Normal["Multiplier"] end
    hum.WalkSpeed = speed
end

local function hookHumanoid(humanoid)
    applySpeed()
    humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        if getgenv().gloryv2["Speed Modifications"].Enabled then applySpeed() end
    end)
    humanoid.HealthChanged:Connect(applySpeed)
end

localPlayer.CharacterAdded:Connect(function(char)
    local hum = char:WaitForChild("Humanoid",10)
    if hum then hookHumanoid(hum) end
end)
if localPlayer.Character then
    local hum = localPlayer.Character:FindFirstChildOfClass("Humanoid")
    if hum then hookHumanoid(hum) end
end

local selectPressed, camPressed, triggerPressed, speedPressed = false, false, false, false

UserInputService.InputBegan:Connect(LPH_NO_VIRTUALIZE(function(input,gameProcessed)
    if gameProcessed then return end
    local key = input.KeyCode
    local selectBind = getgenv().gloryv2["Binds"].Select
    local camBind = getgenv().gloryv2["Binds"]["Camera Aimbot"]
    local triggerBind = getgenv().gloryv2["Binds"].Triggerbot
    local speedBind = getgenv().gloryv2["Binds"].Speed
    local targetMode = getgenv().gloryv2['Targeting']['Target Mode']

    if key==Enum.KeyCode.LeftControl then leftCtrlHeld=true; return end

    if key==Enum.KeyCode[selectBind] and targetMode=='Select' then
        if not selectPressed then
            selectPressed=true
            if targetPlayer then
                targetPlayer=nil
                pcall(function()
                    if targetCache.Hitbox then targetCache.Hitbox:Destroy() end
                    if targetCache.Box then targetCache.Box:Destroy() end
                    if targetCache.Trigger then targetCache.Trigger:Destroy() end
                    if targetCache.TriggerBox then targetCache.TriggerBox:Destroy() end
                end)
            else
                targetPlayer=getBestTarget()
                if targetPlayer and targetPlayer.Character then updateTargetVisuals() end
            end
        end
    end

    if key==Enum.KeyCode[camBind] then
        if not camPressed then
            camPressed=true
            local mode = getgenv().gloryv2['Camera Aimbot'].Mode
            if mode=="Toggle" then
                camLockActive=not camLockActive
                if camLockActive then
                    camLockTarget=targetPlayer
                    if camLockTarget and camLockTarget.Character then
                        camLockPart=getClosestBodyPart(camLockTarget.Character,true)
                    end
                else camLockTarget=nil; camLockPart=nil end
            elseif mode=="Hold" then
                camLockHold=true; camLockActive=true; camLockTarget=targetPlayer
                if camLockTarget and camLockTarget.Character then
                    camLockPart=getClosestBodyPart(camLockTarget.Character,true)
                end
            end
        end
    end

    if key==Enum.KeyCode[triggerBind] then
        if not triggerPressed then
            triggerPressed=true
            local mode = getgenv().gloryv2['Trigger Bot'].Settings.Mode
            if mode=="Toggle" then triggerBotActive=not triggerBotActive
            elseif mode=="Hold" then triggerHold=true end
        end
    end

    if key==Enum.KeyCode[speedBind] then
        if not speedPressed then
            speedPressed=true
            local cfg = getgenv().gloryv2["Speed Modifications"]
            cfg.Enabled=not cfg.Enabled; applySpeed()
        end
    end

    if input.UserInputType==Enum.UserInputType.MouseButton2 then rightClickHeld=true end
end))

UserInputService.InputEnded:Connect(LPH_NO_VIRTUALIZE(function(input)
    if input.KeyCode==Enum.KeyCode.LeftControl then leftCtrlHeld=false end
    if input.UserInputType==Enum.UserInputType.MouseButton2 then rightClickHeld=false end
    local camBind = getgenv().gloryv2["Binds"]["Camera Aimbot"]
    local mode = getgenv().gloryv2['Camera Aimbot'].Mode
    if input.KeyCode==Enum.KeyCode[camBind] then
        camPressed=false
        if mode=="Hold" then camLockHold=false; camLockActive=false; camLockTarget=nil; camLockPart=nil end
    end
    if input.KeyCode==Enum.KeyCode[getgenv().gloryv2["Binds"].Triggerbot] then
        if getgenv().gloryv2['Trigger Bot'].Settings.Mode=="Hold" then triggerHold=false end
        triggerPressed=false
    end
    if input.KeyCode==Enum.KeyCode[getgenv().gloryv2["Binds"].Select] then selectPressed=false end
    if input.KeyCode==Enum.KeyCode[getgenv().gloryv2["Binds"].Speed] then speedPressed=false end
end))

RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function()
    local now = tick()
    clearTargetIfInvalid()
    if getgenv().gloryv2['Targeting']['Target Mode']=="Automatic" then
        targetPlayer=getBestTarget()
    end
    if getgenv().gloryv2['Trigger Bot'].Enabled and not leftCtrlHeld and targetPlayer and targetPlayer.Character then
        local root = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
        if root then
            local dist = (root.Position-camera.CFrame.Position).Magnitude
            if dist<=getgenv().gloryv2['Trigger Bot']['Max Range'] then
                if clearTargetIfInvalid() then return end
                local cfg = getgenv().gloryv2['Trigger Bot'].Settings
                local forceTrigger = getgenv().gloryv2['Targeting']['Target Mode']=="Select" and getgenv().gloryv2['Select Only Features']['Force Trigger']
                local active = forceTrigger or cfg.Mode=="Always" or (cfg.Mode=="Hold" and triggerHold) or (cfg.Mode=="Toggle" and triggerBotActive)
                if active then
                    local delay = getTriggerbotDelay()
                    if delay<=0 or (now-lastTriggerTime)>=delay then
                        local inRange = forceTrigger or (cfg.Type=="FOV" and isMouseInTriggerFOV()) or (cfg.Type=="Hitbox" and isMouseInTriggerHitbox())
                        if inRange then triggerbot(); lastTriggerTime=now end
                    end
                end
            end
        end
    end
    updateTargetVisuals()
end))

RunService.Heartbeat:Connect(LPH_NO_VIRTUALIZE(function(dt)
    local camcfg = getgenv().gloryv2['Camera Aimbot']
    if not (camcfg.Enabled and camLockActive and camLockTarget and camLockTarget.Character) then
        if camFOVCircle then camFOVCircle.Visible=false; camFOVCircle:Remove(); camFOVCircle=nil end
        lastMousePos=nil; return
    end
    if clearTargetIfInvalid() then return end
    local root = camLockTarget.Character:FindFirstChild("HumanoidRootPart")
    if not root then return end
    local distance = (root.Position-camera.CFrame.Position).Magnitude
    if distance>camcfg['Max Range'] then return end
    if getgenv().gloryv2.Checks["Self Knock Check"] and isSelfKnocked() then return end
    local cond = camcfg['Camera Aimbot Conditions']
    local zoom = (camera.CFrame.Position-camera.Focus.Position).Magnitude
    local isFP = zoom<1
    local allowedPerson = (cond['First Person'] and isFP) or (cond['Third Person'] and not isFP)
    local allowedClick = not cond['Right Click'] or rightClickHeld
    if not (allowedPerson and allowedClick) then return end
    local newPart = getClosestBodyPart(camLockTarget.Character,true)
    if not newPart then return end
    camLockPart = newPart
    local wallCheckOn = not cond['Wall']
    local currentlyVisible = not wallCheckOn or isVisible(camera.CFrame.Position,newPart.Part,camLockTarget.Character)
    local radius = tonumber(camcfg.FOV.Radius) or 155
    local mousePos = UserInputService:GetMouseLocation()
    lastMousePos=mousePos
    local screenPos = camera:WorldToViewportPoint(newPart.Position)
    local inFOV = screenPos.Z>0 and (Vector2.new(screenPos.X,screenPos.Y)-mousePos).Magnitude<=radius
    if currentlyVisible and inFOV then
        if tick()-camLastUpdate<CAM_UPDATE_RATE then return end
        camLastUpdate=tick()
        local targetPos = newPart.Position
        local pred = camcfg.Prediction
        if root and (pred.X~=0 or pred.Y~=0 or pred.Z~=0) then
            targetPos += root.Velocity*Vector3.new(pred.X,pred.Y,pred.Z)
        end
        local dist = (camera.CFrame.Position-root.Position).Magnitude
        local smoothX,smoothY = getCameraSmoothness(dist)
        local targetCFrame = CFrame.new(camera.CFrame.Position,targetPos)
        local hum = camcfg.Humanize
        if hum.Enabled and hum.Bezier then
            local scale = math.clamp(hum.Scale or 0.25,0,1)
            local chaos = scale*15
            local ctrl = camera.CFrame.Position:Lerp(targetPos,0.5)+Vector3.new(math.random(-chaos,chaos),math.random(-chaos,chaos),math.random(-chaos,chaos))
            local t = tick()%1
            local bez = camera.CFrame.Position:Lerp(ctrl,t):Lerp(targetPos,t)
            targetCFrame=CFrame.new(camera.CFrame.Position,bez)
            smoothX*=(1-scale*0.6); smoothY*=(1-scale*0.6)
        end
        local factorX = 1-math.exp(-smoothX*dt*60)
        local factorY = 1-math.exp(-smoothY*dt*60)
        camera.CFrame = camera.CFrame:Lerp(targetCFrame,math.max(factorX,factorY))
    end
    if camcfg.FOV['Show FOV'] then
        if not camFOVCircle then
            camFOVCircle=Drawing.new("Circle"); camFOVCircle.NumSides=32
            camFOVCircle.Thickness=2; camFOVCircle.Filled=false
            camFOVCircle.Transparency=0.9; camFOVCircle.Color=Color3.new(1,0,0)
            camFOVCircle.Visible=true
        end
        local now = tick()
        if now-camFOVLastUpdate>=CAM_FOV_UPDATE_RATE then
            camFOVLastUpdate=now
            camFOVCircle.Position=lastMousePos or Vector2.new(0,0)
            camFOVCircle.Radius=radius
            if currentlyVisible and inFOV then camFOVCircle.Color=Color3.new(0,1,0)
            elseif inFOV then camFOVCircle.Color=Color3.new(1,1,0)
            else camFOVCircle.Color=Color3.new(1,0,0) end
        end
    elseif camFOVCircle then
        camFOVCircle.Visible=false; camFOVCircle:Remove(); camFOVCircle=nil; lastMousePos=nil
    end
end))

local originalIndex
originalIndex = hookmetamethod(game,"__index",LPH_NO_VIRTUALIZE(function(self,key)
    if self==mouse and (key=="Hit" or key=="Target") then
        if getgenv().gloryv2["Silent Aimbot"].Enabled and targetPlayer and targetPlayer.Character then
            local root = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
            if root then
                local dist = (root.Position-camera.CFrame.Position).Magnitude
                if dist<=getgenv().gloryv2["Silent Aimbot"]["Max Range"] then
                    if clearTargetIfInvalid() then return originalIndex(self,key) end
                    local forceHit = getgenv().gloryv2["Targeting"]["Target Mode"]=="Select" and getgenv().gloryv2["Select Only Features"]["Force Hit"]
                    if forceHit then
                        local head = targetPlayer.Character:FindFirstChild("Head")
                        if head and (not getgenv().gloryv2.Checks["Visible Check"] or isVisible(camera.CFrame.Position,head,targetPlayer.Character)) then
                            local ac = getgenv().gloryv2["Anti Curve"]
                            local ok = true
                            if ac.Enabled then
                                local dir = camera.CFrame.LookVector
                                local to = (head.Position-camera.CFrame.Position).Unit
                                local angle = math.deg(math.acos(math.clamp(dir:Dot(to),-1,1)))
                                local maxAng = ac.Angle or 0.5
                                if ac["Weapon Configuration"].Enabled then
                                    local tool = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Tool")
                                    if tool then
                                        local n = tool.Name:gsub("[%[%]]","")
                                        if ShotgunNames[n] then maxAng=ac["Weapon Configuration"].Shotguns.Angle or maxAng
                                        elseif PistolNames[n] then maxAng=ac["Weapon Configuration"].Pistols.Angle or maxAng
                                        elseif AutomaticNames[n] then maxAng=ac["Weapon Configuration"].Automatics.Angle or maxAng
                                        elseif RifleNames[n] then maxAng=ac["Weapon Configuration"].Rifles.Angle or maxAng
                                        else maxAng=ac["Weapon Configuration"].Others.Angle or maxAng end
                                    end
                                end
                                if angle>maxAng then ok=false end
                            end
                            if ok then
                                if key=="Hit" then return CFrame.new(head.Position) end
                                if key=="Target" then return head end
                            end
                        end
                        return originalIndex(self,key)
                    end
                    if isMouseInSilentFOV() then
                        local hit = getClosestBodyPart(targetPlayer.Character,false)
                        if hit and hit.Part and (not getgenv().gloryv2.Checks["Visible Check"] or isVisible(camera.CFrame.Position,hit.Part,targetPlayer.Character)) then
                            local ac = getgenv().gloryv2["Anti Curve"]
                            local ok = true
                            if ac.Enabled then
                                local dir = camera.CFrame.LookVector
                                local to = (hit.Position-camera.CFrame.Position).Unit
                                local angle = math.deg(math.acos(math.clamp(dir:Dot(to),-1,1)))
                                local maxAng = ac.Angle or 0.5
                                if ac["Weapon Configuration"].Enabled then
                                    local tool = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Tool")
                                    if tool then
                                        local n = tool.Name:gsub("[%[%]]","")
                                        if ShotgunNames[n] then maxAng=ac["Weapon Configuration"].Shotguns.Angle or maxAng
                                        elseif PistolNames[n] then maxAng=ac["Weapon Configuration"].Pistols.Angle or maxAng
                                        elseif AutomaticNames[n] then maxAng=ac["Weapon Configuration"].Automatics.Angle or maxAng
                                        elseif RifleNames[n] then maxAng=ac["Weapon Configuration"].Rifles.Angle or maxAng
                                        else maxAng=ac["Weapon Configuration"].Others.Angle or maxAng end
                                    end
                                end
                                if angle>maxAng then ok=false end
                            end
                            if ok then
                                if key=="Hit" then return CFrame.new(hit.Position) end
                                if key=="Target" then return hit.Part end
                            end
                        end
                    end
                end
            end
        end
    end
    return originalIndex(self,key)
end))

local originalRandom = math.random
originalRandom = hookfunction(math.random,LPH_NO_VIRTUALIZE(function(...)
    local args={...}
    if checkcaller() then return originalRandom(...) end
    local isSpreadCall = false
    if #args==0 then isSpreadCall=true
    elseif #args==2 and type(args[1])=="number" and type(args[2])=="number" then
        local a,b=args[1],args[2]
        if (a==-0.1 and b==0.05) or (a>=-0.15 and a<=-0.05 and b>=0.03 and b<=0.07) then isSpreadCall=true end
    elseif #args==1 and type(args[1])=="number" then
        local a=args[1]
        if a==-0.1 or a==-0.05 or (a>=-0.15 and a<=-0.03) then
            if not getgenv().gloryv2 or not getgenv().gloryv2['Spread Modifications'] or not getgenv().gloryv2['Spread Modifications'].Enabled then return originalRandom(...) end
            isSpreadCall=true
        end
    end
    if not isSpreadCall then return originalRandom(...) end
    local spreadMods = getgenv().gloryv2 and getgenv().gloryv2['Spread Modifications']
    if not spreadMods or not spreadMods.Enabled then return originalRandom(...) end
    local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    local tool = character:FindFirstChildOfClass("Tool")
    local toolName = tool and tool.Name or ""
    toolName = toolName:gsub("%[",""):gsub("%]","")
    local weaponConfig = spreadMods[toolName]
    if not weaponConfig then return originalRandom(...) end
    local multiplier = 1
    if spreadMods.Mode=="Randomized" then
        local min = math.clamp(tonumber(weaponConfig.Min) or 0,0,1)
        local max = math.clamp(tonumber(weaponConfig.Max) or 1,0,1)
        if min>max then min,max=max,min end
        multiplier = min+(originalRandom()*(max-min))
    end
    local originalValue = originalRandom(...)
    return originalValue*multiplier
end))

Rayfield:Notify({
    Title   = "Glory V2 Loaded",
    Content = "All systems active. Stay safe.",
    Duration = 5,
    Image   = 4483362458
})
