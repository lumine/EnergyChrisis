// ### Mods
// Minefactory Reloaded: Sludge, remove plastic
// Galacticraft: removed refinery, no silicon or span or smelting
// Immersive Engineering:
//   Arc furnace makes Galacticraft silicon
//   crushing titanium shards from galacticraft astroids gives titanium dust and bonus osmium dust
// Magneticraft: refinary sludge output and biodiesel inputs

// ### Metallergy

// TODO remove aluminium smelting
//furnace.remove(<minecraft:gold_ingot>);
// alternatively, you can specify the input item
//furnace.remove(<*>, <minecraft:iron_ore>);
// remove aluminum
furnace.remove(<ImmersiveEngineering:metal:1>);
furnace.remove(<GalacticraftCore:item.basicItem:5>);

// TODO add graphite rod blueprint recipie
// TODO add galacticraft rocket scematic recipies?
// TODO Minral deposits bauxite, tungston?
// TODO grinding

// # quartz and coke power into Si2 and CO2.
// the silicon smelting is already out?
furnace.remove(<GalacticraftCore:item.basicItem:2>);
//Arc Furnace
//OutputStack, InputStack, SlagOutput, Time in Ticks, Energy per Tick, AdditiveArray, RecipeTypeString //Either create your own NEI pages with custom strings or use original ones
//mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:gravel>, <minecraft:dirt> * 9, <ImmersiveEngineering:material:13>, 4600, 3600, [<ImmersiveEngineering:fluidContainers:4>], "Purifying");
mods.immersiveengineering.ArcFurnace.addRecipe(<GalacticraftCore:item.basicItem:2>, <ore:dustQuartz>, <ImmersiveEngineering:material:13>, 4600, 3600, [<ore:dustCoke>], "Purifying");

//Crusher
//OutputStack1, InputStack, Energy, OutputStack2, OutputStack2Chance //Chance in Decimals
//mods.immersiveengineering.Crusher.addRecipe(<ImmersiveEngineering:metal> * 8, <ImmersiveEngineering:storage:8>, 8000, <minecraft:iron_ingot>, 0.5);
//OutputStack
//mods.immersiveengineering.Crusher.removeRecipe(<minecraft:blaze_powder>);
//mods.immersiveengineering.Crusher.addRecipe(<ImmersiveEngineering:metal> * 8, <ImmersiveEngineering:storage:8>, 8000, <minecraft:iron_ingot>, 0.5);
// titaniumn shards in the crusher can give osmium
mods.immersiveengineering.Crusher.addRecipe(<Magneticraft:item.dust:15>, <GalacticraftMars:item.itemBasicAsteroids:4>, 8000, <Mekanism:Dust:2>, 0.85);

//Excavator
//MineralString, MineralWeight, FailChance, OreStringArray, OreChanceArray, DimensionIDArray, isWhitelistOrBlacklist //true=blacklist; false=whitelist
//mods.immersiveengineering.Excavator.addMineral("Sediment", 30, 15, ["sand", "sandstone"], [50, 15], [0, 1], false);
//MineralString
//mods.immersiveengineering.Excavator.removeMineral("Bauxite");
//MineralString + OreString, Chance
//mods.immersiveengineering.Excavator.getMineral("Magnetite").addOre("oreNickel", 0.75);
//MineralString + OreString
//mods.immersiveengineering.Excavator.getMineral("Magnetite").removeOre("oreGold");

//mods.immersiveengineering.Excavator.getMineral("Platinum").addOre("oreOsmium", 0.05);
//mods.immersiveengineering.Excavator.getMineral("Silver").addOre("oreOsmium", 0.40);
//mods.immersiveengineering.Excavator.getMineral("Nickel").addOre("oreOsmium", 0.40);
//mods.immersiveengineering.Excavator.getMineral("Bauxite").addOre("oreOsmium", 0.30);

mods.immersiveengineering.Excavator.getMineral("Silver").addOre("oreTungsten", 0.40);
mods.immersiveengineering.Excavator.getMineral("Platinum").addOre("oreTungsten", 0.75);
mods.immersiveengineering.Excavator.getMineral("Bauxite").addOre("oreTungsten", 0.30);
mods.immersiveengineering.Excavator.getMineral("Lead").addOre("oreTungsten", 0.40);
mods.immersiveengineering.Excavator.getMineral("Cassiterite").addOre("oreTungsten", 0.40);
mods.immersiveengineering.Excavator.getMineral("Uranium").addOre("oreTungsten", 0.30);

// ### Organic Chemistry

// # smelting rubber makes pleather not plastic.  Magneticraft Polimerizer is needed for plastic
furnace.remove(<*>, <ore:itemRubber>);
furnace.addRecipe(<minecraft:leather>, <ore:itemRubber>);

// # no GC refinery
recipes.remove(<GalacticraftCore:tile.refinery>);

// # Hot crude in mag refinary to light oil into Immersive refinary to fuel
//InputFluid
// change heavyoil to sludge
//mods.magneticraft.Refinery.removeRecipe(<liquid:hotcrude>);
//InputFluid, OutputFluid1, OutputFluid2, OutputFluid3
//mods.magneticraft.Refinery.addRecipe(<liquid:hotcrude> * 1000, <liquid:sludge> * 400, <liquid:lightoil> * 300, <liquid:naturalgas> * 300);
//mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel> * 16, <liquid:lightoil> * 8, <liquid:heavyoil> * 8);
// lightoil in both sides makes fuel
//mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel> * 16, <liquid:lightoil> * 12, <liquid:lava> * 4);

// # biodiesel to fuel and natralgas
mods.magneticraft.Refinery.addRecipe(<liquid:biodiesel> * 1000, <liquid:sludge> * 800, <liquid:fuel> * 100, <liquid:naturalgas> * 100);
// # hot crude to fuel and natralgas
mods.magneticraft.Refinery.addRecipe(<liquid:hotcrude> * 1000, <liquid:sludge> * 800, <liquid:fuel> * 100, <liquid:naturalgas> * 100);
// # the sludge waste product can go into a MFR sludge boiler.
