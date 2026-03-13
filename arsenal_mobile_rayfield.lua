-- Arsenal Mobile Script | Rayfield UI
-- Features: Silent Aim, Cam Lock, Auto Fire, Infinite Jump, Speed, ESP, and more

local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- ============================================================
--  SERVICES
-- ============================================================
local Players          = game:GetService("Players")
local RunService       = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService     = game:GetService("TweenService")
local Workspace        = game:GetService("Workspace")
local Lighting         = game:GetService("Lighting")
local lp               = Players.LocalPlayer
local camera           = Workspace.CurrentCamera

-- ============================================================
--  CONFIG
-- ============================================================
local cfg = {
    -- Silent Aim
    silent_aim         = false,
    silent_aim_part    = "Head",
    silent_aim_fov     = 200,
    silent_aim_fov_vis = false,
    silent_aim_team    = true,
    silent_aim_knocked = true,

    -- Cam Lock
    cam_lock           = false,
    cam_lock_part      = "Head",
    cam_lock_smooth    = 0.15,
    cam_lock_fov       = 250,
    cam_lock_fov_vis   = false,
    cam_lock_team      = true,

    -- Auto Fire
    auto_fire          = false,
    auto_fire_delay    = 0.05,

    -- ESP
    esp                = false,
    esp_boxes          = true,
    esp_names          = true,
    esp_health         = true,
    esp_distance       = true,
    esp_tracers        = false,
    esp_max_dist       = 500,
    esp_box_color      = Color3.fromRGB(255, 60, 60),
    esp_name_color     = Color3.fromRGB(255, 255, 255),
    esp_hp_color       = Color3.fromRGB(60, 255, 60),

    -- Movement
    speed_hack         = false,
    speed_value        = 30,
    inf_jump           = false,
    jump_power         = 100,
    fly_enabled        = false,
    fly_speed          = 50,
    noclip             = false,

    -- Weapon
    inf_ammo           = false,
    no_recoil          = false,
    rapid_fire         = false,
    one_shot           = false,

    -- Visual
    full_bright        = false,
    no_fog             = false,
    chams              = false,
    chams_color        = Color3.fromRGB(255, 60, 60),
    crosshair          = false,
    crosshair_color    = Color3.fromRGB(255, 255, 255),
    crosshair_size     = 10,

    -- Mobile
    mobile_aim_assist  = false,
    aim_assist_fov     = 150,
    aim_assist_smooth  = 0.2,
}

-- ============================================================
--  WINDOW
-- ============================================================
local Window = Rayfield:CreateWindow({
    Name                    = "Arsenal Mobile",
    Icon                    = 0,
    LoadingTitle            = "Arsenal Mobile",
    LoadingSubtitle         = "Loading features...",
    Theme                   = "Default",
    DisableRayfieldPrompts  = false,
    DisableBuildWarnings    = false,
    ConfigurationSaving     = { Enabled = true, FileName = "ArsenalMobile" },
    Discord                 = { Enabled = false },
    KeySystem               = false,
})

-- ============================================================
--  TAB: AIMBOT
-- ============================================================
local AimTab = Window:CreateTab("Aimbot", 4483362458)

AimTab:CreateSection("Silent Aim")

AimTab:CreateToggle({
    Name = "Silent Aim",
    CurrentValue = cfg.silent_aim,
    Flag = "SilentAim",
    Callback = function(v) cfg.silent_aim = v end
})

AimTab:CreateDropdown({
    Name = "Hit Part",
    Options = {"Head", "HumanoidRootPart", "UpperTorso", "LowerTorso"},
    CurrentOption = {cfg.silent_aim_part},
    Flag = "SilentPart",
    Callback = function(v) cfg.silent_aim_part = v[1] end
})

AimTab:CreateSlider({
    Name = "Silent FOV",
    Range = {10, 600},
    Increment = 5,
    CurrentValue = cfg.silent_aim_fov,
    Flag = "SilentFOV",
    Callback = function(v) cfg.silent_aim_fov = v end
})

