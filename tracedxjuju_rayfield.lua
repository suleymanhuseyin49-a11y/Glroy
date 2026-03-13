-- TracedxJuju Collab | Rayfield UI Rebuild
-- Original script by traced | UI rebuild

local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- ============================================================
--  SERVICES & LOCALS
-- ============================================================
local Players         = game:GetService("Players")
local RunService      = game:GetService("RunService")
local UserInputService= game:GetService("UserInputService")
local TweenService    = game:GetService("TweenService")
local Workspace       = game:GetService("Workspace")
local Lighting        = game:GetService("Lighting")
local lp             = Players.LocalPlayer
local camera         = Workspace.CurrentCamera

-- ============================================================
--  CONFIG TABLE (mirrors original script settings)
-- ============================================================
local cfg = {
    -- ESP
    esp_enabled        = true,
    esp_boxes          = true,
    esp_names          = true,
    esp_health_bar     = true,
    esp_armor_bar      = true,
    esp_tracers        = false,
    esp_icons          = false,
    esp_knocked        = true,
    esp_distance       = true,
    esp_max_distance   = 750,
    esp_use_display    = true,
    esp_font           = 2,
    esp_text_size      = 13,

    -- ESP Colors
    esp_box_color_enemy    = Color3.fromRGB(255, 60,  60),
    esp_box_color_friendly = Color3.fromRGB(60,  255, 60),
    esp_name_color_enemy   = Color3.fromRGB(255, 255, 255),
    esp_hp_bar_color       = Color3.fromRGB(60,  255, 60),
    esp_armor_bar_color    = Color3.fromRGB(80,  180, 255),
    esp_outline_color      = Color3.fromRGB(0,   0,   0),
    esp_box_outline_trans  = 0,
    esp_box_fill_trans     = 0.7,
    esp_knocked_color      = Color3.fromRGB(180, 180, 180),

    -- Highlight
    highlight_enabled      = false,
    highlight_depth        = Enum.HighlightDepthMode.AlwaysOnTop,
    highlight_fill_color   = Color3.fromRGB(255, 60, 60),
    highlight_fill_trans   = 0.6,
    highlight_outline_color= Color3.fromRGB(255, 60, 60),
    highlight_outline_trans= 0,

    -- Aimbot / Ragebot
    aimbot_enabled      = false,
    aimbot_fov          = 150,
    aimbot_fov_visible  = false,
    aimbot_max_distance = 750,
    aimbot_target_mode  = "Closest to Mouse", -- "Closest to Mouse" | "Random" | "Closest Player"
    aimbot_team_check   = true,
    aimbot_knocked_check= true,
    aimbot_ff_check     = true,
    aimbot_grab_check   = true,
    aimbot_nospace      = true,
    aimbot_wallcheck    = false,
    aimbot_hitpart      = "Head",    -- "Head" | "HumanoidRootPart" | "UpperTorso"

    -- Silent Aim
    silent_aim_enabled  = false,
    silent_aim_fov      = 150,
    silent_aim_hitpart  = "Head",
    silent_aim_max_dist = 750,

    -- Camera Aimbot
    cam_aimbot_enabled  = false,
    cam_aimbot_fov      = 165,
    cam_aimbot_smooth_x = 0.587,
    cam_aimbot_smooth_y = 0.539,
    cam_aimbot_mode     = "Hold",    -- "Hold" | "Toggle"
    cam_aimbot_hitpart  = "Head",
    cam_aimbot_fp_only  = true,
    cam_aimbot_rclick   = true,
    cam_aimbot_humanize = true,
    cam_aimbot_bezier   = false,
    cam_aimbot_scale    = 0.009,
    cam_fov_visible     = false,

    -- Triggerbot
    trigger_enabled     = false,
    trigger_mode        = "Hold",    -- "Hold" | "Toggle" | "Always"
    trigger_type        = "FOV",     -- "FOV" | "Hitbox"
    trigger_delay       = 0,
    trigger_max_dist    = 250,
    trigger_fov_visible = false,
    trigger_weapon_cfg  = true,

    -- Anti-Aim
    antiaim_enabled     = false,
    antiaim_pitch       = 0,         -- degrees
    antiaim_yaw         = 0,

    -- Chams (character shader)
    chams_enabled       = false,
    chams_color         = Color3.fromRGB(255, 60, 60),
    chams_transparency  = 0,

    -- Atmosphere
    atmos_enabled       = false,
    atmos_color         = Color3.fromRGB(127, 127, 127),
    atmos_density       = 0,
    atmos_glare         = 0,
    atmos_haze          = 0,

    -- Skybox
    skybox_enabled      = false,
    skybox_value        = "default",

    -- Speed / Jump
    speed_enabled       = false,
    speed_mult          = 8.8,
    speed_low_hp        = false,
    speed_low_threshold = 35,
    speed_low_mult      = 1.8,
    jump_enabled        = false,
    jump_power          = 75,
    remove_slowdowns    = false,
    remove_jump_cooldown= false,

    -- Player / Misc
    inf_ammo            = false,
    no_recoil           = false,
    rapid_fire          = false,
    auto_reload         = false,
    mod_detector        = true,
    anti_ragdoll        = false,
}

-- ============================================================
--  RAYFIELD WINDOW
-- ============================================================
local Window = Rayfield:CreateWindow({
    Name            = "TracedxJuju",
    Icon            = 0,
    LoadingTitle    = "TracedxJuju",
    LoadingSubtitle = "by traced",
    Theme           = "Default",
    DisableRayfieldPrompts  = false,
    DisableBuildWarnings    = false,
    ConfigurationSaving     = { Enabled = true, FileName = "TracedxJuju" },
    Discord                 = { Enabled = false },
    KeySystem               = false,
})

-- ============================================================
--  TAB: ESP
-- ============================================================
local ESPTab = Window:CreateTab("ESP", 4483362458)
ESPTab:CreateSection("General")

ESPTab:CreateToggle({ Name="ESP Enabled", CurrentValue=cfg.esp_enabled, Flag="ESPEnabled",
    Callback=function(v) cfg.esp_enabled=v end })

