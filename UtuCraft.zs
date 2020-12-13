//import
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.potions.IPotion;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.event.PlayerSmeltedEvent;
import crafttweaker.event.PlayerCraftedEvent;
import crafttweaker.event.PlayerBreakSpeedEvent;
import crafttweaker.event.PlayerSleepInBedEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.world.IWorld;

//DePasu

events.onPlayerRightClickItem(function (event as crafttweaker.event.PlayerRightClickItemEvent) 
{
        var DePaSu = <minecraft:lingering_potion>.withTag({ench: [{lvl: 3 as short, id: 34 as short}], RepairCost: 1, HideFlags: 39, display: {Lore: ["§b鬱病をある程度抑える薬", "§b抑える程度で治すことはできない"], Name: "§5§lデパス ポーション"}});

if(DePaSu.matches(event.item)) { 
        event.player.executeCommand("effect @p clear");
        event.player.executeCommand("effect @p minecraft:nausea 10 1");
        event.player.sendChat("ｵｴｰ、、、");
}

        } 
);

//milk

events.onPlayerRightClickItem(function (event as crafttweaker.event.PlayerRightClickItemEvent)
{

if(<minecraft:milk_bucket>.matches(event.item)) {

event.player.executeCommand("kill @p");
}
 }
);

//DePaSuPotion Recipe
//minecraft:potion=ALL Potion OK

val DePaSu1 = <minecraft:lingering_potion>.withTag({ench: [{lvl: 3 as short, id: 34 as short}], RepairCost: 1, HideFlags: 39, display: {Lore: ["§b鬱病をある程度抑える薬", "§b抑える程度で治すことはできない"], Name: "§5§lデパス ポーション"}});

recipes.addShapeless("auto_gen_1041992790", DePaSu1, [<minecraft:potion>, <minecraft:sugar>, <minecraft:sugar>, <minecraft:wheat>, <minecraft:wheat>]);

//ReSpawn Event

events.onPlayerRespawn(function (event as crafttweaker.event.PlayerRespawnEvent) {
        event.player.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(10000000, 1));
        event.player.addPotionEffect(<potion:minecraft:blindness>.makePotionEffect(1000000, 0));
        event.player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(10000000, 0));
        event.player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(100, 1));
        event.player.sendChat("なんで、、、、死んだはずなのに、、どうして、、、");
        } 
);

//FurnecSmelted Event

events.onPlayerSmelted(function (event as crafttweaker.event.PlayerSmeltedEvent) {
        event.player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(50, 1));
        event.player.sendChat("ｳﾜ...ｱﾂｲ..ｵｴｰ");
        } 
);

//Crafted Event

events.onPlayerCrafted(function (event as crafttweaker.event.PlayerCraftedEvent) {
        event.player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(100, 2));
        event.player.sendChat("つ、つらい...");
        } 
);

//BreakSpeed Event 

events.onPlayerBreakSpeed(function (event as crafttweaker.event.PlayerBreakSpeedEvent) {
        event.player.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(25, 1));
        } 
);

//Bed In Event

events.onPlayerSleepInBed(function (event as crafttweaker.event.PlayerSleepInBedEvent) {
        event.player.sendChat("明日も、つらいな....");
        event.player.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(1000000, 2));
        event.player.addPotionEffect(<potion:minecraft:blindness>.makePotionEffect(1000000, 0));
        event.player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(1000000, 0));
        event.player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(200, 1));
        } 
);

//Tick Event 

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent){
	if(event.player.world.time % 6000 == 0)
{
        event.player.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(10000000, 2));
        event.player.addPotionEffect(<potion:minecraft:blindness>.makePotionEffect(1000000, 0));
        event.player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(10000000, 0));
        event.player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(100, 1));
        event.player.sendChat("ｵｴｰ､やばいまただ....");
    	}
}
);