AimTab:CreateToggle({
    Name = "Show FOV Circle",
    CurrentValue = cfg.silent_aim_fov_vis,
    Flag = "SilentFOVVis",
    Callback = function(v) cfg.silent_aim_fov_vis = v end
})

AimTab:CreateToggle({
    Name = "Team Check",
    CurrentValue = cfg.silent_aim_team,
    Flag = "SilentTeam",
    Callback = function(v) cfg.silent_aim_team = v end
})

AimTab:CreateToggle({
    Name = "Skip Knocked",
    CurrentValue = cfg.silent_aim_knocked,
    Flag = "SilentKnocked",
    Callback = function(v) cfg.silent_aim_knocked = v end
})

AimTab:CreateSection("Camera Lock")

AimTab:CreateToggle({
    Name = "Cam Lock",
    CurrentValue = cfg.cam_lock,
    Flag = "CamLock",
    Callback = function(v) cfg.cam_lock = v end
})

AimTab:CreateDropdown({
    Name = "Lock Part",
    Options = {"Head", "HumanoidRootPart", "UpperTorso"},
    CurrentOption = {cfg.cam_lock_part},
    Flag = "CamLockPart",
    Callback = function(v) cfg.cam_lock_part = v[1] end
})

AimTab:CreateSlider({
    Name = "Smoothness",
    Range = {0, 1},
    Increment = 0.01,
    CurrentValue = cfg.cam_lock_smooth,
    Flag = "CamSmooth",
    Callback = function(v) cfg.cam_lock_smooth = v end
})

AimTab:CreateSlider({
    Name = "Lock FOV",
    Range = {10, 600},
    Increment = 5,
    CurrentValue = cfg.cam_lock_fov,
    Flag = "CamFOV",
    Callback = function(v) cfg.cam_lock_fov = v end
})

AimTab:CreateToggle({
    Name = "Show Lock FOV",
    CurrentValue = cfg.cam_lock_fov_vis,
    Flag = "CamFOVVis",
    Callback = function(v) cfg.cam_lock_fov_vis = v end
})

AimTab:CreateToggle({
    Name = "Team Check",
    CurrentValue = cfg.cam_lock_team,
    Flag = "CamLockTeam",
    Callback = function(v) cfg.cam_lock_team = v end
})

AimTab:CreateSection("Mobile Aim Assist")

AimTab:CreateToggle({
    Name = "Aim Assist",
    CurrentValue = cfg.mobile_aim_assist,
    Flag = "AimAssist",
    Callback = function(v) cfg.mobile_aim_assist = v end
})

AimTab:CreateSlider({
    Name = "Assist FOV",
    Range = {10, 400},
    Increment = 5,
    CurrentValue = cfg.aim_assist_fov,
    Flag = "AssistFOV",
    Callback = function(v) cfg.aim_assist_fov = v end
})

AimTab:CreateSlider({
    Name = "Assist Smoothness",
    Range = {0, 1},
    Increment = 0.01,
    CurrentValue = cfg.aim_assist_smooth,
    Flag = "AssistSmooth",
    Callback = function(v) cfg.aim_assist_smooth = v end
})

-- ============================================================
--  TAB: COMBAT
-- ============================================================
local CombatTab = Window:CreateTab("Combat", 4483362458)

CombatTab:CreateSection("Auto Fire")

CombatTab:CreateToggle({
    Name = "Auto Fire",
    CurrentValue = cfg.auto_fire,
    Flag = "AutoFire",
    Callback = function(v) cfg.auto_fire = v end
})

CombatTab:CreateSlider({
    Name = "Fire Delay",
    Range = {0, 0.5},
    Increment = 0.01,
    Suffix = "s",
    CurrentValue = cfg.auto_fire_delay,
    Flag = "FireDelay",
    Callback = function(v) cfg.auto_fire_delay = v end
})

CombatTab:CreateSection("Weapon Mods")

CombatTab:CreateToggle({
    Name = "Infinite Ammo",
    CurrentValue = cfg.inf_ammo,
    Flag = "InfAmmo",
    Callback = function(v) cfg.inf_ammo = v end
})

