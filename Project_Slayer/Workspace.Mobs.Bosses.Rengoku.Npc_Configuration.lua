-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-04-29 16:45:59
-- Luau version 6, Types version 3
-- Time taken: 0.013616 seconds

collection_service = game:GetService("CollectionService") -- Setting global
game.ReplicatedStorage:WaitForChild("Modules")
game.ReplicatedStorage.Modules:WaitForChild("Npc_Attacks")
local tick_upvr = tick
local module_upvr = {
	Npc = nil;
	Name = "Rengoku";
	Code = "Rengoku";
	Quest_Return = "Rengoku_Killed";
	Heal = {
		Heal_Every = 1;
		CoolDown_From_Stun = 30;
		Last_Healed = 0;
		Add_Amount = 0.01;
	};
	Npc_Spawning = {
		Spawn_Time = 900;
		Last_Spawned = tick_upvr();
		Despawn_Time = 2;
		Spawned_At = Vector3.new();
		Max_Distance = 150;
		Already_Firstly_Detected_Someone = false;
		Spawn_Locations = {Vector3.new(3653.41, 670.609, -344)};
	};
	Following = {
		Following_Id = "";
		Player = nil;
		Let_Go_Distance = 150;
		Capture_Distance = 20;
		Max_Npc_Per_Player = 3;
		Follow_Type = 0;
		Lost_Goal = nil;
		Run_Away = {
			Run_HP = 0;
			Ranges = {
				Max_Range = 37;
				Min_Range = 19;
				Safe_Range = 24;
			};
			Start_Running_Range = 0;
			Look_At_Player_When_No_Walk = false;
			Look_At_When_walking_away = false;
		};
	};
	Clashing = {
		Last = 0;
		CoolDown = 0.14;
		Randomness = {1, 3};
	};
	On_Idle = {
		Move_Places = true;
		Goal_Point = nil;
		last_arrived = 0;
		delay_before_next_departure = {2, 6};
		Move_To_Locations = {Vector3.new(3597.71, 671.109, -333.90), Vector3.new(3667.78, 670.609, -408.29), Vector3.new(3700.65, 671.109, -294.36)};
	};
	Defaults = {
		WalkSpeed = 16;
		JumpPower = 50;
	};
	Run = {
		Run_Speed = 25;
		Is_Running = false;
		Run_On_Idle = {
			Distance = 20;
			Away_Or_Near = "Away";
			Enabled = false;
		};
		Run_On_Lost = {
			Distance = 30;
			Away_Or_Near = "Away";
			Enabled = false;
		};
		Run_On_Following = {
			Distance = 13;
			Away_Or_Near = "Away";
			Enabled = true;
		};
		Run_On_Running_Away = {
			Distance = 70;
			Away_Or_Near = "Near";
			Enabled = true;
		};
	};
	Attacks = {
		Last_Performed = 0;
		Perform_CoolDown = 0.5;
		Holding = nil;
		Settings = {
			Last_Stunned = 0;
			Hold_Moves_Disabled = false;
			None_Hold_Moves_Disabled = false;
			Last_Punched = 0;
			id = "";
		};
	};
	Functions_Debree = {};
	Debris = {};
}
return module_upvr
