// ### Mods
// Minefactory Reloaded: Sludge, remove plastic
// Galacticraft: removed refinary
// Immersive Engineering: refinary fuel
// Magneticraft: refinary sludge output and biodiesel input

// ### Metallergy

// TODO remove aluminium smelting
// TODO add graphite rod blueprint recipie
// TODO Minral deposits bauxite, tungston
// TODO grinding
// TODO Arc Furnace
//Arc Furnace
//OutputStack, InputStack, SlagOutput, Time in Ticks, Energy per Tick, AdditiveArray, RecipeTypeString //Either create your own NEI pages with custom strings or use original ones
//mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:gravel>, <minecraft:dirt> * 9, <ImmersiveEngineering:material:13>, 4600, 3600, [<ImmersiveEngineering:fluidContainers:4>], "Purifying");
// quartz and coke power into Si2 and CO2.
mods.immersiveengineering.ArcFurnace.addRecipe(<GalacticraftCore:item.basicItem:2>, <ore:dustQuartz>, <ImmersiveEngineering:material:13>, 4600, 3600, [<ore:dustCoke>], "Purifying");

// ### Organic Chemistry

// # no GC refinery
recipes.remove(<GalacticraftCore:tile.refinery>);

// TODO add pleather recipie smelted rubber?

// # Hot crude in mag refinary to light oil into Immersive refinary to fuel
//InputFluid
// change heavyoil to sludge
//mods.magneticraft.Refinery.removeRecipe(<liquid:hotcrude>);
//InputFluid, OutputFluid1, OutputFluid2, OutputFluid3
//mods.magneticraft.Refinery.addRecipe(<liquid:hotcrude> * 1000, <liquid:sludge> * 400, <liquid:lightoil> * 300, <liquid:naturalgas> * 300);
//mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel> * 16, <liquid:lightoil> * 8, <liquid:heavyoil> * 8);
// lightoil in both sides makes fuel
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel> * 16, <liquid:lightoil> * 12, <liquid:lava> * 4);

// # biodiesel to fuel and natralgas
mods.magneticraft.Refinery.addRecipe(<liquid:biodiesel> * 1000, <liquid:sludge> * 400, <liquid:fuel> * 300, <liquid:naturalgas> * 300);
// # the sludge waste product can go into a MFR sludge boiler.

// TODO remove plastic powder smelt from rubber
//furnace.remove(<>);