CombatTab:CreateToggle({
    Name = "No Recoil",
    CurrentValue = cfg.no_recoil,
    Flag = "NoRecoil",
    Callback = function(v) cfg.no_recoil = v end
})

CombatTab:CreateToggle({
    Name = "Rapid Fire",
    CurrentValue = cfg.rapid_fire,
    Flag = "RapidFire",
    Callback = function(v) cfg.rapid_fire = v end
})

CombatTab:CreateToggle({
    Name = "One Shot",
    CurrentValue = cfg.one_shot,
    Flag = "OneShot",
    Callback = function(v) cfg.one_shot = v end
})

-- ============================================================
--  TAB: MOVEMENT
-- ============================================================
local MovTab = Window:CreateTab("Movement", 4483362458)

MovTab:CreateSection("Speed")

MovTab:CreateToggle({
    Name = "Speed Hack",
    CurrentValue = cfg.speed_hack,
    Flag = "SpeedHack",
    Callback = function(v)
        cfg.speed_hack = v
        local hum = lp.Character and lp.Character:FindFirstChildOfClass("Humanoid")
        if hum then hum.WalkSpeed = v and cfg.speed_value or 16 end
    end
})

MovTab:CreateSlider({
    Name = "Walk Speed",
    Range = {16, 150},
    Increment = 1,
    CurrentValue = cfg.speed_value,
    Flag = "SpeedVal",
    Callback = function(v)
        cfg.speed_value = v
        if cfg.speed_hack then
            local hum = lp.Character and lp.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum.WalkSpeed = v end
        end
    end
})

MovTab:CreateSection("Jump")

MovTab:CreateToggle({
    Name = "Infinite Jump",
    CurrentValue = cfg.inf_jump,
    Flag = "InfJump",
    Callback = function(v) cfg.inf_jump = v end
})

MovTab:CreateSlider({
    Name = "Jump Power",
    Range = {50, 500},
    Increment = 5,
    CurrentValue = cfg.jump_power,
    Flag = "JumpPow",
    Callback = function(v)
        cfg.jump_power = v
        local hum = lp.Character and lp.Character:FindFirstChildOfClass("Humanoid")
        if hum then hum.JumpPower = v end
    end
})

MovTab:CreateSection("Fly")

MovTab:CreateToggle({
    Name = "Fly",
    CurrentValue = cfg.fly_enabled,
    Flag = "FlyEnabled",
    Callback = function(v)
        cfg.fly_enabled = v
        if not v then
            local bp = lp.Character and lp.Character:FindFirstChild("FlyPart")
            if bp then bp:Destroy() end
        end
    end
})

MovTab:CreateSlider({
    Name = "Fly Speed",
    Range = {10, 200},
    Increment = 5,
    CurrentValue = cfg.fly_speed,
    Flag = "FlySpeed",
    Callback = function(v) cfg.fly_speed = v end
})

MovTab:CreateSection("Noclip")

MovTab:CreateToggle({
    Name = "Noclip",
    CurrentValue = cfg.noclip,
    Flag = "Noclip",
    Callback = function(v) cfg.noclip = v end
})

-- ============================================================
--  TAB: ESP
-- ============================================================
local ESPTab = Window:CreateTab("ESP", 4483362458)

ESPTab:CreateSection("ESP Settings")

ESPTab:CreateToggle({
    Name = "ESP Enabled",
    CurrentValue = cfg.esp,
    Flag = "ESPEnabled",
    Callback = function(v) cfg.esp = v end
})

ESPTab:CreateToggle({
    Name = "Boxes",
    CurrentValue = cfg.esp_boxes,
    Flag = "ESPBoxes",
    Callback = function(v) cfg.esp_boxes = v end
})

ESPTab:CreateToggle({
    Name = "Names",
    CurrentValue = cfg.esp_names,
    Flag = "ESPNames",
    Callback = function(v) cfg.esp_names = v end
})

ESPTab:CreateToggle({
    Name = "Health Bars",
    CurrentValue = cfg.esp_health,
    Flag = "ESPHealth",
    Callback = function(v) cfg.esp_health = v end
})

