local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Dragoon Hangout Gui", "Midnight")
local Tab = Window:NewTab("stan venti")
local Section = Tab:NewSection("hahahah")

Section:NewButton("Load Infinite Yield", "loads infinite yield retard :joy:", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Section:NewButton("Load RemoteSpy", "loads remotespy retard :joy:", function()
    loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
end)

Section:NewButton("Rejoin Server (WIP)", "rejoins the server smshmmshmshm", function()
    game:GetService("TeleportService"):Teleport(5507536203, LocalPlayer)    
end)

Section:NewButton("Chams ESP", "skidded esp ahhahaah", function()
local Settings = {
    TeamCheck = true, -- Overules Color
    Red = Color3.fromRGB(255, 0, 0),
    Green = Color3.fromRGB(0, 255, 0),
    Color = Color3.fromRGB(255, 0, 0)
}

--// Locals
local player = game:GetService("Players").LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local mouse = player:GetMouse()

local function NewQuad(color)
    local quad = Drawing.new("Quad")
    quad.Visible = false
    quad.PointA = Vector2.new(0,0)
    quad.PointB = Vector2.new(0,0)
    quad.PointC = Vector2.new(0,0)
    quad.PointD = Vector2.new(0,0)
    quad.Color = color
    quad.Filled = true
    quad.Thickness = 1
    quad.Transparency = 0.25
    return quad
end

local function Colorize(color, lib)
    for i, v in pairs(lib) do
        v.Color = color
    end
end

local function ESP(object, plr)
    local part = object

    --// Quads for 3D box (6)
    local quads = {
        quad1 = NewQuad(Settings.Color),
        quad2 = NewQuad(Settings.Color),
        quad3 = NewQuad(Settings.Color),
        quad4 = NewQuad(Settings.Color),
        quad5 = NewQuad(Settings.Color),
        quad6 = NewQuad(Settings.Color)
    }

    --// Updates ESP in render loop
    local function Updater()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if plr.Character ~= nil and plr.Character:FindFirstChild(object.Name) ~= nil then
                local partpos, onscreen = camera:WorldToViewportPoint(part.Position)
                if onscreen then
                    local size_X = part.Size.X/2
                    local size_Y = part.Size.Y/2
                    local size_Z = part.Size.Z/2
                    
                    local Top1 = camera:WorldToViewportPoint((part.CFrame * CFrame.new(-size_X, size_Y, -size_Z)).p)
                    local Top2 = camera:WorldToViewportPoint((part.CFrame * CFrame.new(-size_X, size_Y, size_Z)).p)
                    local Top3 = camera:WorldToViewportPoint((part.CFrame * CFrame.new(size_X, size_Y, size_Z)).p)
                    local Top4 = camera:WorldToViewportPoint((part.CFrame * CFrame.new(size_X, size_Y, -size_Z)).p)

                    local Bottom1 = camera:WorldToViewportPoint((part.CFrame * CFrame.new(-size_X, -size_Y, -size_Z)).p)
                    local Bottom2 = camera:WorldToViewportPoint((part.CFrame * CFrame.new(-size_X, -size_Y, size_Z)).p)
                    local Bottom3 = camera:WorldToViewportPoint((part.CFrame * CFrame.new(size_X, -size_Y, size_Z)).p)
                    local Bottom4 = camera:WorldToViewportPoint((part.CFrame * CFrame.new(size_X, -size_Y, -size_Z)).p)

                    --// Top:
                    quads.quad1.PointA = Vector2.new(Top1.X, Top1.Y)
                    quads.quad1.PointB = Vector2.new(Top2.X, Top2.Y)
                    quads.quad1.PointC = Vector2.new(Top3.X, Top3.Y)
                    quads.quad1.PointD = Vector2.new(Top4.X, Top4.Y)

                    --//Bottom:
                    quads.quad2.PointA = Vector2.new(Bottom1.X, Bottom1.Y)
                    quads.quad2.PointB = Vector2.new(Bottom2.X, Bottom2.Y)
                    quads.quad2.PointC = Vector2.new(Bottom3.X, Bottom3.Y)
                    quads.quad2.PointD = Vector2.new(Bottom4.X, Bottom4.Y)

                    --//Sides:
                    quads.quad3.PointA = Vector2.new(Top1.X, Top1.Y)
                    quads.quad3.PointB = Vector2.new(Top2.X, Top2.Y)
                    quads.quad3.PointC = Vector2.new(Bottom2.X, Bottom2.Y)
                    quads.quad3.PointD = Vector2.new(Bottom1.X, Bottom1.Y)
                    
                    quads.quad4.PointA = Vector2.new(Top2.X, Top2.Y)
                    quads.quad4.PointB = Vector2.new(Top3.X, Top3.Y)
                    quads.quad4.PointC = Vector2.new(Bottom3.X, Bottom3.Y)
                    quads.quad4.PointD = Vector2.new(Bottom2.X, Bottom2.Y)
                    
                    quads.quad5.PointA = Vector2.new(Top3.X, Top3.Y)
                    quads.quad5.PointB = Vector2.new(Top4.X, Top4.Y)
                    quads.quad5.PointC = Vector2.new(Bottom4.X, Bottom4.Y)
                    quads.quad5.PointD = Vector2.new(Bottom3.X, Bottom3.Y)

                    quads.quad6.PointA = Vector2.new(Top4.X, Top4.Y)
                    quads.quad6.PointB = Vector2.new(Top1.X, Top1.Y)
                    quads.quad6.PointC = Vector2.new(Bottom1.X, Bottom1.Y)
                    quads.quad6.PointD = Vector2.new(Bottom4.X, Bottom4.Y)

                    if Settings.TeamCheck == true then
                        if plr.TeamColor == player.TeamColor then
                            Colorize(Settings.Green, quads)
                        else 
                            Colorize(Settings.Red, quads)
                        end
                    else 
                        Colorize(Settings.Color, quads)
                    end

                    for u, x in pairs(quads) do
                        x.Visible = true
                    end
                else 
                    for u, x in pairs(quads) do
                        x.Visible = false
                    end
                end
            else 
                for u, x in pairs(quads) do
                    x.Visible = false
                end
                if game.Players:FindFirstChild(plr.Name) == nil then
                    connection:Disconnect()
                    for u, x in pairs(quads) do
                        x:Remove()
                    end
                end
            end
        end)
    end
    coroutine.wrap(Updater)()
end

for i, v in pairs(game:GetService("Players"):GetPlayers()) do
    spawn(function()
        --if v.Name ~= player.Name then
            for u, x in pairs(v.Character:GetChildren()) do
                if x:IsA("MeshPart") or x.Name == "Head" then
                    ESP(x, v)
                end
            end
        --end
    end)
end

game.Players.PlayerAdded:Connect(function(newplr)
    spawn(function()
        if newplr.Name ~= player.Name then
            for u, x in pairs(newplr.Character:GetChildren()) do
                if x:IsA("MeshPart") or x.Name == "Head" then
                    ESP(x, newplr)
                end
            end
        end
    end)
end)
end)


Section:NewKeybind("Press B for Infinite Health", "changes health to -999999", Enum.KeyCode.B, function()
    game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 999999
    wait(0.2)
    game.Player.LocalPlayer.Character.Humanoid.Health = 999999
	print("You just clicked the bind")
end)

Section:NewSlider("WalkSpeed", "changes walkspeed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game:GetService("Workspace").mukheng.ShifttoSprintScript.Disabled = true --change "mukheng" near ("Workspace") to your roblox username
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("JumpPower", "changes JumpPower/JumpHeight", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
