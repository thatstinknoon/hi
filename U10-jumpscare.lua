-- Gui to Lua
-- Version: 3.2

-- Instances:

local U10SCARY = Instance.new("ScreenGui")
local U10Jumpscare = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")

--Properties:

U10SCARY.Name = "U10SCARY"
U10SCARY.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
U10SCARY.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

U10Jumpscare.Name = "U10Jumpscare"
U10Jumpscare.Parent = U10SCARY
U10Jumpscare.Active = true
U10Jumpscare.AnchorPoint = Vector2.new(0.5, 0.5)
U10Jumpscare.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
U10Jumpscare.Position = UDim2.new(0.5, 0, 0.5, 0)
U10Jumpscare.Size = UDim2.new(2, 0, 2, 0)
U10Jumpscare.Visible = false
U10Jumpscare.ZIndex = 50

ImageLabel.Parent = U10Jumpscare
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(0.25, 0, 0.300000012, 0)
ImageLabel.ZIndex = 51
ImageLabel.Image = "rbxassetid://12885616545"
ImageLabel.ScaleType = Enum.ScaleType.Fit
ImageLabel.Visible = false

-- Scripts:

local function NVGQ_fake_script() -- U10Jumpscare.LocalScript 
	local script = Instance.new('LocalScript', U10Jumpscare)
	
	local l__ImageLabel__1 = script.Parent.ImageLabel;
	local v2 = Random.new();
	local l__SizeValue__3 = script.Parent.SizeValue;
	script.Parent.Jumpscare:Play();
	script.Parent.Visible = true;
	for v4 = 1, 45 do
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
	game.Players.LocalPlayer.Character.Humanoid:TakeDamage(100)
	l__ImageLabel__1.ImageColor3 = Color3.new(1, 1, 1);
	script.Parent.BackgroundColor3 = Color3.new(0, 0, 0);
	script.Parent.Visible = false;
	script.Disabled = true;
	
end
coroutine.wrap(NVGQ_fake_script)()