ESPTab:CreateToggle({ Name="Boxes", CurrentValue=cfg.esp_boxes, Flag="ESPBoxes",
    Callback=function(v) cfg.esp_boxes=v end })

ESPTab:CreateToggle({ Name="Names", CurrentValue=cfg.esp_names, Flag="ESPNames",
    Callback=function(v) cfg.esp_names=v end })

ESPTab:CreateToggle({ Name="Health Bar", CurrentValue=cfg.esp_health_bar, Flag="ESPHealthBar",
    Callback=function(v) cfg.esp_health_bar=v end })

ESPTab:CreateToggle({ Name="Armor Bar", CurrentValue=cfg.esp_armor_bar, Flag="ESPArmorBar",
    Callback=function(v) cfg.esp_armor_bar=v end })

ESPTab:CreateToggle({ Name="Tracers", CurrentValue=cfg.esp_tracers, Flag="ESPTracers",
    Callback=function(v) cfg.esp_tracers=v end })

ESPTab:CreateToggle({ Name="Icons (Tool)", CurrentValue=cfg.esp_icons, Flag="ESPIcons",
    Callback=function(v) cfg.esp_icons=v end })

ESPTab:CreateToggle({ Name="Show Knocked", CurrentValue=cfg.esp_knocked, Flag="ESPKnocked",
    Callback=function(v) cfg.esp_knocked=v end })

ESPTab:CreateToggle({ Name="Show Distance", CurrentValue=cfg.esp_distance, Flag="ESPDist",
    Callback=function(v) cfg.esp_distance=v end })

ESPTab:CreateToggle({ Name="Display Name", CurrentValue=cfg.esp_use_display, Flag="ESPDisplay",
    Callback=function(v) cfg.esp_use_display=v end })

ESPTab:CreateSlider({ Name="Max Distance", Range={50,2000}, Increment=50, Suffix="studs",
    CurrentValue=cfg.esp_max_distance, Flag="ESPMaxDist",
    Callback=function(v) cfg.esp_max_distance=v end })

ESPTab:CreateSlider({ Name="Text Size", Range={8,24}, Increment=1,
    CurrentValue=cfg.esp_text_size, Flag="ESPTextSize",
    Callback=function(v) cfg.esp_text_size=v end })

ESPTab:CreateSection("Colors")

ESPTab:CreateColorPicker({ Name="Enemy Box Color", Color=cfg.esp_box_color_enemy, Flag="ESPBoxEnemy",
    Callback=function(v) cfg.esp_box_color_enemy=v end })

ESPTab:CreateColorPicker({ Name="Friendly Box Color", Color=cfg.esp_box_color_friendly, Flag="ESPBoxFriendly",
    Callback=function(v) cfg.esp_box_color_friendly=v end })

ESPTab:CreateColorPicker({ Name="Name Color", Color=cfg.esp_name_color_enemy, Flag="ESPNameColor",
    Callback=function(v) cfg.esp_name_color_enemy=v end })

ESPTab:CreateColorPicker({ Name="HP Bar Color", Color=cfg.esp_hp_bar_color, Flag="ESPHPColor",
    Callback=function(v) cfg.esp_hp_bar_color=v end })

ESPTab:CreateColorPicker({ Name="Armor Bar Color", Color=cfg.esp_armor_bar_color, Flag="ESPArmorColor",
    Callback=function(v) cfg.esp_armor_bar_color=v end })

ESPTab:CreateColorPicker({ Name="Knocked Color", Color=cfg.esp_knocked_color, Flag="ESPKnockedColor",
    Callback=function(v) cfg.esp_knocked_color=v end })

ESPTab:CreateSection("Highlight")

ESPTab:CreateToggle({ Name="Highlight Enabled", CurrentValue=cfg.highlight_enabled, Flag="HighlightEnabled",
    Callback=function(v) cfg.highlight_enabled=v end })

ESPTab:CreateColorPicker({ Name="Fill Color", Color=cfg.highlight_fill_color, Flag="HLFill",
    Callback=function(v) cfg.highlight_fill_color=v end })

ESPTab:CreateColorPicker({ Name="Outline Color", Color=cfg.highlight_outline_color, Flag="HLOutline",
    Callback=function(v) cfg.highlight_outline_color=v end })

ESPTab:CreateSlider({ Name="Fill Transparency", Range={0,1}, Increment=0.05,
    CurrentValue=cfg.highlight_fill_trans, Flag="HLFillTrans",
    Callback=function(v) cfg.highlight_fill_trans=v end })

ESPTab:CreateSlider({ Name="Outline Transparency", Range={0,1}, Increment=0.05,
    CurrentValue=cfg.highlight_outline_trans, Flag="HLOutlineTrans",
    Callback=function(v) cfg.highlight_outline_trans=v end })

ESPTab:CreateDropdown({ Name="Depth Mode",
    Options={"AlwaysOnTop","Occluded"},
    CurrentOption={"AlwaysOnTop"}, Flag="HLDepth",
    Callback=function(v)
        cfg.highlight_depth = v[1]=="AlwaysOnTop"
            and Enum.HighlightDepthMode.AlwaysOnTop
            or  Enum.HighlightDepthMode.Occluded
    end })

-- ============================================================
--  TAB: AIMBOT
-- ============================================================
local AimTab = Window:CreateTab("Aimbot", 4483362458)
AimTab:CreateSection("Ragebot")

AimTab:CreateToggle({ Name="Aimbot Enabled", CurrentValue=cfg.aimbot_enabled, Flag="AimbotEnabled",
    Callback=function(v) cfg.aimbot_enabled=v end })

AimTab:CreateSlider({ Name="FOV Radius", Range={10,500}, Increment=5,
    CurrentValue=cfg.aimbot_fov, Flag="AimbotFOV",
    Callback=function(v) cfg.aimbot_fov=v end })

AimTab:CreateToggle({ Name="Show FOV Circle", CurrentValue=cfg.aimbot_fov_visible, Flag="AimbotFOVVis",
    Callback=function(v) cfg.aimbot_fov_visible=v end })