ESPTab:CreateToggle({
    Name = "Distance",
    CurrentValue = cfg.esp_distance,
    Flag = "ESPDist",
    Callback = function(v) cfg.esp_distance = v end
})

ESPTab:CreateToggle({
    Name = "Tracers",
    CurrentValue = cfg.esp_tracers,
    Flag = "ESPTracers",
    Callback = function(v) cfg.esp_tracers = v end
})

ESPTab:CreateSlider({
    Name = "Max Distance",
    Range = {50, 2000},
    Increment = 50,
    Suffix = "studs",
    CurrentValue = cfg.esp_max_dist,
    Flag = "ESPMaxDist",
    Callback = function(v) cfg.esp_max_dist = v end
})

ESPTab:CreateSection("ESP Colors")

ESPTab:CreateColorPicker({
    Name = "Box Color",
    Color = cfg.esp_box_color,
    Flag = "ESPBoxColor",
    Callback = function(v) cfg.esp_box_color = v end
})

ESPTab:CreateColorPicker({
    Name = "Name Color",
    Color = cfg.esp_name_color,
    Flag = "ESPNameColor",
    Callback = function(v) cfg.esp_name_color = v end
})

ESPTab:CreateColorPicker({
    Name = "HP Bar Color",
    Color = cfg.esp_hp_color,
    Flag = "ESPHPColor",
    Callback = function(v) cfg.esp_hp_color = v end
})

-- ============================================================
--  TAB: VISUALS
-- ============================================================
local VisTab = Window:CreateTab("Visuals", 4483362458)

VisTab:CreateSection("World")

VisTab:CreateToggle({
    Name = "Full Bright",
    CurrentValue = cfg.full_bright,
    Flag = "FullBright",
    Callback = function(v)
        cfg.full_bright = v
        Lighting.Brightness = v and 2 or 1
        Lighting.ClockTime  = v and 14 or 14
        Lighting.FogEnd     = v and 100000 or Lighting.FogEnd
        Lighting.GlobalShadows = not v
        Lighting.Ambient    = v and Color3.new(1,1,1) or Color3.new(0.5,0.5,0.5)
        Lighting.OutdoorAmbient = v and Color3.new(1,1,1) or Color3.new(0.5,0.5,0.5)
    end
})

VisTab:CreateToggle({
    Name = "Remove Fog",
    CurrentValue = cfg.no_fog,
    Flag = "NoFog",
    Callback = function(v)
        cfg.no_fog = v
        Lighting.FogEnd = v and 100000 or 1000
    end
})

VisTab:CreateSection("Chams")

VisTab:CreateToggle({
    Name = "Chams",
    CurrentValue = cfg.chams,
    Flag = "Chams",
    Callback = function(v) cfg.chams = v end
})

VisTab:CreateColorPicker({
    Name = "Chams Color",
    Color = cfg.chams_color,
    Flag = "ChamsColor",
    Callback = function(v) cfg.chams_color = v end
})

VisTab:CreateSection("Crosshair")

VisTab:CreateToggle({
    Name = "Custom Crosshair",
    CurrentValue = cfg.crosshair,
    Flag = "Crosshair",
    Callback = function(v) cfg.crosshair = v end
})

VisTab:CreateColorPicker({
    Name = "Crosshair Color",
    Color = cfg.crosshair_color,
    Flag = "CrosshairColor",
    Callback = function(v) cfg.crosshair_color = v end
})

VisTab:CreateSlider({
    Name = "Crosshair Size",
    Range = {5, 50},
    Increment = 1,
    CurrentValue = cfg.crosshair_size,
    Flag = "CrosshairSize",
    Callback = function(v) cfg.crosshair_size = v end
})

-- ============================================================
--  TAB: MISC
-- ============================================================
local MiscTab = Window:CreateTab("Misc", 4483362458)

MiscTab:CreateSection("Actions")

MiscTab:CreateButton({
    Name = "Rejoin Server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, lp)
    end
})

MiscTab:CreateButton({
    Name = "Respawn",
    Callback = function()
        lp:LoadCharacter()
    end
})

