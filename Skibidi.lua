getgenv().Config = {
    AutoChooseTeam = true,  
    Team = "Pirates"--  "Marines"
}

local function setTeam(teamName)
    local args = {
        "SetTeam",
        teamName
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end

spawn(function()
    while wait() do
        local repStorage = game:GetService("ReplicatedStorage")
        if repStorage:FindFirstChild("Remotes") and repStorage.Remotes:FindFirstChild("CommF_") then
            if getgenv().Config.AutoChooseTeam then
                setTeam(getgenv().Config.Team)
            end
            break
        end
    end
end)
--------------------------------------------------------------------------------------------------------------------------------------------

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Pear Cat Hub | Blox Fruit | Ver 0.1,
    SubTitle = "by @rceowner",
    TabWidth = 160,
    Size =  Device, --UDim2.fromOffset(480, 360), --default size (580, 460)
    Acrylic = false, -- การเบลออาจตรวจจับได้ การตั้งค่านี้เป็น false จะปิดการเบลอทั้งหมด
    Theme = "Rose", --Amethyst
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    --[[ Tabs --]]
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Player = Window:AddTab({ Title = "Player", Icon = "" }),
    Others = Window:AddTab({ Title = "Others", Icon = "" }),
}
local Options = Fluent.Options
do

--Place Id Check
local id = game.PlaceId
if id == 2753915549 then World1 = true; elseif id == 4442272183 then World2 = true; elseif id == 7449423635 then World3 = true; else game:Shutdown() end;

game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local a=Instance.new("ScreenGui")local b=Instance.new("ImageButton")local c=Instance.new("UICorner")a.Parent=game.Players.LocalPlayer:WaitForChild("PlayerGui")a.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;b.Parent=a;b.BackgroundColor3=Color3.fromRGB(255,255,255)b.BorderColor3=Color3.fromRGB(0,0,0)b.BorderSizePixel=0;b.Position=UDim2.new(0.103761353,0,0.214939028,0)b.Size=UDim2.new(0,58,0,55)b.Image="rbxassetid://83190276951914"c.Parent=b;local function d()local e=Instance.new('LocalScript',b)e.Parent.MouseButton1Click:Connect(function()game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.End,false,game)end)end;coroutine.wrap(d)()