AimTab:CreateSlider({ Name="Max Distance", Range={50,2000}, Increment=25, Suffix="studs",
    CurrentValue=cfg.aimbot_max_distance, Flag="AimbotMaxDist",
    Callback=function(v) cfg.aimbot_max_distance=v end })

AimTab:CreateDropdown({ Name="Target Mode",
    Options={"Closest to Mouse","Random","Closest Player"},
    CurrentOption={cfg.aimbot_target_mode}, Flag="AimbotTargetMode",
    Callback=function(v) cfg.aimbot_target_mode=v[1] end })

AimTab:CreateDropdown({ Name="Hit Part",
    Options={"Head","HumanoidRootPart","UpperTorso","LowerTorso"},
    CurrentOption={cfg.aimbot_hitpart}, Flag="AimbotHitPart",
    Callback=function(v) cfg.aimbot_hitpart=v[1] end })

AimTab:CreateSection("Checks")

AimTab:CreateToggle({ Name="Team Check", CurrentValue=cfg.aimbot_team_check, Flag="AimTeamCheck",
    Callback=function(v) cfg.aimbot_team_check=v end })

AimTab:CreateToggle({ Name="Knocked Check", CurrentValue=cfg.aimbot_knocked_check, Flag="AimKnockCheck",
    Callback=function(v) cfg.aimbot_knocked_check=v end })

AimTab:CreateToggle({ Name="Forcefield Check", CurrentValue=cfg.aimbot_ff_check, Flag="AimFFCheck",
    Callback=function(v) cfg.aimbot_ff_check=v end })

AimTab:CreateToggle({ Name="Grab Check", CurrentValue=cfg.aimbot_grab_check, Flag="AimGrabCheck",
    Callback=function(v) cfg.aimbot_grab_check=v end })

AimTab:CreateToggle({ Name="No Space Check", CurrentValue=cfg.aimbot_nospace, Flag="AimNoSpace",
    Callback=function(v) cfg.aimbot_nospace=v end })

AimTab:CreateToggle({ Name="Wall Check", CurrentValue=cfg.aimbot_wallcheck, Flag="AimWallCheck",
    Callback=function(v) cfg.aimbot_wallcheck=v end })

AimTab:CreateSection("Silent Aim")

AimTab:CreateToggle({ Name="Silent Aim", CurrentValue=cfg.silent_aim_enabled, Flag="SilentAim",
    Callback=function(v) cfg.silent_aim_enabled=v end })

AimTab:CreateSlider({ Name="Silent FOV", Range={10,500}, Increment=5,
    CurrentValue=cfg.silent_aim_fov, Flag="SilentFOV",
    Callback=function(v) cfg.silent_aim_fov=v end })

AimTab:CreateDropdown({ Name="Silent Hit Part",
    Options={"Head","HumanoidRootPart","UpperTorso"},
    CurrentOption={cfg.silent_aim_hitpart}, Flag="SilentHitPart",
    Callback=function(v) cfg.silent_aim_hitpart=v[1] end })

AimTab:CreateSlider({ Name="Silent Max Dist", Range={50,2000}, Increment=25, Suffix="studs",
    CurrentValue=cfg.silent_aim_max_dist, Flag="SilentMaxDist",
    Callback=function(v) cfg.silent_aim_max_dist=v end })

AimTab:CreateSection("Camera Aimbot")

AimTab:CreateToggle({ Name="Camera Aimbot", CurrentValue=cfg.cam_aimbot_enabled, Flag="CamAimbot",
    Callback=function(v) cfg.cam_aimbot_enabled=v end })

AimTab:CreateDropdown({ Name="Cam Mode",
    Options={"Hold","Toggle"},
    CurrentOption={cfg.cam_aimbot_mode}, Flag="CamMode",
    Callback=function(v) cfg.cam_aimbot_mode=v[1] end })

AimTab:CreateSlider({ Name="Cam FOV", Range={10,500}, Increment=5,
    CurrentValue=cfg.cam_aimbot_fov, Flag="CamFOV",
    Callback=function(v) cfg.cam_aimbot_fov=v end })

AimTab:CreateToggle({ Name="Show Cam FOV", CurrentValue=cfg.cam_fov_visible, Flag="CamFOVVis",
    Callback=function(v) cfg.cam_fov_visible=v end })

AimTab:CreateSlider({ Name="Smooth X", Range={0,2}, Increment=0.001,
    CurrentValue=cfg.cam_aimbot_smooth_x, Flag="CamSmoothX",
    Callback=function(v) cfg.cam_aimbot_smooth_x=v end })

AimTab:CreateSlider({ Name="Smooth Y", Range={0,2}, Increment=0.001,
    CurrentValue=cfg.cam_aimbot_smooth_y, Flag="CamSmoothY",
    Callback=function(v) cfg.cam_aimbot_smooth_y=v end })

AimTab:CreateToggle({ Name="First Person Only", CurrentValue=cfg.cam_aimbot_fp_only, Flag="CamFP",
    Callback=function(v) cfg.cam_aimbot_fp_only=v end })

AimTab:CreateToggle({ Name="Require Right Click", CurrentValue=cfg.cam_aimbot_rclick, Flag="CamRClick",
    Callback=function(v) cfg.cam_aimbot_rclick=v end })

AimTab:CreateToggle({ Name="Humanize", CurrentValue=cfg.cam_aimbot_humanize, Flag="CamHumanize",
    Callback=function(v) cfg.cam_aimbot_humanize=v end })

AimTab:CreateToggle({ Name="Bezier Curve", CurrentValue=cfg.cam_aimbot_bezier, Flag="CamBezier",
    Callback=function(v) cfg.cam_aimbot_bezier=v end })

AimTab:CreateSlider({ Name="Humanize Scale", Range={0,0.1}, Increment=0.001,
    CurrentValue=cfg.cam_aimbot_scale, Flag="CamScale",
    Callback=function(v) cfg.cam_aimbot_scale=v end })

-- ============================================================
--  TAB: TRIGGERBOT
-- ============================================================
local TrigTab = Window:CreateTab("Triggerbot", 4483362458)
TrigTab:CreateSection("Triggerbot")

TrigTab:CreateToggle({ Name="Triggerbot", CurrentValue=cfg.trigger_enabled, Flag="TrigEnabled",
    Callback=function(v) cfg.trigger_enabled=v end })