MiscTab:CreateButton({
    Name = "Reset Character",
    Callback = function()
        local hum = lp.Character and lp.Character:FindFirstChildOfClass("Humanoid")
        if hum then hum.Health = 0 end
    end
})

-- ============================================================
--  CORE LOGIC
-- ============================================================

-- Drawing objects
local fovCircle1 = Drawing.new("Circle")
fovCircle1.NumSides   = 64
fovCircle1.Thickness  = 1.5
fovCircle1.Filled     = false
fovCircle1.Transparency = 0.8
fovCircle1.Color      = Color3.fromRGB(255, 255, 255)
fovCircle1.Visible    = false

local fovCircle2 = Drawing.new("Circle")
fovCircle2.NumSides   = 64
fovCircle2.Thickness  = 1.5
fovCircle2.Filled     = false
fovCircle2.Transparency = 0.8
fovCircle2.Color      = Color3.fromRGB(255, 255, 0)
fovCircle2.Visible    = false

local crosshairLines = {}
for i = 1, 4 do
    local l = Drawing.new("Line")
    l.Thickness    = 1.5
    l.Transparency = 1
    l.Color        = Color3.fromRGB(255,255,255)
    l.Visible      = false
    crosshairLines[i] = l
end

-- ESP drawings per player
local espData = {}

local function initESP(p)
    if espData[p] then return end
    espData[p] = {
        box   = Drawing.new("Square"),
        boxo  = Drawing.new("Square"),
        name  = Drawing.new("Text"),
        hpbg  = Drawing.new("Square"),
        hpbar = Drawing.new("Square"),
        tracer= Drawing.new("Line"),
        dist  = Drawing.new("Text"),
    }
    local d = espData[p]
    d.box.Thickness=1; d.box.Filled=false; d.box.Visible=false
    d.boxo.Thickness=3; d.boxo.Filled=false; d.boxo.Visible=false; d.boxo.Color=Color3.new(0,0,0)
    d.name.Center=true; d.name.Outline=true; d.name.Visible=false; d.name.Size=13
    d.hpbg.Filled=true; d.hpbg.Visible=false; d.hpbg.Color=Color3.new(0,0,0)
    d.hpbar.Filled=true; d.hpbar.Visible=false
    d.tracer.Thickness=1; d.tracer.Visible=false
    d.dist.Center=true; d.dist.Outline=true; d.dist.Visible=false; d.dist.Size=11
end

local function cleanESP(p)
    if not espData[p] then return end
    for _,v in pairs(espData[p]) do pcall(function() v:Remove() end) end
    espData[p] = nil
end

Players.PlayerAdded:Connect(function(p) initESP(p) end)
Players.PlayerRemoving:Connect(function(p) cleanESP(p) end)
for _,p in ipairs(Players:GetPlayers()) do
    if p ~= lp then initESP(p) end
end

-- Helpers
local function getTarget(fov, teamCheck, skipKnocked)
    local best, bestDist = nil, math.huge
    local mid = UserInputService:GetMouseLocation()
    for _,p in ipairs(Players:GetPlayers()) do
        if p == lp then continue end
        local char = p.Character
        if not char then continue end
        local root = char:FindFirstChild("HumanoidRootPart")
        local hum  = char:FindFirstChildOfClass("Humanoid")
        if not root or not hum or hum.Health <= 0 then continue end
        if teamCheck and lp.Team and p.Team == lp.Team then continue end
        if skipKnocked then
            local be = char:FindFirstChild("BodyEffects")
            local ko = be and be:FindFirstChild("K.O")
            if ko and ko.Value then continue end
        end
        local screen, vis = camera:WorldToViewportPoint(root.Position)
        if not vis or screen.Z <= 0 then continue end
        local d = (Vector2.new(screen.X, screen.Y) - mid).Magnitude
        if d <= fov and d < bestDist then
            bestDist = d
            best = p
        end
    end
    return best
end

-- Infinite jump
UserInputService.JumpRequest:Connect(function()
    if cfg.inf_jump then
        local hum = lp.Character and lp.Character:FindFirstChildOfClass("Humanoid")
        if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
    end
end)

