-- Carregar WindUI
local WindUI = loadstring(game:HttpGet(
    "https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"
))()

-- Criar Janela
local Window = WindUI:CreateWindow({
    Title = "Mano Hub | Simulador De Skate Open Source",
    Icon = "door-open",
    Author = "by Sae And Leakers",
    Folder = "MeuManoHub",
    Size = UDim2.fromOffset(580, 460),
    MinSize = Vector2.new(560, 350),
    MaxSize = Vector2.new(850, 560),
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 200,
    BackgroundImageTransparency = 0.42,
    HideSearchBar = true,
    ScrollBarEnabled = false,
})

-- === Definir todos os toggles manualmente ===
-- Variáveis: AutoTrainA → AutoTrainX (24, mas usamos só até o necessário)
getgenv().AutoTrainA = false
getgenv().AutoTrainB = false
getgenv().AutoTrainC = false
getgenv().AutoTrainD = false
getgenv().AutoTrainE = false
getgenv().AutoTrainF = false
getgenv().AutoTrainG = false
getgenv().AutoTrainH = false
getgenv().AutoTrainI = false
getgenv().AutoTrainJ = false
getgenv().AutoTrainK = false
getgenv().AutoTrainL = false
getgenv().AutoTrainM = false
getgenv().AutoTrainN = false
getgenv().AutoTrainO = false
getgenv().AutoTrainP = false
getgenv().AutoTrainQ = false
getgenv().AutoTrainR = false
getgenv().AutoTrainS = false
getgenv().AutoTrainT = false
getgenv().AutoTrainU = false
getgenv().AutoTrainV = false
getgenv().AutoTrainW = false
getgenv().AutoTrainX = false

-- Função auxiliar para criar loops
local function createLoop(var, track, world)
    task.spawn(function()
        while getgenv()[var] do
            task.wait()
            game:GetService("ReplicatedStorage")
                :WaitForChild("Events")
                :WaitForChild("RequestServerAction")
                :FireServer("Gameplay","Train",{track, world})
        end
    end)
end

-- === MUNDO 1 ===
local Tab1 = Window:Tab({Title="Mundo 1", Icon="plane", Locked=false})
Tab1:Toggle({Title="Esteira 1", Callback=function(v) getgenv().AutoTrainA=v; if v then createLoop("AutoTrainA",1,1) end end})
Tab1:Toggle({Title="Esteira 2", Callback=function(v) getgenv().AutoTrainB=v; if v then createLoop("AutoTrainB",2,1) end end})
Tab1:Toggle({Title="Esteira 3", Callback=function(v) getgenv().AutoTrainC=v; if v then createLoop("AutoTrainC",3,1) end end})

-- === MUNDO 2 ===
local Tab2 = Window:Tab({Title="Mundo 2", Icon="plane", Locked=false})
Tab2:Toggle({Title="Esteira 1", Callback=function(v) getgenv().AutoTrainD=v; if v then createLoop("AutoTrainD",1,2) end end})
Tab2:Toggle({Title="Esteira 2", Callback=function(v) getgenv().AutoTrainE=v; if v then createLoop("AutoTrainE",2,2) end end})
Tab2:Toggle({Title="Esteira 3", Callback=function(v) getgenv().AutoTrainF=v; if v then createLoop("AutoTrainF",3,2) end end})

-- === MUNDO 3 ===
local Tab3 = Window:Tab({Title="Mundo 3", Icon="plane", Locked=false})
Tab3:Toggle({Title="Esteira 1", Callback=function(v) getgenv().AutoTrainG=v; if v then createLoop("AutoTrainG",1,3) end end})
Tab3:Toggle({Title="Esteira 2", Callback=function(v) getgenv().AutoTrainH=v; if v then createLoop("AutoTrainH",2,3) end end})
Tab3:Toggle({Title="Esteira 3", Callback=function(v) getgenv().AutoTrainI=v; if v then createLoop("AutoTrainI",3,3) end end})

-- === MUNDO 4 ===
local Tab4 = Window:Tab({Title="Mundo 4", Icon="plane", Locked=false})
Tab4:Toggle({Title="Esteira 1", Callback=function(v) getgenv().AutoTrainJ=v; if v then createLoop("AutoTrainJ",1,4) end end})
Tab4:Toggle({Title="Esteira 2", Callback=function(v) getgenv().AutoTrainK=v; if v then createLoop("AutoTrainK",2,4) end end})
Tab4:Toggle({Title="Esteira 3", Callback=function(v) getgenv().AutoTrainL=v; if v then createLoop("AutoTrainL",3,4) end end})

-- === MUNDO 5 ===
local Tab5 = Window:Tab({Title="Mundo 5", Icon="plane", Locked=false})
Tab5:Toggle({Title="Esteira 1", Callback=function(v) getgenv().AutoTrainM=v; if v then createLoop("AutoTrainM",1,5) end end})
Tab5:Toggle({Title="Esteira 2", Callback=function(v) getgenv().AutoTrainN=v; if v then createLoop("AutoTrainN",2,5) end end})
Tab5:Toggle({Title="Esteira 3", Callback=function(v) getgenv().AutoTrainO=v; if v then createLoop("AutoTrainO",3,5) end end})

-- === MUNDO 6 ===
local Tab6 = Window:Tab({Title="Mundo 6", Icon="plane", Locked=false})
Tab6:Toggle({Title="Esteira 1", Callback=function(v) getgenv().AutoTrainP=v; if v then createLoop("AutoTrainP",1,6) end end})
Tab6:Toggle({Title="Esteira 2", Callback=function(v) getgenv().AutoTrainQ=v; if v then createLoop("AutoTrainQ",2,6) end end})
Tab6:Toggle({Title="Esteira 3", Callback=function(v) getgenv().AutoTrainR=v; if v then createLoop("AutoTrainR",3,6) end end})

-- === MUNDO 7 ===
local Tab7 = Window:Tab({Title="Mundo 7", Icon="plane", Locked=false})
Tab7:Toggle({Title="Esteira 1", Callback=function(v) getgenv().AutoTrainS=v; if v then createLoop("AutoTrainS",1,7) end end})
Tab7:Toggle({Title="Esteira 2", Callback=function(v) getgenv().AutoTrainT=v; if v then createLoop("AutoTrainT",2,7) end end})
Tab7:Toggle({Title="Esteira 3", Callback=function(v) getgenv().AutoTrainU=v; if v then createLoop("AutoTrainU",3,7) end end})

-- === MUNDO 8 ===
local Tab8 = Window:Tab({Title="Mundo 8", Icon="plane", Locked=false})
Tab8:Toggle({Title="Esteira 1", Callback=function(v) getgenv().AutoTrainV=v; if v then createLoop("AutoTrainV",1,8) end end})
Tab8:Toggle({Title="Esteira 2", Callback=function(v) getgenv().AutoTrainW=v; if v then createLoop("AutoTrainW",2,8) end end})
Tab8:Toggle({Title="Esteira 3", Callback=function(v) getgenv().AutoTrainX=v; if v then createLoop("AutoTrainX",3,8) end end})