TrigTab:CreateDropdown({ Name="Mode",
    Options={"Hold","Toggle","Always"},
    CurrentOption={cfg.trigger_mode}, Flag="TrigMode",
    Callback=function(v) cfg.trigger_mode=v[1] end })

TrigTab:CreateDropdown({ Name="Type",
    Options={"FOV","Hitbox"},
    CurrentOption={cfg.trigger_type}, Flag="TrigType",
    Callback=function(v) cfg.trigger_type=v[1] end })

TrigTab:CreateSlider({ Name="Base Delay", Range={0,0.5}, Increment=0.001, Suffix="s",
    CurrentValue=cfg.trigger_delay, Flag="TrigDelay",
    Callback=function(v) cfg.trigger_delay=v end })

TrigTab:CreateSlider({ Name="Max Distance", Range={50,1000}, Increment=10, Suffix="studs",
    CurrentValue=cfg.trigger_max_dist, Flag="TrigDist",
    Callback=function(v) cfg.trigger_max_dist=v end })

TrigTab:CreateToggle({ Name="Weapon Delay Config", CurrentValue=cfg.trigger_weapon_cfg, Flag="TrigWeaponCfg",
    Callback=function(v) cfg.trigger_weapon_cfg=v end })

TrigTab:CreateToggle({ Name="Show FOV", CurrentValue=cfg.trigger_fov_visible, Flag="TrigFOVVis",
    Callback=function(v) cfg.trigger_fov_visible=v end })

-- ============================================================
--  TAB: MOVEMENT
-- ============================================================
local MovTab = Window:CreateTab("Movement", 4483362458)
MovTab:CreateSection("Speed")

MovTab:CreateToggle({ Name="Speed Hack", CurrentValue=cfg.speed_enabled, Flag="SpeedEnabled",
    Callback=function(v)
        cfg.speed_enabled=v
        local hum = lp.Character and lp.Character:FindFirstChildOfClass("Humanoid")
        if hum then hum.WalkSpeed = v and (16*cfg.speed_mult) or 16 end
    end })

MovTab:CreateSlider({ Name="Speed Multiplier", Range={1,20}, Increment=0.1,
    CurrentValue=cfg.speed_mult, Flag="SpeedMult",
    Callback=function(v)
        cfg.speed_mult=v
        if cfg.speed_enabled then
            local hum = lp.Character and lp.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum.WalkSpeed=16*v end
        end
    end })

MovTab:CreateToggle({ Name="Low HP Speed Boost", CurrentValue=cfg.speed_low_hp, Flag="SpeedLowHP",
    Callback=function(v) cfg.speed_low_hp=v end })

MovTab:CreateSlider({ Name="Low HP Threshold", Range={1,100}, Increment=1, Suffix="HP",
    CurrentValue=cfg.speed_low_threshold, Flag="SpeedLowThresh",
    Callback=function(v) cfg.speed_low_threshold=v end })

MovTab:CreateSlider({ Name="Low HP Multiplier", Range={1,10}, Increment=0.1,
    CurrentValue=cfg.speed_low_mult, Flag="SpeedLowMult",
    Callback=function(v) cfg.speed_low_mult=v end })

MovTab:CreateSection("Jump")

MovTab:CreateToggle({ Name="Jump Power Hack", CurrentValue=cfg.jump_enabled, Flag="JumpEnabled",
    Callback=function(v)
        cfg.jump_enabled=v
        local hum = lp.Character and lp.Character:FindFirstChildOfClass("Humanoid")
        if hum then hum.JumpPower = v and cfg.jump_power or 50 end
    end })

MovTab:CreateSlider({ Name="Jump Power", Range={50,500}, Increment=5,
    CurrentValue=cfg.jump_power, Flag="JumpPower",
    Callback=function(v)
        cfg.jump_power=v
        if cfg.jump_enabled then
            local hum = lp.Character and lp.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum.JumpPower=v end
        end
    end })

MovTab:CreateToggle({ Name="Remove Slowdowns", CurrentValue=cfg.remove_slowdowns, Flag="RemoveSlowdowns",
    Callback=function(v) cfg.remove_slowdowns=v end })

MovTab:CreateToggle({ Name="Remove Jump Cooldown", CurrentValue=cfg.remove_jump_cooldown, Flag="RemoveJumpCD",
    Callback=function(v) cfg.remove_jump_cooldown=v end })

-- ============================================================
--  TAB: ANTI-AIM
-- ============================================================
local AATab = Window:CreateTab("Anti-Aim", 4483362458)
AATab:CreateSection("Anti-Aim")

AATab:CreateToggle({ Name="Anti-Aim Enabled", CurrentValue=cfg.antiaim_enabled, Flag="AAEnabled",
    Callback=function(v) cfg.antiaim_enabled=v end })

AATab:CreateSlider({ Name="Pitch", Range={-90,90}, Increment=1, Suffix="°",
    CurrentValue=cfg.antiaim_pitch, Flag="AAPitch",
    Callback=function(v) cfg.antiaim_pitch=v end })

AATab:CreateSlider({ Name="Yaw", Range={-180,180}, Increment=1, Suffix="°",
    CurrentValue=cfg.antiaim_yaw, Flag="AAYaw",
    Callback=function(v) cfg.antiaim_yaw=v end })

-- ============================================================
--  TAB: VISUALS
-- ============================================================
local VisTab = Window:CreateTab("Visuals", 4483362458)
VisTab:CreateSection("Chams")

VisTab:CreateToggle({ Name="Chams", CurrentValue=cfg.chams_enabled, Flag="ChamsEnabled",
    Callback=function(v) cfg.chams_enabled=v end })

VisTab:CreateColorPicker({ Name="Chams Color", Color=cfg.chams_color, Flag="ChamsColor",
    Callback=function(v) cfg.chams_color=v end })

VisTab:CreateSlider({ Name="Chams Transparency", Range={0,1}, Increment=0.05,
    CurrentValue=cfg.chams_transparency, Flag="ChamsTrans",
    Callback=function(v) cfg.chams_transparency=v end })

