local function GetGitModel(ModelUrl,ModelName)
	if not isfile(ModelName..".txt") then writefile(ModelName..".txt", game:HttpGet(ModelUrl.."?raw=true")) end
	local a=game:GetObjects((getcustomasset or getsynasset)(ModelName..".txt"))[1]
	a.Name=ModelName
	return a
end

local jumpscare = GetGitModel("https://github.com/thatstinknoon/hi/blob/main/U-10jumpscareModel.rbxm","u10jumpscare")
jumpscare.Parent = game.Players.LocalPlayer.PlayerGui

function JumpscareFakeScript()
	local script = jumpscare.U10Jumpscare.LocalScript
	
	local l__ImageLabel__1 = script.Parent.ImageLabel;
	local v2 = Random.new();
	local l__SizeValue__3 = script.Parent.SizeValue;
	script.Parent.Jumpscare:Play();
	script.Parent.Visible = true;
	for v4 = 1, 45 do
	    game.Players.LocalPlayer.Character.Humanoid:TakeDamage(4)
		local v5 = math.random(1, 3);
		if v5 == 1 then
			script.Parent.BackgroundColor3 = Color3.new(0, 0, 0);
			l__ImageLabel__1.ImageColor3 = Color3.new(1, 1, 1);
		end;
		if v5 == 2 then
			script.Parent.BackgroundColor3 = Color3.new(0, 0.917647, 1);
			l__ImageLabel__1.ImageColor3 = Color3.new(0, 0, 0);
		end;
		if v5 == 3 then
			script.Parent.BackgroundColor3 = Color3.new(0.227451, 0.858824, 1);
			l__ImageLabel__1.ImageColor3 = Color3.new(0, 0.917647, 1);
		end;
		l__ImageLabel__1.Position = UDim2.new(v2:NextNumber(0.4, 0.6), 0, v2:NextNumber(0.4, 0.6), 0);
		l__ImageLabel__1.Size = l__ImageLabel__1.Size + UDim2.new(l__SizeValue__3.Value, 0, l__SizeValue__3.Value, 0);
		l__ImageLabel__1.Rotation = math.random(-60, 60);
		l__SizeValue__3.Value = l__SizeValue__3.Value + 0.01;
		wait(0);
	end;
	l__ImageLabel__1.ImageColor3 = Color3.new(1, 1, 1);
	script.Parent.BackgroundColor3 = Color3.new(0, 0, 0);
	script.Parent.Visible = false;
	script.Disabled = true;
end

JumpscareFakeScript()
