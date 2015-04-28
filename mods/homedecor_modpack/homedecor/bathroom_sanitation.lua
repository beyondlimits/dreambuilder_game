local S = homedecor.gettext

local toilet_cbox = {
	type = "fixed",
	fixed = { -6/16, -8/16, -8/16, 6/16, 9/16, 8/16 }
}

homedecor.register("toilet", {
	description = S("Toilet"),
	mesh = "homedecor_toilet_closed.obj",
	tiles = {
		"homedecor_marble_light.png",
		"homedecor_marble_light.png",
		"homedecor_marble_light.png",
		"homedecor_generic_metal_neutral.png"
	},
	selection_box = toilet_cbox,
	collision_box = toilet_cbox,
	groups = {cracky=3,},
	sounds = default.node_sound_stone_defaults(),
	on_punch = function (pos, node, puncher)
		node.name = "homedecor:toilet_open"
		minetest.set_node(pos, node)
	end,
})

homedecor.register("toilet_open", {
	mesh = "homedecor_toilet_open.obj",
	tiles = {
		"homedecor_marble_light.png",
		"homedecor_marble_light.png",
		"homedecor_marble_light.png",
		"default_water.png",
		"homedecor_generic_metal_neutral.png"
	},
	selection_box = toilet_cbox,
	collision_box = toilet_cbox,
	drop = "homedecor:toilet",
	groups = {cracky = 3,},
	--sounds = {dig = "3dforniture_dig_toilet",  gain=0.5},
	sounds = default.node_sound_stone_defaults(),
	on_punch = function (pos, node, puncher)
		node.name = "homedecor:toilet"
		minetest.set_node(pos, node)
		minetest.sound_play("homedecor_toilet_flush", {
			pos=pos,
			max_hear_distance = 5,
			gain = 1,
		})
	end,
})

-- toilet paper :-)

local tp_cbox = {
	type = "fixed",
	fixed = { -0.25, 0.125, 0.0625, 0.1875, 0.4375, 0.5 }
}

homedecor.register("toilet_paper", {
	description = S("Toilet paper"),
	mesh = "homedecor_toilet_paper.obj",
	tiles = {
		"homedecor_generic_quilted_paper.png",
		"default_wood.png"
	},
	inventory_image = "homedecor_toilet_paper_inv.png",
	selection_box = tp_cbox,
	collision_box = tp_cbox,
	groups = {snappy=2,oddly_breakable_by_hand=3,flammable=3},
	sounds = default.node_sound_defaults(),
})

--Sink

local sink_cbox = {
	type = "fixed",
	fixed = { -5/16, -8/16, 1/16, 5/16, 8/16, 8/16 }
}

homedecor.register("sink", {
	description = S("Bathroom Sink"),
	mesh = "homedecor_bathroom_sink.obj",
	tiles = {
		"homedecor_marble_light.png",
		"forniture_marble.png",
		"default_water.png"
	},
	inventory_image="homedecor_bathroom_sink_inv.png",
	selection_box = sink_cbox,
	collision_box = sink_cbox,
	groups = {cracky=2,},
	sounds = default.node_sound_stone_defaults(),
})

--Taps

homedecor.register("taps", {
	description = S("Bathroom taps/faucet"),
	mesh = "homedecor_bathroom_faucet.obj",
	tiles = {
		"homedecor_generic_metal_neutral.png",
		"homedecor_generic_metal_bright.png",
		"homedecor_generic_metal_white.png",
		"homedecor_generic_metal_bright.png"
	},
	inventory_image = "3dforniture_taps_inv.png",
	wield_image = "3dforniture_taps_inv.png",
	sunlight_propagates = true,
	selection_box = {
		type = "fixed",
		fixed = { -4/16, -7/16, 4/16, 4/16, -4/16, 8/16 },
	},
	walkable = false,
	groups = {cracky=2,},
	sounds = default.node_sound_stone_defaults(),
})