VisTab:CreateSection("Atmosphere")

VisTab:CreateToggle({ Name="Custom Atmosphere", CurrentValue=cfg.atmos_enabled, Flag="AtmosEnabled",
    Callback=function(v)
        cfg.atmos_enabled=v
        if not v then
            local atm = Lighting:FindFirstChildOfClass("Atmosphere")
            if atm then atm:Destroy() end
        end
    end })

VisTab:CreateColorPicker({ Name="Atmosphere Color", Color=cfg.atmos_color, Flag="AtmosColor",
    Callback=function(v)
        cfg.atmos_color=v
        local atm = Lighting:FindFirstChildOfClass("Atmosphere")
        if atm then atm.Color=v end
    end })

VisTab:CreateSlider({ Name="Density", Range={0,1}, Increment=0.01,
    CurrentValue=cfg.atmos_density, Flag="AtmosDensity",
    Callback=function(v)
        cfg.atmos_density=v
        local atm = Lighting:FindFirstChildOfClass("Atmosphere")
        if atm then atm.Density=v end
    end })

VisTab:CreateSlider({ Name="Glare", Range={0,1}, Increment=0.01,
    CurrentValue=cfg.atmos_glare, Flag="AtmosGlare",
    Callback=function(v)
        cfg.atmos_glare=v
        local atm = Lighting:FindFirstChildOfClass("Atmosphere")
        if atm then atm.Glare=v end
    end })

VisTab:CreateSlider({ Name="Haze", Range={0,10}, Increment=0.1,
    CurrentValue=cfg.atmos_haze, Flag="AtmosHaze",
    Callback=function(v)
        cfg.atmos_haze=v
        local atm = Lighting:FindFirstChildOfClass("Atmosphere")
        if atm then atm.Haze=v end
    end })

VisTab:CreateSection("Skybox")

VisTab:CreateToggle({ Name="Custom Skybox", CurrentValue=cfg.skybox_enabled, Flag="SkyboxEnabled",
    Callback=function(v)
        cfg.skybox_enabled=v
        if not v then
            local sky = Lighting:FindFirstChildOfClass("Sky")
            if sky then sky:Destroy() end
        end
    end })

-- ============================================================
--  TAB: MISC
-- ============================================================
local MiscTab = Window:CreateTab("Misc", 4483362458)
MiscTab:CreateSection("Weapon")

MiscTab:CreateToggle({ Name="Infinite Ammo", CurrentValue=cfg.inf_ammo, Flag="InfAmmo",
    Callback=function(v) cfg.inf_ammo=v end })

MiscTab:CreateToggle({ Name="No Recoil", CurrentValue=cfg.no_recoil, Flag="NoRecoil",
    Callback=function(v) cfg.no_recoil=v end })

MiscTab:CreateToggle({ Name="Rapid Fire", CurrentValue=cfg.rapid_fire, Flag="RapidFire",
    Callback=function(v) cfg.rapid_fire=v end })

MiscTab:CreateToggle({ Name="Auto Reload", CurrentValue=cfg.auto_reload, Flag="AutoReload",
    Callback=function(v) cfg.auto_reload=v end })

MiscTab:CreateSection("Player")

MiscTab:CreateToggle({ Name="Anti-Ragdoll", CurrentValue=cfg.anti_ragdoll, Flag="AntiRagdoll",
    Callback=function(v)
        cfg.anti_ragdoll=v
        local hum = lp.Character and lp.Character:FindFirstChildOfClass("Humanoid")
        if hum then
            hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, not v)
        end
    end })

MiscTab:CreateToggle({ Name="Mod Detector", CurrentValue=cfg.mod_detector, Flag="ModDetector",
    Callback=function(v) cfg.mod_detector=v end })

MiscTab:CreateSection("Actions")

MiscTab:CreateButton({ Name="Rejoin Server", Callback=function()
    local ts = game:GetService("TeleportService")
    ts:Teleport(game.PlaceId, lp)
end })

MiscTab:CreateButton({ Name="Respawn Character", Callback=function()
    lp:LoadCharacter()
end })

-- ============================================================
--  CORE LOGIC
-- ============================================================

local drawings = {}
local playerData = {}
local modDetectorID = 17215700

-- Utility
local function getCharParts(char)
    if not char then return nil,nil,nil,nil end
    local root = char:FindFirstChild("HumanoidRootPart")
    local head = char:FindFirstChild("Head")
    local hum  = char:FindFirstChildOfClass("Humanoid")
    local upper= char:FindFirstChild("UpperTorso") or root
    return root,head,hum,upper
end

local function isKnocked(char)
    local be = char:FindFirstChild("BodyEffects")
    local ko = be and be:FindFirstChild("K.O")
    return ko and ko.Value
end

local function hasFF(char)
    return char:FindFirstChildOfClass("ForceField") ~= nil
end

local function isGrabbed(char)
    return char:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
end

local function sameCrew(p)
    local lc = lp:GetAttribute("CrewID")
    local tc = p:GetAttribute("CrewID")
    return lc and tc and lc == tc
end

local function isVisible(origin, part, char)
    local rp = RaycastParams.new()
    rp.FilterType = Enum.RaycastFilterType.Blacklist
    rp.FilterDescendantsInstances = {lp.Character, char}
    rp.IgnoreWater = true
    local dir = part.Position - origin
    local result = Workspace:Raycast(origin, dir, rp)
    return not result or result.Instance:IsDescendantOf(char)
end

local function newDrawing(type, props)
    local d = Drawing.new(type)
    for k,v in pairs(props) do d[k]=v end
    return d
end

