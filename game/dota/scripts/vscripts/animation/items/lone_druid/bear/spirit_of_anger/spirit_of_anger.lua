--============ Copyright (c) Valve Corporation, All rights reserved. ==========
--
-- source1import auto-generated animation script
-- local changes will be overwritten if source1import if run again on this asset
--
-- qc:  models/items/lone_druid/bear/spirit_of_anger/spirit_of_anger.qc
-- mdl: items/lone_druid/bear/spirit_of_anger/spirit_of_anger.mdl
--
--=============================================================================

model:CreateSequence(
	{
		name = "sb_turn_center",
		delta = true,
		fadeInTime = 0,
		fadeOutTime = 0,
		fps = 30,
		framerangesequence = "spirit_of_anger_anim_turnposecenter.dmx",
		cmds = {
			{ cmd = "sequence", sequence = "spirit_of_anger_anim_turnposecenter.dmx", dst = 1 },
			{ cmd = "fetchframe", sequence = "center_pose", frame = 0, dst = 2 },
			{ cmd = "subtract", dst = 1, src = 2 },
			{ cmd = "slerp", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "sb_turn_left",
		delta = true,
		fadeInTime = 0,
		fadeOutTime = 0,
		fps = 30,
		framerangesequence = "spirit_of_anger_anim_turnposeleft.dmx",
		cmds = {
			{ cmd = "sequence", sequence = "spirit_of_anger_anim_turnposeleft.dmx", dst = 1 },
			{ cmd = "fetchframe", sequence = "center_pose", frame = 0, dst = 2 },
			{ cmd = "subtract", dst = 1, src = 2 },
			{ cmd = "slerp", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "sb_turn_right",
		delta = true,
		fadeInTime = 0,
		fadeOutTime = 0,
		fps = 30,
		framerangesequence = "spirit_of_anger_anim_turnposeright.dmx",
		cmds = {
			{ cmd = "sequence", sequence = "spirit_of_anger_anim_turnposeright.dmx", dst = 1 },
			{ cmd = "fetchframe", sequence = "center_pose", frame = 0, dst = 2 },
			{ cmd = "subtract", dst = 1, src = 2 },
			{ cmd = "slerp", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "sb_turns",
		delta = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		poseParamX = model:CreatePoseParameter( "turn", -1, 1, 0, false ),
		sequences = {
			{ "sb_turn_left", "sb_turn_center", "sb_turn_right" }
		}
	}
)


model:CreateSequence(
	{
		name = "sb_run_or",
		looping = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		sequences = {
			{ "@sb_run_or" }
		},
		addlayer = { "sb_turns" },
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 },
			{ name = "AttackCheck", weight = 1 }
		}
	}
)


model:CreateSequence(
	{
		name = "sb_run",
		looping = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		sequences = {
			{ "@sb_run" }
		},
		addlayer = { "sb_turns" },
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 }
		}
	}
)


model:CreateSequence(
	{
		name = "sb_run_injured",
		looping = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		sequences = {
			{ "@sb_run_injured" }
		},
		addlayer = { "sb_turns" },
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 },
			{ name = "injured", weight = 1 }
		}
	}
)


model:CreateSequence(
	{
		name = "sb_run_haste",
		looping = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		sequences = {
			{ "@sb_run_haste" }
		},
		addlayer = { "sb_turns" },
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 },
			{ name = "haste", weight = 1 }
		}
	}
)
