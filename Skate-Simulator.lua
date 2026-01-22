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
    Transparent = true,
    Theme = "Dark",
})

-- Criar TAB única
local Tab = Window:Tab({
    Title = "Main",
    Icon = "plane",
})

-- =====================
-- VARIÁVEIS
-- =====================
local vars = {
    "AutoTrainA","AutoTrainB","AutoTrainC",
    "AutoTrainD","AutoTrainE","AutoTrainF",
    "AutoTrainG","AutoTrainH","AutoTrainI",
    "AutoTrainJ","AutoTrainK","AutoTrainL",
    "AutoTrainM","AutoTrainN","AutoTrainO",
    "AutoTrainP","AutoTrainQ","AutoTrainR",
    "AutoTrainS","AutoTrainT","AutoTrainU",
    "AutoTrainV","AutoTrainW","AutoTrainX",
    "AutoTrainY","AutoTrainZ","AutoTrainAA"
}

for _,v in ipairs(vars) do
    getgenv()[v] = false
end

-- =====================
-- FUNÇÃO DE LOOP
-- =====================
local function startLoop(var, esteira, mundo)
    task.spawn(function()
        while getgenv()[var] do
            task.wait()
            game:GetService("ReplicatedStorage")
                :WaitForChild("Events")
                :WaitForChild("RequestServerAction")
                :FireServer("Gameplay","Train",{esteira, mundo})
        end
    end)
end

-- =====================
-- MUNDO 1
-- =====================
local S1 = Tab:Section({ Title = "Mundo 1", Opened = true })

S1:Toggle({ Title="Esteira 1", Callback=function(v)
    getgenv().AutoTrainA=v; if v then startLoop("AutoTrainA",1,1) end
end})

S1:Toggle({ Title="Esteira 2", Callback=function(v)
    getgenv().AutoTrainB=v; if v then startLoop("AutoTrainB",2,1) end
end})

S1:Toggle({ Title="Esteira 3", Callback=function(v)
    getgenv().AutoTrainC=v; if v then startLoop("AutoTrainC",3,1) end
end})

-- =====================
-- MUNDO 2
-- =====================
local S2 = Tab:Section({ Title = "Mundo 2", Opened = true })

S2:Toggle({ Title="Esteira 1", Callback=function(v)
    getgenv().AutoTrainD=v; if v then startLoop("AutoTrainD",1,2) end
end})

S2:Toggle({ Title="Esteira 2", Callback=function(v)
    getgenv().AutoTrainE=v; if v then startLoop("AutoTrainE",2,2) end
end})

S2:Toggle({ Title="Esteira 3", Callback=function(v)
    getgenv().AutoTrainF=v; if v then startLoop("AutoTrainF",3,2) end
end})

-- =====================
-- MUNDO 3
-- =====================
local S3 = Tab:Section({ Title = "Mundo 3", Opened = true })

S3:Toggle({ Title="Esteira 1", Callback=function(v)
    getgenv().AutoTrainG=v; if v then startLoop("AutoTrainG",1,3) end
end})

S3:Toggle({ Title="Esteira 2", Callback=function(v)
    getgenv().AutoTrainH=v; if v then startLoop("AutoTrainH",2,3) end
end})

S3:Toggle({ Title="Esteira 3", Callback=function(v)
    getgenv().AutoTrainI=v; if v then startLoop("AutoTrainI",3,3) end
end})

-- =====================
-- MUNDO 4
-- =====================
local S4 = Tab:Section({ Title = "Mundo 4", Opened = true })

S4:Toggle({ Title="Esteira 1", Callback=function(v)
    getgenv().AutoTrainJ=v; if v then startLoop("AutoTrainJ",1,4) end
end})

S4:Toggle({ Title="Esteira 2", Callback=function(v)
    getgenv().AutoTrainK=v; if v then startLoop("AutoTrainK",2,4) end
end})

S4:Toggle({ Title="Esteira 3", Callback=function(v)
    getgenv().AutoTrainL=v; if v then startLoop("AutoTrainL",3,4) end
end})

-- =====================
-- MUNDO 5
-- =====================
local S5 = Tab:Section({ Title = "Mundo 5", Opened = true })

S5:Toggle({ Title="Esteira 1", Callback=function(v)
    getgenv().AutoTrainM=v; if v then startLoop("AutoTrainM",1,5) end
end})

S5:Toggle({ Title="Esteira 2", Callback=function(v)
    getgenv().AutoTrainN=v; if v then startLoop("AutoTrainN",2,5) end
end})

S5:Toggle({ Title="Esteira 3", Callback=function(v)
    getgenv().AutoTrainO=v; if v then startLoop("AutoTrainO",3,5) end
end})

-- =====================
-- MUNDO 6
-- =====================
local S6 = Tab:Section({ Title = "Mundo 6", Opened = true })

S6:Toggle({ Title="Esteira 1", Callback=function(v)
    getgenv().AutoTrainP=v; if v then startLoop("AutoTrainP",1,6) end
end})

S6:Toggle({ Title="Esteira 2", Callback=function(v)
    getgenv().AutoTrainQ=v; if v then startLoop("AutoTrainQ",2,6) end
end})

S6:Toggle({ Title="Esteira 3", Callback=function(v)
    getgenv().AutoTrainR=v; if v then startLoop("AutoTrainR",3,6) end
end})

-- =====================
-- MUNDO 7
-- =====================
local S7 = Tab:Section({ Title = "Mundo 7", Opened = true })

S7:Toggle({ Title="Esteira 1", Callback=function(v)
    getgenv().AutoTrainS=v; if v then startLoop("AutoTrainS",1,7) end
end})

S7:Toggle({ Title="Esteira 2", Callback=function(v)
    getgenv().AutoTrainT=v; if v then startLoop("AutoTrainT",2,7) end
end})

S7:Toggle({ Title="Esteira 3", Callback=function(v)
    getgenv().AutoTrainU=v; if v then startLoop("AutoTrainU",3,7) end
end})

-- =====================
-- MUNDO 8
-- =====================
local S8 = Tab:Section({ Title = "Mundo 8", Opened = true })

S8:Toggle({ Title="Esteira 1", Callback=function(v)
    getgenv().AutoTrainV=v; if v then startLoop("AutoTrainV",1,8) end
end})

S8:Toggle({ Title="Esteira 2", Callback=function(v)
    getgenv().AutoTrainW=v; if v then startLoop("AutoTrainW",2,8) end
end})

S8:Toggle({ Title="Esteira 3", Callback=function(v)
    getgenv().AutoTrainX=v; if v then startLoop("AutoTrainX",3,8) end
end})

-- =====================
-- MUNDO 9
-- =====================
local S9 = Tab:Section({ Title = "Mundo 9", Opened = true })

S9:Toggle({ Title="Esteira 1", Callback=function(v)
    getgenv().AutoTrainY=v; if v then startLoop("AutoTrainY",1,9) end
end})

S9:Toggle({ Title="Esteira 2", Callback=function(v)
    getgenv().AutoTrainZ=v; if v then startLoop("AutoTrainZ",2,9) end
end})

S9:Toggle({ Title="Esteira 3", Callback=function(v)
    getgenv().AutoTrainAA=v; if v then startLoop("AutoTrainAA",3,9) end
end})