-- ============================================================
--  ESP RENDER LOOP
-- ============================================================
local function initPlayerDrawings(player)
    if playerData[player] then return end
    playerData[player] = {
        box1   = newDrawing("Square",{Thickness=1,Filled=false,Transparency=1,ZIndex=3,Visible=false}),
        box2   = newDrawing("Square",{Thickness=3,Filled=false,Transparency=1,ZIndex=2,Visible=false}),
        name   = newDrawing("Text",  {Center=true,Outline=true,Transparency=1,ZIndex=5,Visible=false,Text=""}),
        hpback = newDrawing("Square",{Thickness=1,Filled=true, Transparency=1,ZIndex=2,Visible=false,Color=Color3.new(0,0,0)}),
        hpbar  = newDrawing("Square",{Thickness=1,Filled=true, Transparency=1,ZIndex=3,Visible=false}),
        arback = newDrawing("Square",{Thickness=1,Filled=true, Transparency=1,ZIndex=2,Visible=false,Color=Color3.new(0,0,0)}),
        arbar  = newDrawing("Square",{Thickness=1,Filled=true, Transparency=1,ZIndex=3,Visible=false}),
        tracer = newDrawing("Line",  {Thickness=1,Transparency=1,ZIndex=1,Visible=false}),
        dist   = newDrawing("Text",  {Center=true,Outline=true,Transparency=1,ZIndex=5,Visible=false,Text=""}),
        highlight = nil,
    }
end

local function cleanPlayerDrawings(player)
    local d = playerData[player]
    if not d then return end
    for k,v in pairs(d) do
        if type(v)=="userdata" then pcall(function() v:Remove() end) end
    end
    if d.highlight then pcall(function() d.highlight:Destroy() end) end
    playerData[player] = nil
end

Players.PlayerAdded:Connect(function(p)
    -- mod detector
    if cfg.mod_detector and p~=lp and p:IsInGroup(modDetectorID) then
        lp:Kick("A moderator joined!")
    end
    initPlayerDrawings(p)
end)

Players.PlayerRemoving:Connect(function(p)
    cleanPlayerDrawings(p)
end)

for _,p in ipairs(Players:GetPlayers()) do
    if p~=lp then
        if cfg.mod_detector and p:IsInGroup(modDetectorID) then
            lp:Kick("A moderator is in the game!")
        end
        initPlayerDrawings(p)
    end
end

-- FOV circle for aimbot
local fovCircle = newDrawing("Circle",{NumSides=64,Thickness=1.5,Filled=false,Transparency=0.8,Color=Color3.new(1,1,1),Visible=false})
local camFOVCircle = newDrawing("Circle",{NumSides=64,Thickness=1.5,Filled=false,Transparency=0.8,Color=Color3.new(1,1,0),Visible=false})

-- Aimbot state
local aimbotTarget = nil
local camLockActive = false
local camLockTarget = nil
local rightHeld = false
local triggerHold = false
local triggerToggle = false
local lastTriggerTime = 0

UserInputService.InputBegan:Connect(function(inp, gp)
    if gp then return end
    if inp.UserInputType == Enum.UserInputType.MouseButton2 then rightHeld = true end
    if inp.KeyCode == Enum.KeyCode.C then
        if cfg.cam_aimbot_mode == "Toggle" then
            camLockActive = not camLockActive
        elseif cfg.cam_aimbot_mode == "Hold" then
            camLockActive = true
        end
        if cfg.trigger_mode == "Toggle" then
            triggerToggle = not triggerToggle
        elseif cfg.trigger_mode == "Hold" then
            triggerHold = true
        end
    end
end)

UserInputService.InputEnded:Connect(function(inp)
    if inp.UserInputType == Enum.UserInputType.MouseButton2 then rightHeld = false end
    if inp.KeyCode == Enum.KeyCode.C then
        if cfg.cam_aimbot_mode == "Hold" then camLockActive = false end
        if cfg.trigger_mode == "Hold" then triggerHold = false end
    end
end)

-- Get best target
local function getBestTarget()
    local best, bestDist = nil, math.huge
    local mouse2d = UserInputService:GetMouseLocation()
    for _,p in ipairs(Players:GetPlayers()) do
        if p == lp then continue end
        local char = p.Character
        if not char then continue end
        local root,head,hum = getCharParts(char)
        if not root or not hum or hum.Health <= 0 then continue end
        if cfg.aimbot_team_check and sameCrew(p) then continue end
        if cfg.aimbot_knocked_check and isKnocked(char) then continue end
        if cfg.aimbot_ff_check and hasFF(char) then continue end
        if cfg.aimbot_grab_check and isGrabbed(char) then continue end
        local dist3d = (root.Position - camera.CFrame.Position).Magnitude
        if dist3d > cfg.aimbot_max_distance then continue end
        local screen, onScreen = camera:WorldToViewportPoint(root.Position)
        if not onScreen or screen.Z <= 0 then continue end
        local d2 = (Vector2.new(screen.X,screen.Y)-mouse2d).Magnitude
        if d2 <= cfg.aimbot_fov and d2 < bestDist then
            bestDist = d2
            best = p
        end
    end
    return best
end

-- Speed hook
local function applySpeed()
    if not cfg.speed_enabled then return end
    local char = lp.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return end
    local h = hum.Health
    local mult = (cfg.speed_low_hp and h <= cfg.speed_low_threshold)
        and cfg.speed_low_mult or cfg.speed_mult
    hum.WalkSpeed = 16 * mult
end

lp.CharacterAdded:Connect(function(char)
    local hum = char:WaitForChild("Humanoid", 10)
    if not hum then return end
    hum:GetPropertyChangedSignal("WalkSpeed"):Connect(applySpeed)
    hum.HealthChanged:Connect(applySpeed)
    if cfg.anti_ragdoll then
        hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    end
end)

-- Anti-ragdoll hook for existing char
if lp.Character then
    local hum = lp.Character:FindFirstChildOfClass("Humanoid")
    if hum then
        hum:GetPropertyChangedSignal("WalkSpeed"):Connect(applySpeed)
        hum.HealthChanged:Connect(applySpeed)
    end
end

-- Triggerbot
local function doTrigger()
    local char = lp.Character
    if not char then return end
    local tool = char:FindFirstChildOfClass("Tool")
    if tool and tool.Name ~= "[Knife]" then
        for i=1,3 do tool:Activate() end
    end
end

local function isMouseOnTarget(target)
    if not target or not target.Character then return false end
    local rp = RaycastParams.new()
    rp.FilterType = Enum.RaycastFilterType.Whitelist
    rp.FilterDescendantsInstances = {target.Character}
    local ml = UserInputService:GetMouseLocation()
    local ray = camera:ViewportPointToRay(ml.X,ml.Y)
    local res = Workspace:Raycast(ray.Origin, ray.Direction*1000, rp)
    return res ~= nil
