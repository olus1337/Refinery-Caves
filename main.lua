if game.PlaceID == 8726743209 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Refinery Cave | Item Dupe", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--Values

_G.Load = true

_G.Save = true

--Functions

function Load()
	while _G.Load == true do
		game:GetService("ReplicatedStorage").Events.ReloadSlot:InvokeServer()
	end

function Save()
	while _G.Save == true do 
		game:GetService("ReplicatedStorage").Events.ClientEvent:FireServer("SaveData")
	end

--Tabs

local Tab = Window:MakeTab({
	Name = "Dupe",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Buttons

Tab:AddButton({
	Name = "Load",
	Default = false,
	Callback = function(Value)
      	_G.Load == Value
		Load()
  	end    
})

Tab:AddButton({
	Name = "Save"
	Deafult = false,
	Callback = function(Value)
		_G.Save == Value
		Save()
	end
})
-- Dropdown:Refresh(List<table>,true)
--Dropdown:Set("dropdown option")
OrionLib:Init()
-- destroying the interface: OrionLib:Destroy()
