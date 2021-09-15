
local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local ImageLabel_3 = Instance.new("ImageLabel")
local pinthi = Instance.new("TextButton")
local feadmin = Instance.new("TextButton")
local febtools = Instance.new("TextButton")
local ImageLabel_4 = Instance.new("ImageLabel")
local nothing = Instance.new("TextButton")
local ImageLabel_5 = Instance.new("ImageLabel")
local ImageLabel_6 = Instance.new("ImageLabel")
local Player = game.Players.LocalPlayer

--Properties

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Position = UDim2.new(0.238278255, 0, 0.164037853, 0)
Main.Size = UDim2.new(0, 670, 0, 345)
Main.Active = true
Main.Draggable = true

ImageLabel.Parent = Main
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Size = UDim2.new(0, 670, 0, 345)
ImageLabel.Image = "http://www.roblox.com/asset/?id=2845339107"

ImageLabel_2.Parent = Main
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.Position = UDim2.new(0.762686551, 0, 0, 0)
ImageLabel_2.Size = UDim2.new(0, 159, 0, 58)
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=507543932"

ImageLabel_3.Parent = Main
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.Size = UDim2.new(0, 434, 0, 100)
ImageLabel_3.Image = "http://www.roblox.com/asset/?id=1774779072"

pinthi.Name = "pinthi"
pinthi.Parent = Main
pinthi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pinthi.Position = UDim2.new(0.476119399, 0, 0.411594182, 0)
pinthi.Size = UDim2.new(0, 308, 0, 19)
pinthi.Font = Enum.Font.SourceSans
pinthi.Text = " pint(\"hi\")                                                                                                                "
pinthi.TextColor3 = Color3.fromRGB(0, 0, 0)
pinthi.TextSize = 14.000
pinthi.MouseButton1Down:connect(function()
	print("hi")
end)


feadmin.Name = "fe admin"
feadmin.Parent = Main
feadmin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
feadmin.Position = UDim2.new(0.101492539, 0, 0.686956525, 0)
feadmin.Size = UDim2.new(0, 278, 0, 14)
feadmin.Font = Enum.Font.SourceSans
feadmin.Text = "FE ADMIN (OMG!!!!!)"
feadmin.TextColor3 = Color3.fromRGB(0, 0, 0)
feadmin.TextSize = 14.000
feadmin.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

febtools.Name = "fe btools"
febtools.Parent = Main
febtools.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
febtools.Position = UDim2.new(0.0805970132, 0, 0.501449287, 0)
febtools.Size = UDim2.new(0, 200, 0, 15)
febtools.Font = Enum.Font.SourceSans
febtools.Text = "FE BTOOLS!?!"
febtools.TextColor3 = Color3.fromRGB(0, 0, 0)
febtools.TextSize = 14.000
febtools.MouseButton1Down:connect(function()
	Player:Kick("lol")
end)


ImageLabel_4.Parent = Main
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_4.Position = UDim2.new(0.732835829, 0, 0.686956525, 0)
ImageLabel_4.Size = UDim2.new(0, 136, 0, 92)
ImageLabel_4.Image = "http://www.roblox.com/asset/?id=825106880"

nothing.Name = "nothing"
nothing.Parent = Main
nothing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
nothing.Position = UDim2.new(0.637313426, 0, 0.542028964, 0)
nothing.Size = UDim2.new(0, 200, 0, 16)
nothing.Font = Enum.Font.SourceSans
nothing.Text = "nothing"
nothing.TextColor3 = Color3.fromRGB(0, 0, 0)
nothing.TextSize = 14.000

ImageLabel_5.Parent = Main
ImageLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_5.Position = UDim2.new(0.205970153, 0, 0.802898526, 0)
ImageLabel_5.Size = UDim2.new(0, 100, 0, 52)
ImageLabel_5.Image = "http://www.roblox.com/asset/?id=5671353704"

ImageLabel_6.Parent = Main
ImageLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_6.Position = UDim2.new(0.0805970132, 0, 0.573913038, 0)
ImageLabel_6.Size = UDim2.new(0, 354, 0, 30)
ImageLabel_6.Image = "http://www.roblox.com/asset/?id=6687663809"