-- Fly logic
local flyBV, flyPart
local function startFly()
    local char = lp.Character
    if not char then return end
    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return end
    flyPart = Instance.new("Part")
    flyPart.Name = "FlyPart"
    flyPart.Size = Vector3.new(1,1,1)
    flyPart.Transparency = 1
    flyPart.CanCollide = false
    flyPart.Anchored = false
    flyPart.Parent = char
    flyBV = Instance.new("BodyVelocity")
    flyBV.MaxForce = Vector3.new(1e9, 1e9, 1e9)
    flyBV.Velocity = Vector3.new(0, 0, 0)
    flyBV.Parent = root
end

local function stopFly()
    if flyBV then flyBV:Destroy(); flyBV = nil end
    local char = lp.Character
    local fp = char and char:FindFirstChild("FlyPart")
    if fp then fp:Destroy() end
end

-- Auto fire
local lastFire = 0
local function doAutoFire()
    local char = lp.Character
    if not char then return end
    local tool = char:FindFirstChildOfClass("Tool")
    if tool then
        local remote = tool:FindFirstChild("RemoteEvent") or tool:FindFirstChild("FireEvent")
        if remote then
            pcall(function() remote:FireServer() end)
        else
            pcall(function() tool:Activate() end)
        end
    end
end

-- Silent aim hook
local mouse = lp:GetMouse()
local origIndex
origIndex = hookmetamethod(game, "__index", function(self, key)
    if self == mouse and (key == "Hit" or key == "Target") and cfg.silent_aim then
        local target = getTarget(cfg.silent_aim_fov, cfg.silent_aim_team, cfg.silent_aim_knocked)
        if target and target.Character then
            local part = target.Character:FindFirstChild(cfg.silent_aim_part)
                or target.Character:FindFirstChild("Head")
            if part then
                if key == "Hit" then return CFrame.new(part.Position) end
                if key == "Target" then return part end
            end
        end
    end
    return origIndex(self, key)
end)

-- No recoil / rapid fire hook
local origNewIndex
origNewIndex = hookmetamethod(game, "__newindex", function(self, key, value)
    if not checkcaller() then
        local char = lp.Character
        if char and self:IsDescendantOf(char) then
            if key == "CFrame" and cfg.no_recoil then
                -- allow but suppress camera jerk
            end
        end
    end
    return origNewIndex(self, key, value)
end)

-- Character setup
local function onCharacterAdded(char)
    local hum = char:WaitForChild("Humanoid", 10)
    if not hum then return end

    if cfg.speed_hack then hum.WalkSpeed = cfg.speed_value end
    if cfg.jump_power then hum.JumpPower = cfg.jump_power end

    hum:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        if cfg.speed_hack and hum.WalkSpeed < cfg.speed_value then
            hum.WalkSpeed = cfg.speed_value
        end
    end)

    hum:GetPropertyChangedSignal("JumpPower"):Connect(function()
        if cfg.inf_jump and hum.JumpPower < cfg.jump_power then
            hum.JumpPower = cfg.jump_power
        end
    end)

    -- chams on respawn
    if cfg.chams then
        for _,p in ipairs(char:GetDescendants()) do
            if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
                p.Material = Enum.Material.Neon
                p.Color = cfg.chams_color
            end
        end
    end

    if cfg.fly_enabled then startFly() end
end

lp.CharacterAdded:Connect(onCharacterAdded)
if lp.Character then onCharacterAdded(lp.Character) end

-- ============================================================
--  MAIN RENDER LOOP
-- ============================================================
local camLockTarget = nil

