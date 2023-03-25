local function GetGitModel(ModelUrl,ModelName)
	if not isfile(ModelName..".txt") then writefile(ModelName..".txt", game:HttpGet(ModelUrl.."?raw=true")) end
	local a=game:GetObjects((getcustomasset or getsynasset)(ModelName..".txt"))[1]
	a.Name=ModelName
	return a
end

local jumpscare = GetGitModel("https://github.com/thatstinknoon/hi/blob/main/U-40JumpscareModel.rbxm","u40jumpscare")
jumpscare.Parent = game.Players.LocalPlayer.PlayerGui

function JumpscareFakeScript()
	local script = jumpscare.U50Jumpscare.LocalScript
	local l__ImageLabel__1 = script.Parent.ImageLabel;
	local v2 = Random.new();
	local l__SizeValue__3 = script.Parent.SizeValue;
	script.Parent.Jumpscare:Play();
	script.Parent.Visible = true;

	for v4 = 1, 24 do
		local v5 = math.random(1, 3);
		if v5 == 1 then
			script.Parent.BackgroundColor3 = Color3.new(0, 0, 0);
			l__ImageLabel__1.ImageColor3 = Color3.new(0.819608, 0.819608, 0.819608);
		end;
		if v5 == 2 then
			script.Parent.BackgroundColor3 = Color3.new(0.737255, 0.737255, 0.737255);
			l__ImageLabel__1.ImageColor3 = Color3.new(0.266667, 0.266667, 0.266667);
		end;
		if v5 == 3 then
			script.Parent.BackgroundColor3 = Color3.new(1, 0, 0.0156863);
			l__ImageLabel__1.ImageColor3 = Color3.new(0.705882, 0, 0.0117647);
		end;
		l__ImageLabel__1.Position = UDim2.new(v2:NextNumber(0.7, 0.15), 0, v2:NextNumber(0.7, 0.15), 0);
		l__ImageLabel__1.Size = l__ImageLabel__1.Size + UDim2.new(l__SizeValue__3.Value, 0, l__SizeValue__3.Value, 0);
		l__ImageLabel__1.Rotation = math.random(-60, 60);
		l__SizeValue__3.Value = l__SizeValue__3.Value - 0.005
		wait(0);
	end;
	for v4 = 1, 24 do
		local v5 = math.random(1, 3);
		if v5 == 1 then
			script.Parent.BackgroundColor3 = Color3.new(0, 0, 0);
			l__ImageLabel__1.ImageColor3 = Color3.new(0.819608, 0.819608, 0.819608);
		end;
		if v5 == 2 then
			script.Parent.BackgroundColor3 = Color3.new(0.737255, 0.737255, 0.737255);
			l__ImageLabel__1.ImageColor3 = Color3.new(0.266667, 0.266667, 0.266667);
		end;
		if v5 == 3 then
			script.Parent.BackgroundColor3 = Color3.new(1, 0, 0.0156863);
			l__ImageLabel__1.ImageColor3 = Color3.new(0.705882, 0, 0.0117647);
		end;
		l__ImageLabel__1.Position = UDim2.new(v2:NextNumber(-0.2, 0.2), 0, v2:NextNumber(-0.2, 0.2), 0);
		l__ImageLabel__1.Size = l__ImageLabel__1.Size + UDim2.new(l__SizeValue__3.Value, 0, l__SizeValue__3.Value, 0);
		l__ImageLabel__1.Rotation = math.random(-60, 60);
		l__SizeValue__3.Value = l__SizeValue__3.Value + 0.03
		wait(0);
	end;

	game.Players.LocalPlayer.Character.Humanoid:TakeDamage(100)
	l__ImageLabel__1.ImageColor3 = Color3.new(1, 1, 1);
	script.Parent.BackgroundColor3 = Color3.new(0, 0, 0);
	script.Parent.Visible = false;
	script.Disabled = true;

	

end

JumpscareFakeScript()
