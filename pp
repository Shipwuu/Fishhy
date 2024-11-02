local amount = 100 -- type ur amount here (doesnt buy exactly this amount but pretty near it do not ask why.)
local zero = 0

while amount > zero do
    local crabCagePrompt = game:GetService("Workspace").world.interactables["Crab Cage"]["Crab Cage"].purchaserompt
    fireproximityprompt(crabCagePrompt)
        if game:GetService("Players").LocalPlayer.PlayerGui.over:FindFirstChild("prompt") then
            local button = game:GetService("Players").LocalPlayer.PlayerGui.over.prompt.confirm
            firesignal(button.MouseButton1Click, game:GetService('Players').LocalPlayer)
        else
        task.wait(0.1)
        fireproximityprompt(crabCagePrompt)
    end
    task.wait(0.1)
    zero = zero + 1
end


while true do
task.wait(0.1)
game.Players.LocalPlayer.Character["Crab Cage"].Deploy:FireServer({CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
end