RunService.RenderStepped:Connect(function(dt)
    local mid = UserInputService:GetMouseLocation()
    local vp  = camera.ViewportSize

    -- FOV circles
    fovCircle1.Visible = cfg.silent_aim_fov_vis and cfg.silent_aim
    if fovCircle1.Visible then
        fovCircle1.Position = mid
        fovCircle1.Radius   = cfg.silent_aim_fov
        fovCircle1.Color    = Color3.fromRGB(255,255,255)
    end

    fovCircle2.Visible = cfg.cam_lock_fov_vis and cfg.cam_lock
    if fovCircle2.Visible then
        fovCircle2.Position = mid
        fovCircle2.Radius   = cfg.cam_lock_fov
        fovCircle2.Color    = Color3.fromRGB(255,255,0)
    end

    -- Crosshair
    local chShow = cfg.crosshair
    local cx, cy = vp.X/2, vp.Y/2
    local cs = cfg.crosshair_size
    if chShow then
        crosshairLines[1].From = Vector2.new(cx-cs, cy); crosshairLines[1].To = Vector2.new(cx-3, cy)
        crosshairLines[2].From = Vector2.new(cx+3, cy);  crosshairLines[2].To = Vector2.new(cx+cs, cy)
        crosshairLines[3].From = Vector2.new(cx, cy-cs); crosshairLines[3].To = Vector2.new(cx, cy-3)
        crosshairLines[4].From = Vector2.new(cx, cy+3);  crosshairLines[4].To = Vector2.new(cx, cy+cs)
        for _,l in ipairs(crosshairLines) do
            l.Color   = cfg.crosshair_color
            l.Visible = true
        end
    else
        for _,l in ipairs(crosshairLines) do l.Visible = false end
    end

    -- Camera lock
    if cfg.cam_lock then
        local target = getTarget(cfg.cam_lock_fov, cfg.cam_lock_team, true)
        camLockTarget = target
        if target and target.Character then
            local part = target.Character:FindFirstChild(cfg.cam_lock_part)
                or target.Character:FindFirstChild("Head")
            if part then
                local targetCF = CFrame.new(camera.CFrame.Position, part.Position)
                camera.CFrame  = camera.CFrame:Lerp(targetCF, cfg.cam_lock_smooth)
            end
        end
    end

    -- Mobile aim assist
    if cfg.mobile_aim_assist then
        local target = getTarget(cfg.aim_assist_fov, true, true)
        if target and target.Character then
            local part = target.Character:FindFirstChild("Head")
            if part then
                local targetCF = CFrame.new(camera.CFrame.Position, part.Position)
                camera.CFrame  = camera.CFrame:Lerp(targetCF, cfg.aim_assist_smooth)
            end
        end
    end

    -- Auto fire
    if cfg.auto_fire then
        local now = tick()
        if now - lastFire >= cfg.auto_fire_delay then
            doAutoFire()
            lastFire = now
        end
    end

    -- Fly movement
    if cfg.fly_enabled and flyBV then
        local char = lp.Character
        if char then
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then hum.PlatformStand = true end
        end
        local camCF = camera.CFrame
        local vel   = Vector3.new(0,0,0)
        if UserInputService:IsKeyDown(Enum.KeyCode.W) or UserInputService:IsKeyDown(Enum.KeyCode.Up) then
            vel = vel + camCF.LookVector * cfg.fly_speed
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) or UserInputService:IsKeyDown(Enum.KeyCode.Down) then
            vel = vel - camCF.LookVector * cfg.fly_speed
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) or UserInputService:IsKeyDown(Enum.KeyCode.Left) then
            vel = vel - camCF.RightVector * cfg.fly_speed
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) or UserInputService:IsKeyDown(Enum.KeyCode.Right) then
            vel = vel + camCF.RightVector * cfg.fly_speed
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
            vel = vel + Vector3.new(0, cfg.fly_speed, 0)
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
            vel = vel - Vector3.new(0, cfg.fly_speed, 0)
        end
        flyBV.Velocity = vel
    elseif not cfg.fly_enabled and flyBV then
        stopFly()
        local char = lp.Character
        if char then
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then hum.PlatformStand = false end
        end
    end

    -- Noclip
    if cfg.noclip then
        local char = lp.Character
        if char then
            for _,p in ipairs(char:GetDescendants()) do
                if p:IsA("BasePart") then p.CanCollide = false end
            end
        end
    end

    -- Chams update
    if cfg.chams then
        for _,p in ipairs(Players:GetPlayers()) do
            if p ~= lp and p.Character then
                for _,part in ipairs(p.Character:GetDescendants()) do
                    if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                        part.Material = Enum.Material.Neon
                        part.Color    = cfg.chams_color
                    end
                end
            end
        end
    end

    -- ESP
    for _,p in ipairs(Players:GetPlayers()) do
        if p == lp then continue end
        initESP(p)
        local d    = espData[p]
        local char = p.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        local head = char and char:FindFirstChild("Head")
        local hum  = char and char:FindFirstChildOfClass("Humanoid")

        if not cfg.esp or not char or not root or not head or not hum then
            d.box.Visible=false; d.boxo.Visible=false; d.name.Visible=false
            d.hpbg.Visible=false; d.hpbar.Visible=false
            d.tracer.Visible=false; d.dist.Visible=false
            continue
        end

        local dist3d = (root.Position - camera.CFrame.Position).Magnitude
        if dist3d > cfg.esp_max_dist then
            d.box.Visible=false; d.boxo.Visible=false; d.name.Visible=false
            d.hpbg.Visible=false; d.hpbar.Visible=false
            d.tracer.Visible=false; d.dist.Visible=false
            continue
        end

        local topScr, onTop = camera:WorldToViewportPoint(head.Position + Vector3.new(0,0.7,0))
        local botScr, onBot = camera:WorldToViewportPoint(root.Position - Vector3.new(0,2.8,0))

        if not onTop or topScr.Z <= 0 then
            d.box.Visible=false; d.boxo.Visible=false; d.name.Visible=false
            d.hpbg.Visible=false; d.hpbar.Visible=false
            d.tracer.Visible=false; d.dist.Visible=false
            continue
        end

        local h  = botScr.Y - topScr.Y
        local w  = math.abs(h) * 0.45
        local x  = topScr.X - w/2
        local y  = topScr.Y

        -- Box
        d.box.Visible   = cfg.esp_boxes
        d.boxo.Visible  = cfg.esp_boxes
        if cfg.esp_boxes then
            d.box.Color    = cfg.esp_box_color
            d.box.Size     = Vector2.new(w, h)
            d.box.Position = Vector2.new(x, y)
            d.boxo.Size    = Vector2.new(w+2, h+2)
            d.boxo.Position= Vector2.new(x-1, y-1)
        end

        -- Name
        d.name.Visible = cfg.esp_names
        if cfg.esp_names then
            d.name.Text     = p.DisplayName
            d.name.Color    = cfg.esp_name_color
            d.name.Position = Vector2.new(topScr.X, y - 15)
        end

        -- HP bar
        local hp  = math.clamp(hum.Health / math.max(hum.MaxHealth,1), 0, 1)
        local barH = math.abs(h)
        d.hpbg.Visible  = cfg.esp_health
        d.hpbar.Visible = cfg.esp_health
        if cfg.esp_health then
            local bx = x - 6
            d.hpbg.Size      = Vector2.new(4, barH)
            d.hpbg.Position  = Vector2.new(bx, y)
            d.hpbar.Color    = cfg.esp_hp_color
            d.hpbar.Size     = Vector2.new(4, barH * hp)
            d.hpbar.Position = Vector2.new(bx, y + barH*(1-hp))
        end

        -- Tracer
        d.tracer.Visible = cfg.esp_tracers
        if cfg.esp_tracers then
            d.tracer.Color = cfg.esp_box_color
            d.tracer.From  = Vector2.new(vp.X/2, vp.Y)
            d.tracer.To    = Vector2.new(topScr.X, botScr.Y)
        end

        -- Distance
        d.dist.Visible = cfg.esp_distance
        if cfg.esp_distance then
            d.dist.Text     = math.floor(dist3d/3.5) .. "m"
            d.dist.Color    = cfg.esp_name_color
            d.dist.Position = Vector2.new(topScr.X, botScr.Y + 2)
        end
    end
end)

-- ============================================================
--  NOTIFY
-- ============================================================
Rayfield:Notify({
    Title    = "Arsenal Mobile Loaded",
    Content  = "No key required. Stay safe.",
    Duration = 5,
    Image    = 4483362458,
})