homedecor.register("taps_brass", {
	description = S("Bathroom taps/faucet (brass)"),
	mesh = "homedecor_bathroom_faucet.obj",
	tiles = {
		"homedecor_generic_metal_brass.png",
		"homedecor_generic_metal_brass.png",
		"homedecor_generic_metal_white.png",
		"homedecor_generic_metal_brass.png"
	},
	inventory_image = "3dforniture_taps_brass_inv.png",
	wield_image = "3dforniture_taps_brass_inv.png",
	sunlight_propagates = true,
	selection_box = {
		type = "fixed",
		fixed = { -4/16, -7/16, 4/16, 4/16, -4/16, 8/16 },
	},
	walkable = false,
	groups = {cracky=2,},
	sounds = default.node_sound_stone_defaults(),
})

--Shower Tray

homedecor.register("shower_tray", {
	description = S("Shower Tray"),
	tiles = {
		"forniture_marble_base_ducha_top.png",
		"forniture_marble.png"
	},
	sunlight_propagates = true,
	legacy_facedir_simple = true,
	node_box = {
		type = "fixed",
		fixed = {
			{ -0.50, -0.50, -0.50,  0.50, -0.45,  0.50, },
			{ -0.50, -0.45, -0.50,  0.50, -0.40, -0.45, },
			{ -0.50, -0.45,  0.45,  0.50, -0.40,  0.50, },
			{ -0.50, -0.45, -0.45, -0.45, -0.40,  0.45, },
			{  0.45, -0.45, -0.45,  0.50, -0.40,  0.45, },
		},
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, -0.5, 0.5, -0.4, 0.5 },
	},
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

--Shower Head

local sh_cbox = {
	type = "fixed",
	fixed = { -0.2, -0.4, -0.05, 0.2, 0.1, 0.5 }
}

homedecor.register("shower_head", {
	drawtype = "mesh",
	mesh = "homedecor_shower_head.obj",
	tiles = {
		"homedecor_generic_metal_neutral.png",
		"homedecor_shower_head.png"
	},
	inventory_image = "homedecor_shower_head_inv.png",
	description = "Shower Head",
	groups = {snappy=3},
	selection_box = sh_cbox,
	collision_box = sh_cbox,
})

local bs_cbox = {
	type = "fixed",
	fixed = { -8/16, -8/16, 1/16, 8/16, 8/16, 8/16 }
}

homedecor.register("bathroom_set", {
	drawtype = "mesh",
	mesh = "homedecor_bathroom_set.obj",
	tiles = {
		"homedecor_bathroom_set_mirror.png",
		"homedecor_bathroom_set_tray.png",
		"homedecor_bathroom_set_toothbrush.png",
		"homedecor_bathroom_set_cup.png",
		"homedecor_bathroom_set_toothpaste.png",
	},
	inventory_image = "homedecor_bathroom_set_inv.png",
	description = "Bathroom sundries set",
	groups = {snappy=3},
	selection_box = bs_cbox,
	collision_box = bs_cbox,
})

minetest.register_alias("3dforniture:toilet", "homedecor:toilet")
minetest.register_alias("3dforniture:toilet_open", "homedecor:toilet_open")
minetest.register_alias("3dforniture:sink", "homedecor:sink")
minetest.register_alias("3dforniture:taps", "homedecor:taps")
minetest.register_alias("3dforniture:shower_tray", "homedecor:shower_tray")
minetest.register_alias("3dforniture:shower_head", "homedecor:shower_head")
minetest.register_alias("3dforniture:table_lamp", "homedecor:table_lamp_off")

minetest.register_alias("toilet", "homedecor:toilet")
minetest.register_alias("sink", "homedecor:sink")
minetest.register_alias("taps", "homedecor:taps")
minetest.register_alias("shower_tray", "homedecor:shower_tray")
minetest.register_alias("shower_head", "homedecor:shower_head")
minetest.register_alias("table_lamp", "homedecor:table_lamp_off")