end

-- Atmosphere applier
local atmosInst = nil
local function applyAtmosphere()
    if not cfg.atmos_enabled then
        if atmosInst then atmosInst:Destroy(); atmosInst=nil end
        return
    end
    if not atmosInst then
        atmosInst = Instance.new("Atmosphere")
        atmosInst.Parent = Lighting
    end
    atmosInst.Color   = cfg.atmos_color
    atmosInst.Density = cfg.atmos_density
    atmosInst.Glare   = cfg.atmos_glare
    atmosInst.Haze    = cfg.atmos_haze
end

-- Chams applier
local function applyChams(char)
    if not cfg.chams_enabled or not char then return end
    for _,p in ipairs(char:GetDescendants()) do
        if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
            p.Material = Enum.Material.Neon
            p.Color = cfg.chams_color
            p.Transparency = cfg.chams_transparency
        end
    end
end

-- Highlight applier
local function applyHighlight(player, data)
    if not cfg.highlight_enabled then
        if data.highlight then
            data.highlight:Destroy()
            data.highlight = nil
        end
        return
    end
    local char = player.Character
    if not char then return end
    if not data.highlight then
        local hl = Instance.new("Highlight")
        hl.DepthMode = cfg.highlight_depth
        hl.FillColor = cfg.highlight_fill_color
        hl.FillTransparency = cfg.highlight_fill_trans
        hl.OutlineColor = cfg.highlight_outline_color
        hl.OutlineTransparency = cfg.highlight_outline_trans
        hl.Adornee = char
        hl.Parent = char
        data.highlight = hl
    else
        data.highlight.FillColor = cfg.highlight_fill_color
        data.highlight.FillTransparency = cfg.highlight_fill_trans
        data.highlight.OutlineColor = cfg.highlight_outline_color
        data.highlight.OutlineTransparency = cfg.highlight_outline_trans
        data.highlight.DepthMode = cfg.highlight_depth
    end
end

