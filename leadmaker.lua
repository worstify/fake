local E=game:GetService("ReplicatedStorage")local C=game:GetService("ReplicatedFirst")local B=game:GetService("UserInputService")local R=game:GetService("RunService")local a=game:GetService("Lighting")local A=game:GetService("Players")local n=A.LocalPlayer local g=n.PlayerGui local i=n:GetMouse()local s=workspace.CurrentCamera R.RenderStepped:Connect(function()s=workspace.CurrentCamera end)local function Z(E,C,B)local R=Instance.new(E)for E,C in pairs(C)do R[E]=C end if B~=nil then R.Parent=B end return R end local function o() end local function p() end local function q() end local function V() end local I do local E=(loadstring(game:HttpGet("https://raw.githubusercontent.com/tammmmmm/cripware-refresh/main/cripware-UI.lua")))()I=E.new("Cripware <font color=\"rgb(78, 93, 234)\">pro</font>","nemv2\\")local C={I.new_tab("http://www.roblox.com/asset/?id=7300477598");I.new_tab("http://www.roblox.com/asset/?id=7300535052");I.new_tab("http://www.roblox.com/asset/?id=7300480952"),I.new_tab("http://www.roblox.com/asset/?id=7300486042"),I.new_tab("http://www.roblox.com/asset/?id=7300489566")}do local E=C[5].new_section("menu")local B local R=E.new_sector("configs")local a local A=R.element("Scroll","config list",{options={"none"}},function(E)a:set_value({Text=E.Scroll})end)a=R.element("TextBox","config name")R.element("Button","save",nil,function()if I.values[5].menu.configs["config name"].Text~="none"then I.save_cfg(I.values[5].menu.configs["config name"].Text)end end)R.element("Button","load",nil,function()if I.values[5].menu.configs["config name"].Text~="none"then I.load_cfg(I.values[5].menu.configs["config name"].Text)end end)local function n()B=listfiles("nemv2\\")for E,C in next,B do B[E]=string.gsub(string.gsub(C,"nemv2\\",""),".txt","")A:add_value(B[E])end end n()task.spawn(function()while true do wait(1)n()end end)local g=E.new_sector("methods","Right")g.element("Combo","mouse types",{options={"target","hit"}})g.element("Dropdown","ray method",{options={"none";"findpartonray","findpartonraywithignorelist";"raycast"}})g.element("Slider","minimum ray ignore",{default={min=0,max=100;default=3}})g.element("Combo","must include",{options={"camera","character"},default={Combo={"camera","character"}}})local i=E.new_sector("player check")i.element("Toggle","free for all")i.element("Toggle","forcefield check")end do local E=C[1].new_section("aimbot")local B=E.new_sector("main");(B.element("Toggle","enabled")):add_keybind()B.element("Dropdown","origin",{options={"camera";"head"}})B.element("Dropdown","hitbox",{options={"head";"torso"}})B.element("Toggle","automatic fire")local a=C[1].new_section("antiaim")local A=a.new_sector("direction");(A.element("Toggle","enabled")):add_keybind()A.element("Dropdown","yaw base",{options={"camera";"random","spin"}})A.element("Slider","yaw offset",{default={min=-180;max=180;default=0}})A.element("Dropdown","yaw modifier",{options={"none";"jitter","offset jitter"}})A.element("Slider","modifier offset",{default={min=-180,max=180,default=0}})A.element("Toggle","force angles")local g=a.new_sector("fakelag","Right");(g.element("Toggle","enabled")):add_keybind()g.element("Dropdown","method",{options={"static","random"}})g.element("Slider","limit",{default={min=1,max=16;default=6}});(g.element("Toggle","visualize")):add_color(nil,true);(g.element("Toggle","freeze world",nil,function(E)if I.values[1].antiaim.fakelag["freeze world"].Toggle and I.values[1].antiaim.fakelag["$freeze world"].Active then(settings()).Network.IncomingReplicationLag=1000 else(settings()).Network.IncomingReplicationLag=0 end end)):add_keybind(nil,function(E)if I.values[1].antiaim.fakelag["freeze world"].Toggle and I.values[1].antiaim.fakelag["$freeze world"].Active then(settings()).Network.IncomingReplicationLag=1000 else(settings()).Network.IncomingReplicationLag=0 end end)local i=Drawing.new("Line")i.Visible=false i.Transparency=1 i.Color=Color3.new(1,1,1)i.Thickness=1 i.ZIndex=1 local Z=Vector3.new();(g.element("Toggle","no send",nil,function(E)if I.values[1].antiaim.fakelag["no send"].Toggle and I.values[1].antiaim.fakelag["$no send"].Active then local E=n.Character local C,B=E and E:FindFirstChild("HumanoidRootPart"),E and E:FindFirstChildOfClass("Humanoid")if not E or not C or not B then i.Visible=false return end Z=C.Position end end)):add_keybind(nil,function(E)if I.values[1].antiaim.fakelag["no send"].Toggle and I.values[1].antiaim.fakelag["$no send"].Active then local E=n.Character local C,B=E and E:FindFirstChild("HumanoidRootPart"),E and E:FindFirstChildOfClass("Humanoid")if not E or not C or not B then i.Visible=false return end Z=C.Position end end)local o=false local p=R.Heartbeat:Connect(function()local E=I.values[1].antiaim.fakelag["no send"].Toggle and I.values[1].antiaim.fakelag["$no send"].Active or false local C=n.Character local B,R=C and C:FindFirstChild("HumanoidRootPart"),C and C:FindFirstChildOfClass("Humanoid")if not C or not B or not R then i.Visible=false return end sethiddenproperty(B,"NetworkIsSleeping",E)i.Visible=E local a=s:WorldToViewportPoint(B.Position)i.From=Vector2.new(a.X,a.Y)local A,g=s:WorldToViewportPoint(Z)if not g then i.Visible=false end i.To=Vector2.new(A.X,A.Y)end)task.spawn(function()local E=game:GetService("NetworkClient")local C=0 while true do wait(.0625)C=math.clamp(C+1,0,I.values[1].antiaim.fakelag.limit.Slider)if I.values[1].antiaim.fakelag.enabled.Toggle and(I.values[1].antiaim.fakelag["$enabled"].Active and(n.Character and(n.Character:FindFirstChildOfClass("Humanoid")and(n.Character:FindFirstChildOfClass("Humanoid")).Health>0)))then if C==(I.values[1].antiaim.fakelag.method.Dropdown=="static"and I.values[1].antiaim.fakelag.limit.Slider or math.random(1,I.values[1].antiaim.fakelag.limit.Slider))then E:SetOutgoingKBPSLimit(9000000000)C=0 if n.Character:FindFirstChild("Fakelag")then(n.Character:FindFirstChild("Fakelag")):ClearAllChildren()else local E=Instance.new("Folder")E.Name="Fakelag"E.Parent=n.Character end if I.values[1].antiaim.fakelag.visualize.Toggle then n.Character.Archivable=true local E=n.Character:Clone()for E,C in next,E:GetDescendants()do if C.Name=="HumanoidRootPart"or C:IsA("Humanoid")or C:IsA("LocalScript")or C:IsA("Script")or C:IsA("Decal")then C:Destroy()elseif C:IsA("BasePart")or C:IsA("Meshpart")or C:IsA("Part")then if C.Transparency==1 then C:Destroy()else C.CanCollide=false C.Anchored=true C.Material="ForceField"C.Color=I.values[1].antiaim.fakelag["$visualize"].Color C.Transparency=I.values[1].antiaim.fakelag["$visualize"].Transparency C.Size=C.Size+Vector3.new(.03,.03,.03)end end pcall(function()C.CanCollide=false end)end E.Parent=n.Character.Fakelag end else E:SetOutgoingKBPSLimit(1)end else if n.Character then if n.Character:FindFirstChild("Fakelag")then(n.Character:FindFirstChild("Fakelag")):ClearAllChildren()else local E=Instance.new("Folder")E.Name="Fakelag"E.Parent=n.Character end end E:SetOutgoingKBPSLimit(9000000000)end end end)end do local E=Drawing.new("Circle")do E.Color=Color3.fromRGB(255,255,255)E.Thickness=1 E.Transparency=1 E.Radius=100 E.Visible=false R.RenderStepped:Connect(function()E.Position=B:GetMouseLocation()if I.values[2].advanced["mouse offset"].enabled.Toggle then E.Position=E.Position+Vector2.new(I.values[2].advanced["mouse offset"]["x offset"].Slider,I.values[2].advanced["mouse offset"]["y offset"].Slider)end end)end local a=C[2].new_section("aimbot")local A=a.new_sector("assist");(A.element("Toggle","enabled")):add_keybind()A.element("Dropdown","hitbox",{options={"closest";"head","torso"}})A.element("Slider","smoothing",{default={min=1;max=50;default=1}})local n=a.new_sector("silent aim");(n.element("Toggle","enabled")):add_keybind()n.element("Dropdown","hitbox",{options={"closest","head","torso"}})n.element("Slider","hitchance",{default={min=1;max=100;default=100}})local g=a.new_sector("targeting","Right")g.element("Dropdown","prioritize",{options={"crosshair";"distance","lowest hp"}})g.element("Toggle","visible check")g.element("Slider","max distance",{default={min=250;max=15000,default=15000}})local i=a.new_sector("fov","Right")i.element("Slider","fov size",{default={min=30,max=600,default=100}},function(C)E.Radius=C.Slider end);(i.element("Toggle","draw fov",nil,function(C)E.Visible=C.Toggle end)):add_color({Color=Color3.fromRGB(84,101,255)},nil,function(C)E.Color=C.Color end)i.element("Slider","sides",{default={min=15;max=100;default=100}},function(C)E.NumSides=C.Slider end)i.element("Slider","thickness",{default={min=1;max=4;default=1}},function(C)E.Thickness=C.Slider end)local s=a.new_sector("triggerbot");(s.element("Toggle","enabled")):add_keybind()s.element("Slider","reaction time (ms)",{default={min=0;max=500,default=150}})local Z=C[2].new_section("advanced")local o=Z.new_sector("mouse offset")o.element("Toggle","enabled")o.element("Slider","x offset",{default={min=-100;max=100;default=0}})o.element("Slider","y offset",{default={min=-100;max=100;default=0}})end do local E=C[3].new_section("players")local B=E.new_sector("esp");(B.element("Toggle","enabled")):add_keybind()B.element("Slider","max distance",{default={min=250;max=15000,default=15000}})local R=E.new_sector("enemies");(R.element("Toggle","box")):add_color({Color=Color3.fromRGB(255,255,255)});(R.element("Toggle","name")):add_color({Color=Color3.fromRGB(255,255,255)});(R.element("Toggle","health")):add_color({Color=Color3.fromRGB(0,255,0)});(R.element("Toggle","indicators")):add_color({Color=Color3.fromRGB(255,255,255)})R.element("Combo","types",{options={"tool";"distance"}})local a=E.new_sector("friendlies");(a.element("Toggle","box")):add_color({Color=Color3.fromRGB(255,255,255)});(a.element("Toggle","name")):add_color({Color=Color3.fromRGB(255,255,255)});(a.element("Toggle","health")):add_color({Color=Color3.fromRGB(0,255,0)});(a.element("Toggle","indicators")):add_color({Color=Color3.fromRGB(255,255,255)})a.element("Combo","types",{options={"tool","distance"}})local g=E.new_sector("out of fov","Right");(g.element("Toggle","enemies")):add_color({Color=Color3.fromRGB(84,101,255)});(g.element("Toggle","teammates")):add_color({Color=Color3.fromRGB(84,101,255)})g.element("Slider","size",{default={min=10,max=15;default=15}})g.element("Slider","offset",{default={min=100,max=700;default=400}})g.element("Combo","settings",{options={"outline";"blinking"}})local function i()for E,C in next,A:GetPlayers()do if C~=n then ApplyChams(C)end end end local s=E.new_sector("chams","Right");(s.element("Toggle","enemies",nil,i)):add_color({Color=Color3.fromRGB(141,115,245)},false,i);(s.element("Toggle","friendlies",nil,i)):add_color({Color=Color3.fromRGB(102,255,102)},false,i);(s.element("Toggle","through walls",nil,i)):add_color({Color=Color3.fromRGB(170,170,170)},false,i)local Z=E.new_sector("drawings","Right")Z.element("Dropdown","font",{options={"Plex";"Monospace","System","UI"}})Z.element("Dropdown","surround",{options={"none";"[]","--";"<>"}})local o=C[3].new_section("world")local p=o.new_sector("self");(p.element("Toggle","third person")):add_keybind()p.element("Slider","distance",{default={min=8;max=20;default=15}});(p.element("Toggle","fov changer")):add_keybind()p.element("Slider","field of view",{default={min=30;max=120,default=80}})end do local E=C[4].new_section("misc")local B=E.new_sector("character");(B.element("Toggle","walkspeed")):add_keybind()B.element("Slider","speed",{default={min=20;max=200,default=50}});(B.element("Toggle","jumppower")):add_keybind()B.element("Slider","power",{default={min=50,max=200,default=50}})B.element("Slider","height",{default={min=7,max=50;default=15}});(B.element("Toggle","noclip")):add_keybind()local a=R.Stepped:Connect(function()if not n.Character then return end if not I.values[4].misc.character.noclip.Toggle and not I.values[4].misc.character["$noclip"].Toggle then return end for E,C in pairs(n.Character:GetDescendants())do if C:IsA("BasePart")and C.CanCollide==true then C.CanCollide=false end end end)end end function ApplyChams(E)if E.Character==nil then return end local C={"Torso","UpperTorso","LowerTorso";"Left Arm","LeftUpperArm";"LeftLowerArm";"LeftHand","Right Arm","RightUpperArm","RightLowerArm","RightHand";"Left Leg";"LeftUpperLeg","LeftLowerLeg";"LeftFoot";"Right Leg","RightUpperLeg";"RightLowerLeg","RightFoot"}local B,R if E.Team~=n.Team then B=I.values[3].players.chams.enemies.Toggle R=I.values[3].players.chams["$enemies"].Color else B=I.values[3].players.chams.friendlies.Toggle R=I.values[3].players.chams["$friendlies"].Color end local a,A=I.values[3].players.chams["through walls"].Toggle,I.values[3].players.chams["$through walls"].Color local function g(E,C)local n,g=E:FindFirstChild("Inline"),E:FindFirstChild("_Outline")if not n then n=Z(C,{Name="Inline";Color3=A;Transparency=.75;ZIndex=2,AlwaysOnTop=true,AdornCullingMode="Never";Visible=B and a or false,Adornee=E})if C=="BoxHandleAdornment"then n.Size=E.Size+Vector3.new(.05,.05,.05)else n.Radius=E.Size.X/2+.15 n.Height=E.Size.Y+.3 n.CFrame=CFrame.new(Vector3.new(),Vector3.new(0,1,0))end end if not _Outline then _Outline=Z(C,{Name="_Outline",Color3=R,Transparency=.55,Transparency=.55;ZIndex=2;AlwaysOnTop=false,AdornCullingMode="Never";Visible=B,Adornee=E})if C=="BoxHandleAdornment"then _Outline.Size=E.Size+Vector3.new(.1,.1,.1)else _Outline.Radius=E.Size.X/2+.2 _Outline.Height=E.Size.Y+.35 _Outline.CFrame=CFrame.new(Vector3.new(),Vector3.new(0,1,0))end end n.Color3=A n.Visible=B and a or false _Outline.Color3=R _Outline.Visible=B n.Parent=E _Outline.Parent=E return n,_Outline end for E,B in next,E.Character:GetChildren()do if B.Name=="Head"and(not B:IsA("LocalScript")and not B:IsA("Accessory"))then g(B,"CylinderHandleAdornment")elseif table.find(C,B.Name)and(not B:IsA("LocalScript")and not B:IsA("Accessory"))then g(B,"BoxHandleAdornment")end end E.Character.ChildAdded:Connect(function(E)if E.Name=="Head"and(not E:IsA("LocalScript")and not E:IsA("Accessory"))then g(E,"CylinderHandleAdornment")elseif table.find(C,E.Name)and(not E:IsA("LocalScript")and not E:IsA("Accessory"))then g(E,"BoxHandleAdornment")end end)end A.PlayerAdded:Connect(function(E)E.CharacterAdded:Connect(function()R.RenderStepped:Wait()ApplyChams(E)end);(E:GetPropertyChangedSignal("Team")):Connect(function()ApplyChams(E)end)end)for E,C in next,A:GetPlayers()do if C~=n then ApplyChams(C)C.CharacterAdded:Connect(function()R.RenderStepped:Wait()ApplyChams(C)end);(C:GetPropertyChangedSignal("Team")):Connect(function()ApplyChams(C)end)end end;(n:GetPropertyChangedSignal("Team")):Connect(function()for E,C in next,A:GetPlayers()do ApplyChams(C)end end)local k=false local c=R.RenderStepped:Connect(function()if not I.values[2].aimbot.triggerbot.enabled.Toggle or not I.values[2].aimbot.triggerbot["$enabled"].Active then return end if I.open then return end if k then return end local E=n.Character local C,B=E and E:FindFirstChild("HumanoidRootPart"),E and E:FindFirstChildOfClass("Humanoid")if not E or not C or not B then return end local a=i.Target local g if a and(a.Parent and A:GetPlayerFromCharacter(a.Parent))then g=A:GetPlayerFromCharacter(a.Parent)end if not a or not g then return end if g==n then return end local s=g.Character local Z,o=s and s:FindFirstChild("HumanoidRootPart"),s and s:FindFirstChildOfClass("Humanoid")if not s or not Z or not o then return end if not s:FindFirstChild("Head")then return end if I.values[5].menu["player check"]["forcefield check"].Toggle and s:FindFirstChildOfClass("ForceField")then return end if not I.values[5].menu["player check"]["free for all"].Toggle and g.Team==n.Team then return end k=true task.spawn(function()if I.values[2].aimbot.triggerbot["reaction time (ms)"].Slider/1000>.016666666666667 then wait(I.values[2].aimbot.triggerbot["reaction time (ms)"].Slider/1000)end mouse1press()repeat R.RenderStepped:Wait()until not i.Target or not i.Target.Parent or A:GetPlayerFromCharacter(i.Target.Parent)~=g or A:GetPlayerFromCharacter(i.Target.Parent)==n mouse1release()k=false end)end)local P={}local Y=R.RenderStepped:Connect(function()P={}if I.values[2].aimbot.assist.enabled.Toggle or I.values[2].aimbot["silent aim"].enabled.Toggle then else return end local E=n.Character local C,B=E and E:FindFirstChild("HumanoidRootPart"),E and E:FindFirstChildOfClass("Humanoid")if not E or not C or not B then return end if I.open then return end local R=RaycastParams.new()R.FilterType=Enum.RaycastFilterType.Blacklist R.IgnoreWater=true R.FilterDescendantsInstances={s,E}local a=999999 local g=s.CFrame.Position local Z=Vector2.new(i.X,i.Y)if I.values[2].advanced["mouse offset"].enabled.Toggle then Z=Z+Vector2.new(I.values[2].advanced["mouse offset"]["x offset"].Slider,I.values[2].advanced["mouse offset"]["y offset"].Slider)end for E,C in pairs(A:GetPlayers())do local B=C.Character local a,A=B and B:FindFirstChild("HumanoidRootPart"),B and B:FindFirstChildOfClass("Humanoid")if not B or not a or not A then continue end if not B:FindFirstChild("Head")then continue end if I.values[5].menu["player check"]["forcefield check"].Toggle and B:FindFirstChildOfClass("ForceField")then continue end if not I.values[5].menu["player check"]["free for all"].Toggle and C.Team==n.Team then continue end if C==n then continue end local i for E,C in next,B:GetChildren()do if not C:IsA("LocalScript")and C.Name=="Head"then i=C break end end if not i then continue end local o=(s.CFrame.Position-a.Position).Magnitude if I.values[2].aimbot.targeting["max distance"].Slider<o then continue end local p,q=s:WorldToViewportPoint(a.Position)if not q then continue end local V=(Vector2.new(p.X,p.Y)-Z).Magnitude if not(V<I.values[2].aimbot.fov["fov size"].Slider)then continue end local k=I.values[2].aimbot.assist.hitbox.Dropdown=="head"and i or a if I.values[2].aimbot.assist.hitbox.Dropdown=="closest"then local E=s:WorldToViewportPoint(i.Position)local C=s:WorldToViewportPoint(a.Position)local B=(Vector2.new(E.X,E.Y)-Z).Magnitude local R=(Vector2.new(C.X,C.Y)-Z).Magnitude k=B<R and i or a end if I.values[2].aimbot.targeting["visible check"].Toggle then local E=k.Position-g local B=workspace:Raycast(g,E.Unit*E.Magnitude,R)if not B then continue end local a,n=B.Instance,B.Position if not a:FindFirstAncestor(C.Name)then continue end table.insert(P,{C;k,V;o,A.Health})else table.insert(P,{C;k;V;o,A.Health})end end if I.values[2].aimbot.targeting.prioritize.Dropdown=="crosshair"then table.sort(P,function(E,C)return E[3]<C[3]end)elseif I.values[2].aimbot.targeting.prioritize.Dropdown=="distance"then table.sort(P,function(E,C)return E[4]<C[4]end)elseif I.values[2].aimbot.targeting.prioritize.Dropdown=="lowest hp"then table.sort(P,function(E,C)return E[5]<C[5]end)end if I.values[2].aimbot.assist.enabled.Toggle and I.values[2].aimbot.assist["$enabled"].Active then if#P~=0 then local E=P[1]local C=E[2]local B=s:WorldToScreenPoint(C.Position)local R=Vector2.new(B.X-i.X,B.Y-i.Y)if I.values[2].advanced["mouse offset"].enabled.Toggle then R=R+Vector2.new(I.values[2].advanced["mouse offset"]["x offset"].Slider,I.values[2].advanced["mouse offset"]["y offset"].Slider)end mousemoverel(R.X/(I.values[2].aimbot.assist.smoothing.Slider+1),R.Y/(I.values[2].aimbot.assist.smoothing.Slider+1))end end end)local F local l=R.RenderStepped:Connect(function()F=nil local function E(E,C)local B=E.LookVector local R=(CFrame.new(E.Position,C)).LookVector local a=math.acos(B:Dot(R))local A=math.deg(a)return A end local C=n.Character local B,R=C and C:FindFirstChild("HumanoidRootPart"),C and C:FindFirstChildOfClass("Humanoid")if not C or not B or not R then return end if not I.values[1].aimbot.main.enabled.Toggle or not I.values[1].aimbot.main["$enabled"].Active then return end if I.open then return end if I.values[1].aimbot.main["automatic fire"].Toggle then mouse1release()end local a=RaycastParams.new()a.FilterType=Enum.RaycastFilterType.Blacklist a.IgnoreWater=true a.FilterDescendantsInstances={s;C}for E,C in pairs(A:GetPlayers())do local R=C.Character local A,g=R and R:FindFirstChild("HumanoidRootPart"),R and R:FindFirstChildOfClass("Humanoid")if not R or not A or not g then continue end if not R:FindFirstChild("Head")then continue end if I.values[5].menu["player check"]["forcefield check"].Toggle and R:FindFirstChildOfClass("ForceField")then continue end if not I.values[5].menu["player check"]["free for all"].Toggle and C.Team==n.Team then continue end if g.Health==0 then continue end if C==n then continue end local i for E,C in next,R:GetChildren()do if not C:IsA("LocalScript")and C.Name=="Head"then i=C break end end if not i then continue end local Z if I.values[1].aimbot.main.hitbox.Dropdown=="head"then for E,C in next,R:GetChildren()do if not C:IsA("LocalScript")and string.lower(C.Name)==I.values[1].aimbot.main.hitbox.Dropdown then Z=C break end end else Z=R:FindFirstChild("HumanoidRootPart")end if not Z then continue end local o=I.values[1].aimbot.main.origin.Dropdown=="camera"and s.CFrame.Position or B.Position+Vector3.new(0,1.5,0)local p=Z.Position-o local q=workspace:Raycast(o,p.Unit*p.Magnitude,a)if not q then continue end local V,k=q.Instance,q.Position if not V:FindFirstAncestor(C.Name)then continue end F={C;i}if I.values[1].aimbot.main["automatic fire"].Toggle then mouse1press()end break end end)local M=n.Character and(n.Character:FindFirstChildOfClass("Humanoid")and(n.Character:FindFirstChildOfClass("Humanoid")).WalkSpeed)or 16 local b=n.Character and(n.Character:FindFirstChildOfClass("Humanoid")and(n.Character:FindFirstChildOfClass("Humanoid")).JumpPower)or 50 local z=n.Character and(n.Character:FindFirstChildOfClass("Humanoid")and(n.Character:FindFirstChildOfClass("Humanoid")).JumpHeight)or 7.2 local e=n.Character and(n.Character:FindFirstChildOfClass("Humanoid")and(n.Character:FindFirstChildOfClass("Humanoid")).AutoRotate)or true local u=CFrame.new()local T=false local D=s.FieldOfView R.RenderStepped:Connect(function()local E=n.Character local C,B=E and E:FindFirstChild("HumanoidRootPart"),E and E:FindFirstChildOfClass("Humanoid")if not E or not C or not B then return end if I.values[4].misc.character.walkspeed.Toggle and I.values[4].misc.character["$walkspeed"].Active then B.WalkSpeed=I.values[4].misc.character.speed.Slider else B.WalkSpeed=M end if I.values[4].misc.character.jumppower.Toggle and I.values[4].misc.character["$jumppower"].Active then B.JumpPower=I.values[4].misc.character.power.Slider B.JumpHeight=I.values[4].misc.character.height.Slider else B.JumpPower=b B.JumpHeight=z end if I.values[1].antiaim.direction.enabled.Toggle and I.values[1].antiaim.direction["$enabled"].Active then B.AutoRotate=false local E do E=-math.atan2(s.CFrame.LookVector.Z,s.CFrame.LookVector.X)+math.rad(-90)if I.values[1].antiaim.direction["yaw base"].Dropdown=="random"then E=-math.atan2(s.CFrame.LookVector.Z,s.CFrame.LookVector.X)+math.rad(math.random(0,360))elseif I.values[1].antiaim.direction["yaw base"].Dropdown=="spin"then E=-math.atan2(s.CFrame.LookVector.Z,s.CFrame.LookVector.X)+(tick()*10)%360 end end local R=math.rad(I.values[1].antiaim.direction["yaw offset"].Slider)T=not T if T then if I.values[1].antiaim.direction["yaw modifier"].Dropdown=="jitter"then R=math.rad(I.values[1].antiaim.direction["modifier offset"].Slider)elseif I.values[1].antiaim.direction["yaw modifier"].Dropdown=="offset jitter"then R=R+math.rad(I.values[1].antiaim.direction["modifier offset"].Slider)end end local a=CFrame.new(C.Position)*CFrame.Angles(0,E+R,0)local function n(E)local C,B,R=E:ToOrientation()return CFrame.new(E.Position)*CFrame.Angles(0,B,0)end if I.values[1].antiaim.direction["yaw base"].Dropdown=="targets"then local E local B=9999 for C,R in next,A:GetPlayers()do if not R.Character or not R.Character:FindFirstChild("HumanoidRootPart")then continue end local a,A=s:WorldToViewportPoint(R.Character.HumanoidRootPart.Position)local n=(Vector2.new(a.X,a.Y)-Vector2.new(i.X,i.Y)).Magnitude if B>n then E=R.Character.HumanoidRootPart B=n end end if E~=nil then a=CFrame.new(C.Position,E.Position)*CFrame.Angles(0,0,0)end end u=E+R C.CFrame=n(a)else B.AutoRotate=e end if I.values[3].world.self["fov changer"].Toggle and I.values[3].world.self["$fov changer"].Active then s.FieldOfView=I.values[3].world.self["field of view"].Slider else s.FieldOfView=D end end)local U U=hookmetamethod(game,"__newindex",function(E,C,B)local R=tostring(E)if E==s and C=="CFrame"then if I.values[3].world.self["third person"].Toggle and I.values[3].world.self["$third person"].Active then B=B+s.CFrame.LookVector*-I.values[3].world.self.distance.Slider end end if not checkcaller()then if C=="FieldOfView"then D=B if I.values[3].world.self["fov changer"].Toggle and I.values[3].world.self["$fov changer"].Active then B=I.values[3].world.self["field of view"].Slider end end if C=="WalkSpeed"then M=B if I.values[4].misc.character.walkspeed.Toggle and I.values[4].misc.character["$walkspeed"].Active then B=I.values[4].misc.character.speed.Slider end end if C=="JumpPower"then b=B if I.values[4].misc.character.jumppower.Toggle and I.values[4].misc.character["$jumppower"].Active then B=I.values[4].misc.character.power.Slider end end if C=="JumpHeight"then z=B if I.values[4].misc.character.jumppower.Toggle and I.values[4].misc.character["$jumppower"].Active then B=I.values[4].misc.character.height.Slider end end if C=="AutoRotate"then e=B if I.values[1].antiaim.direction.enabled.Toggle and I.values[1].antiaim.direction["$enabled"].Active then B=false end end if R=="HumanoidRootPart"and C=="CFrame"then if I.values[1].antiaim.direction.enabled.Toggle and(I.values[1].antiaim.direction["$enabled"].Active and I.values[1].antiaim.direction["force angles"].Toggle)then B=CFrame.new(B.Position)*CFrame.Angles(0,u,0)end end return U(E,C,B)end return U(E,C,B)end)local t do R.RenderStepped:Connect(function()t=nil if n.Character and n.Character:FindFirstChildOfClass("Humanoid")then t=n.Character:FindFirstChildOfClass("Humanoid")end end)end local N N=hookmetamethod(game,"__index",function(E,C)local B=tostring(E)if not checkcaller()then if t and E==t then if C=="WalkSpeed"then return M end if C=="JumpPower"then return b end if C=="JumpHeight"then return z end end if C=="FieldOfView"then if I.values[3].world.self["fov changer"].Toggle and I.values[3].world.self["$fov changer"].Active then return I.values[3].world.self["field of view"].Slider end end if E==i then if table.find(I.values[5].menu.methods["mouse types"].Combo,string.lower(C))then local B=P[1]and P[1][2]local R=F and F[2]if R then if C=="Target"then return R elseif C=="Hit"then return R.CFrame end elseif B then if not I.values[2].aimbot["silent aim"].enabled.Toggle or not I.values[2].aimbot["silent aim"]["$enabled"].Active then return N(E,C)end if not(math.random(1,100)<=I.values[2].aimbot["silent aim"].hitchance.Slider)then return N(E,C)end if C=="Target"then return B elseif C=="Hit"then return B.CFrame end end end end end return N(E,C)end)local G G=hookmetamethod(game,"__namecall",function(E,...)local C={...}local B=tostring(getnamecallmethod())if checkcaller()then return G(E,unpack(C))end if string.lower(B)==I.values[5].menu.methods["ray method"].Dropdown then local R if B=="Raycast"then R=C[3].FilterDescendantsInstances elseif B=="FindPartOnRayWithIgnoreList"then R=C[2]end if R then if table.find(I.values[5].menu.methods["must include"].Combo,"camera")and not table.find(R,s)then return G(E,...)end if table.find(I.values[5].menu.methods["must include"].Combo,"character")and not table.find(R,n.Character)then return G(E,...)end end local a=P[1]and P[1][2]local A=F and F[2]if A then if B=="Raycast"then C[2]=(A.Position-C[1]).unit*500 elseif B=="FindPartOnRayWithIgnoreList"or B=="FindPartOnRay"then C[1]=Ray.new(s.CFrame.Position,(A.Position-s.CFrame.Position).unit*500)end elseif a then if not I.values[2].aimbot["silent aim"].enabled.Toggle or not I.values[2].aimbot["silent aim"]["$enabled"].Active then return G(E,...)end if not(math.random(1,100)<=I.values[2].aimbot["silent aim"].hitchance.Slider)then return G(E,...)end if B=="Raycast"then C[2]=(a.Position-C[1]).unit*500 elseif B=="FindPartOnRayWithIgnoreList"or B=="FindPartOnRay"then C[1]=Ray.new(s.CFrame.Position,(a.Position-s.CFrame.Position).unit*500)end end end return G(E,unpack(C))end)local r={}local m={}m.Settings={Line={Thickness=1;Color=Color3.fromRGB(0,255,0)};Text={Size=13;Center=true,Outline=true,Font=Drawing.Fonts.Plex;Color=Color3.fromRGB(255,255,255)};Square={Thickness=1,Color=I.values[3].players.enemies["$box"].Color,Filled=false},Triangle={Color=Color3.fromRGB(255,255,255),Filled=true,Visible=false,Thickness=1}}function m.New(E,C,B)local R=Drawing.new(E)for E,C in pairs(m.Settings[E])do R[E]=C end if C then R.Color=Color3.new(0,0,0)R.Thickness=3 end return R end function m.Add(E)if not r[E]then r[E]={Offscreen=m.New("Triangle",nil,"Offscreen"),Name=m.New("Text",nil,"Name");Tool=m.New("Text",nil,"Tool"),Distance=m.New("Text",nil,"Distance"),BoxOutline=m.New("Square",true,"BoxOutline"),Box=m.New("Square",nil,"Box");HealthOutline=m.New("Line",true,"HealthOutline"),Health=m.New("Line",nil,"Health")}end end for E,C in pairs(A:GetPlayers())do if C~=n then m.Add(C)end end A.PlayerAdded:Connect(m.Add)A.PlayerRemoving:Connect(function(E)if r[E]then for E,C in pairs(r[E])do if C then C:Remove()end end r[E]=nil end end)local X=(game:GetService("RunService")).RenderStepped:Connect(function()for E,C in pairs(A:GetPlayers())do local B=r[C]if not B then continue end for E,C in pairs(B)do C.Visible=false end if not I.values[3].players.esp.enabled.Toggle or not I.values[3].players.esp["$enabled"].Active then continue end local R=C.Character local a,A=R and R:FindFirstChild("HumanoidRootPart"),R and R:FindFirstChildOfClass("Humanoid")if not R or not a or not A then continue end local g=(s.CFrame.Position-a.Position).Magnitude if I.values[3].players.esp["max distance"].Slider<g then continue end local i,Z=s:WorldToViewportPoint(a.Position)if not Z then local E=I.values[3].players["out of fov"]if C.Team~=n.Team and not E.enemies.Toggle then continue end if C.Team==n.Team and not E.teammates.Toggle then continue end local R=a.Position local A=s.CFrame.Position local g=s.CFrame.LookVector local i=g:Dot(a.Position-s.CFrame.Position)if i<=0 then R=A+((R-A)-(g*i)*1.01)end local Z,o=s:WorldToScreenPoint(R)if not o then local R=B.Offscreen local a=800-I.values[3].players["out of fov"].offset.Slider local A=I.values[3].players["out of fov"].size.Slider local g=s.ViewportSize/2 local i=(Vector2.new(Z.X,Z.Y)-g).Unit local o=math.atan2(i.X,i.Y)local p=((math.pi*2)/a)*o local q=g+i*math.min(math.abs(((g.Y-a)/math.sin(p))*a),math.abs(((g.X-a)/math.cos(p))/2))local V=Vector2.new(math.floor(q.X-A/2),math.floor((q.Y-A/2)-15))local function k(E,C,B)B=math.rad(B)local R=(math.cos(B)*(E.X-C.X)-math.sin(B)*(E.Y-C.Y))+C.X local a=(math.sin(B)*(E.X-C.X)+math.cos(B)*(E.Y-C.Y))+C.Y return Vector2.new(math.floor(R),math.floor(a))end local c=math.floor(-math.deg(o))-47 R.PointA=k(V+Vector2.new(A,A),V,c)R.PointB=k(V+Vector2.new(-A,-A),V,c)R.PointC=k(V+Vector2.new(-A,A),V,c)R.Color=C.Team~=n.Team and E["$enemies"].Color or E["$teammates"].Color R.Filled=not table.find(I.values[3].players["out of fov"].settings.Combo,"outline")and true or false if table.find(I.values[3].players["out of fov"].settings.Combo,"blinking")then R.Transparency=(math.sin(tick()*5)+1)/2 else R.Transparency=1 end R.Visible=true end else local E=C.Team~=n.Team and I.values[3].players.enemies or I.values[3].players.friendlies local R=((s:WorldToViewportPoint(a.Position-Vector3.new(0,3,0))).Y-(s:WorldToViewportPoint(a.Position+Vector3.new(0,2.6,0))).Y)/2 local Z=Vector2.new(math.floor(R*1.5),math.floor(R*1.9))local o=Vector2.new(math.floor(i.X-(R*1.5)/2),math.floor(i.Y-(R*1.6)/2))local p=B.Name local q=B.Tool local V=B.Distance local k=B.Box local c=B.BoxOutline local P=B.Health local Y=B.HealthOutline if E.box.Toggle then k.Size=Z k.Position=o k.Visible=true k.Color=E["$box"].Color c.Size=Z c.Position=o c.Visible=true end if E.health.Toggle then P.From=Vector2.new(o.X-5,o.Y+Z.Y)P.To=Vector2.new(P.From.X,P.From.Y-(A.Health/A.MaxHealth)*Z.Y)P.Color=E["$health"].Color P.Visible=true Y.From=Vector2.new(P.From.X,(o.Y+Z.Y)+1)Y.To=Vector2.new(P.From.X,(P.From.Y-1*Z.Y)-1)Y.Visible=true end local function F(E,C)local B=""local R=""local a=false if C=="[]"then E=string.gsub(E,"%[","")E=string.gsub(E,"%[","")B="["R="]"elseif C=="--"then B="-"R="-"a=true elseif C=="<>"then B="<"R=">"a=true end if a then E=string.gsub(E,B,"")E=string.gsub(E,R,"")end return B..(E..R)end if E.name.Toggle then p.Text=F(C.Name,I.values[3].players.drawings.surround.Dropdown)p.Position=Vector2.new(Z.X/2+o.X,o.Y-16)p.Color=E["$name"].Color p.Font=Drawing.Fonts[I.values[3].players.drawings.font.Dropdown]p.Visible=true end if E.indicators.Toggle then local B=(Z.Y+o.Y)+1 if table.find(E.types.Combo,"tool")then local R=C.Character:FindFirstChildOfClass("Tool")and(C.Character:FindFirstChildOfClass("Tool")).Name or"None"R=F(R,I.values[3].players.drawings.surround.Dropdown)q.Text=R q.Position=Vector2.new(Z.X/2+o.X,B)q.Color=E["$indicators"].Color q.Font=Drawing.Fonts[I.values[3].players.drawings.font.Dropdown]q.Visible=true B=B+15 end if table.find(E.types.Combo,"distance")then V.Text=F(math.floor(g).."m",I.values[3].players.drawings.surround.Dropdown)V.Position=Vector2.new(Z.X/2+o.X,B)V.Color=E["$indicators"].Color V.Font=Drawing.Fonts[I.values[3].players.drawings.font.Dropdown]V.Visible=true B=B+15 end end end end end)