-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-04-29 14:59:40
-- Luau version 6, Types version 3
-- Time taken: 0.016655 seconds

collection_service = game:GetService("CollectionService") -- Setting global
game.ReplicatedStorage:WaitForChild("Modules")
game.ReplicatedStorage.Modules:WaitForChild("Npc_Attacks")
local tick_upvr = tick
local module_upvr = {
	Npc = nil;
	Name = "Shiron";
	Code = "Insect_Trainee";
	Quest_Return = "Insect_Trainee_killed";
	Heal = {
		Heal_Every = 1;
		CoolDown_From_Stun = 30;
		Last_Healed = 0;
		Add_Amount = 0.01;
	};
	Npc_Spawning = {
		Spawn_Time = 50;
		Last_Spawned = tick_upvr();
		Despawn_Time = 2;
		Spawned_At = Vector3.new();
		Max_Distance = 250;
		Already_Firstly_Detected_Someone = false;
		Spawn_Locations = {Vector3.new(3203.26, 368.384, -3953.4)};
	};
	Following = {
		Following_Id = "";
		Player = nil;
		Let_Go_Distance = 150;
		Capture_Distance = 30;
		Max_Npc_Per_Player = 1;
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
		Move_To_Locations = {Vector3.new(3157.18, 368.384, -3993.9), Vector3.new(3236.83, 368.384, -3990.3), Vector3.new(3192.03, 368.384, -3901.3)};
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
