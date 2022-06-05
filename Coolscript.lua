local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Scriptz", "BloodTheme")

local Tab = Window:NewTab("LocalPlayer")

local Tab1 = Window:NewTab("toggle gui")

local Section = Tab:NewSection("Player scripts")


Section:NewSlider("Walkspeed(goes up to 10000)", "noi", 10000, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("jumppower", "no", 10000, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

local Section = Tab1:NewSection("keybind")


Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

