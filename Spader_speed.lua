--this script made by dfheshal (Spader_Ascii)

local player = game.Players.LocalPlayer 
local humanoid = player.Character and player.Character:WaitForChild("Humanoid") or nil


local function onChat(message)
    
    local command, speedValue = message:match("^(;speed)%s*(%d+)$")
    
    if command and speedValue then
      
        speedValue = tonumber(speedValue)

        if speedValue and speedValue > 0 then
    
            if humanoid then
                humanoid.WalkSpeed = speedValue
                print("WalkSpeed set to " .. speedValue)
            end
        else
            print("Invalid speed value!")
        end
    end
end


player.Chatted:Connect(onChat)