-- ============================================================
--  MAIN RENDER LOOP
-- ============================================================
RunService.RenderStepped:Connect(function(dt)
    local now = tick()
    local vp = camera.ViewportSize
    local mouse2d = UserInputService:GetMouseLocation()

    -- FOV circles
    fovCircle.Visible = cfg.aimbot_fov_visible and cfg.aimbot_enabled
    if fovCircle.Visible then
        fovCircle.Position = mouse2d
        fovCircle.Radius   = cfg.aimbot_fov
    end

    camFOVCircle.Visible = cfg.cam_fov_visible and cfg.cam_aimbot_enabled
    if camFOVCircle.Visible then
        camFOVCircle.Position = mouse2d
        camFOVCircle.Radius   = cfg.cam_aimbot_fov
    end

    -- Aimbot target selection
    if cfg.aimbot_enabled then
        aimbotTarget = getBestTarget()
    else
        aimbotTarget = nil
    end

    -- Camera lock target
    if cfg.cam_aimbot_enabled and camLockActive then
        if not camLockTarget then
            camLockTarget = getBestTarget()
        end
    else
        camLockTarget = nil
    end

    -- Camera aimbot movement
    if cfg.cam_aimbot_enabled and camLockActive and camLockTarget and camLockTarget.Character then
        local char = camLockTarget.Character
        local root,head = getCharParts(char)
        if root and head then
            local zoom = (camera.CFrame.Position - camera.Focus.Position).Magnitude
            local isFP = zoom < 1
            local allowPerson = (cfg.cam_aimbot_fp_only and isFP) or (not cfg.cam_aimbot_fp_only)
            local allowClick  = not cfg.cam_aimbot_rclick or rightHeld
            local dist = (root.Position - camera.CFrame.Position).Magnitude
            if allowPerson and allowClick and dist <= cfg.cam_aimbot_fov then
                local targetPos = head.Position
                local screen = camera:WorldToViewportPoint(targetPos)
                local inFOV = screen.Z > 0 and (Vector2.new(screen.X,screen.Y)-mouse2d).Magnitude <= cfg.cam_aimbot_fov
                if inFOV then
                    local targetCFrame = CFrame.new(camera.CFrame.Position, targetPos)
                    local sx = cfg.cam_aimbot_smooth_x
                    local sy = cfg.cam_aimbot_smooth_y
                    local fx = 1 - math.exp(-sx * dt * 60)
                    local fy = 1 - math.exp(-sy * dt * 60)
                    camera.CFrame = camera.CFrame:Lerp(targetCFrame, math.max(fx,fy))
                end
            end
        end
    end

    -- Triggerbot
    if cfg.trigger_enabled and aimbotTarget then
        local active = cfg.trigger_mode == "Always"
            or (cfg.trigger_mode == "Hold" and triggerHold)
            or (cfg.trigger_mode == "Toggle" and triggerToggle)
        if active then
            local delay = cfg.trigger_delay
            if now - lastTriggerTime >= delay then
                local inRange = (cfg.trigger_type == "FOV" and true) -- simplified: already in aimbot FOV
                    or (cfg.trigger_type == "Hitbox" and isMouseOnTarget(aimbotTarget))
                if inRange then
                    doTrigger()
                    lastTriggerTime = now
                end
            end
        end
    end

    -- ESP loop
    for _, player in ipairs(Players:GetPlayers()) do
        if player == lp then continue end
        local data = playerData[player]
        if not data then
            initPlayerDrawings(player)
            data = playerData[player]
        end
        if not data then continue end

        local char = player.Character
        local root,head,hum,upper = getCharParts(char)
        local show = cfg.esp_enabled and char and root and head and hum

        if not show then
            for k,v in pairs(data) do
                if type(v)=="userdata" then
                    pcall(function() v.Visible=false end)
                end
            end
            continue
        end

        -- Distance check
        local dist3d = (root.Position - camera.CFrame.Position).Magnitude
        if dist3d > cfg.esp_max_distance then
            for k,v in pairs(data) do
                if type(v)=="userdata" then pcall(function() v.Visible=false end) end
            end
            continue
        end

        -- Project to screen
        local topPos, onTop    = camera:WorldToViewportPoint(head.Position + Vector3.new(0,0.7,0))
        local botPos, onBot    = camera:WorldToViewportPoint(root.Position - Vector3.new(0,2.7,0))

        if not onTop or not onBot or topPos.Z <= 0 then
            for k,v in pairs(data) do
                if type(v)=="userdata" then pcall(function() v.Visible=false end) end
            end
            continue
        end

        local knocked = isKnocked(char)
        if knocked and not cfg.esp_knocked then
            for k,v in pairs(data) do
                if type(v)=="userdata" then pcall(function() v.Visible=false end) end
            end
            continue
        end

        local boxColor = knocked and cfg.esp_knocked_color
            or (sameCrew(player) and cfg.esp_box_color_friendly or cfg.esp_box_color_enemy)

        local h   = botPos.Y - topPos.Y
        local w   = math.abs(h) * 0.5
        local x   = topPos.X - w/2
        local y   = topPos.Y

        -- Boxes
        local bv = cfg.esp_boxes
        data.box1.Visible = bv
        data.box2.Visible = bv
        if bv then
            data.box1.Color = boxColor
            data.box1.Size  = Vector2.new(w, h)
            data.box1.Position = Vector2.new(x, y)
            data.box2.Color = cfg.esp_outline_color
            data.box2.Size  = Vector2.new(w+2, h+2)
            data.box2.Position = Vector2.new(x-1, y-1)
        end

        -- Name
        data.name.Visible = cfg.esp_names
        if cfg.esp_names then
            data.name.Text = cfg.esp_use_display and player.DisplayName or player.Name
            data.name.Color = cfg.esp_name_color_enemy
            data.name.Size  = cfg.esp_text_size
            data.name.Position = Vector2.new(topPos.X, y - cfg.esp_text_size - 2)
        end

        -- HP bar
        local hp    = math.clamp(hum.Health/hum.MaxHealth, 0, 1)
        local barH  = math.abs(h)
        local barW  = 4
        local bx    = x - barW - 2
        data.hpback.Visible = cfg.esp_health_bar
        data.hpbar.Visible  = cfg.esp_health_bar
        if cfg.esp_health_bar then
            data.hpback.Size     = Vector2.new(barW, barH)
            data.hpback.Position = Vector2.new(bx, y)
            data.hpbar.Color     = cfg.esp_hp_bar_color
            data.hpbar.Size      = Vector2.new(barW, barH * hp)
            data.hpbar.Position  = Vector2.new(bx, y + barH*(1-hp))
        end

        -- Armor bar (check for Armor BodyEffect)
        local be = char:FindFirstChild("BodyEffects")
        local armorVal = be and be:FindFirstChild("Armor")
        local armorPct = armorVal and math.clamp(armorVal.Value/100, 0, 1) or 0
        data.arback.Visible = cfg.esp_armor_bar and armorPct > 0
        data.arbar.Visible  = cfg.esp_armor_bar and armorPct > 0
        if cfg.esp_armor_bar and armorPct > 0 then
            local ax = bx - barW - 2
            data.arback.Size     = Vector2.new(barW, barH)
            data.arback.Position = Vector2.new(ax, y)
            data.arbar.Color     = cfg.esp_armor_bar_color
            data.arbar.Size      = Vector2.new(barW, barH * armorPct)
            data.arbar.Position  = Vector2.new(ax, y + barH*(1-armorPct))
        end

        -- Tracer
        data.tracer.Visible = cfg.esp_tracers
        if cfg.esp_tracers then
            data.tracer.Color = boxColor
            data.tracer.From  = Vector2.new(vp.X/2, vp.Y)
            data.tracer.To    = Vector2.new(topPos.X, botPos.Y)
        end

        -- Distance label
        data.dist.Visible = cfg.esp_distance
        if cfg.esp_distance then
            data.dist.Text     = string.format("[%dm]", math.floor(dist3d/3.5))
            data.dist.Color    = cfg.esp_name_color_enemy
            data.dist.Size     = cfg.esp_text_size - 2
            data.dist.Position = Vector2.new(topPos.X, botPos.Y + 2)
        end

        -- Highlight
        applyHighlight(player, data)

        -- Chams
        if cfg.chams_enabled then
            applyChams(char)
        end
    end

    -- Atmosphere
    applyAtmosphere()

    -- Speed
    applySpeed()
end)

-- ============================================================
--  SILENT AIM HOOK (hookmetamethod)
-- ============================================================
local mouse = lp:GetMouse()
local originalIndex
originalIndex = hookmetamethod(game, "__index", function(self, key)
    if self == mouse and (key == "Hit" or key == "Target") and cfg.silent_aim_enabled then
        local best = getBestTarget()
        if best and best.Character then
            local root, head, hum = getCharParts(best.Character)
            if root and head then
                local dist = (root.Position - camera.CFrame.Position).Magnitude
                if dist <= cfg.silent_aim_max_dist then
                    local part = best.Character:FindFirstChild(cfg.silent_aim_hitpart) or head
                    if part then
                        if key == "Hit" then return CFrame.new(part.Position) end
                        if key == "Target" then return part end
                    end
                end
            end
        end
    end
    return originalIndex(self, key)
end)

-- ============================================================
--  HUMANOID PROPERTY HOOK (speed/jump)
-- ============================================================
local origNewindex
origNewindex = hookmetamethod(game, "__newindex", function(self, key, value)
    if not checkcaller() then
        if self:IsA("Humanoid") and self:IsDescendantOf(lp.Character or Instance.new("Folder")) then
            if key == "WalkSpeed" and cfg.remove_slowdowns and value < 16 then
                return origNewindex(self, key, 16)
            end
            if key == "JumpPower" and cfg.remove_jump_cooldown and value == 0 then
                return
            end
        end
    end
    return origNewindex(self, key, value)
end)

-- ============================================================
--  NOTIFY LOADED
-- ============================================================
Rayfield:Notify({
    Title    = "TracedxJuju Loaded",
    Content  = "All systems active.",
    Duration = 5,
    Image    = 4483362458,
})
