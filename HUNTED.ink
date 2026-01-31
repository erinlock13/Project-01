/*
Variables list here!
*/

VAR name = "" 
VAR str = 0
VAR spe = 0
VAR sea = 0
VAR token = 0
VAR day = 0
VAR lie = false
-> prologue
/* 
Functions list here!
*/
        == function new_day ==
    ~ day = day + 1
    
        == function add_token ==
    ~ token = token + 1

        == prologue ==
        Find Us.
        You hear a voice calling you.
        Find Us. 
        You try to open your eyes, but it changes nothing. The world is empty.
        Find Us. 
        You try to move your limbs, but they are stuck as if your body is submerged in concrete. 
        Find Us. 
        You hear the voice again and again repeating itself.
        Find Us.
        You have crimes atone for. 
        Find Us.
        This is not your first time. 
        Find Us.
        Let your sins be seen and washed away by your blood. 
        Find Us.
        This is your only option. 
        Find Us.
        Or We will find you. 
        Find Us.
        *[I am Saul] -> saul
        *[I am Jude] -> jude
        *[I am Sam] -> sam

        == saul ==
{!You Envious Forager}
{!You sneer at others' joy and success and cry when you cannot obtain it yourself. You shoot much higher than you can climb and blame others for it. You collect and collect and collect and collect but never give.}
{!One day, We will give you nothing, but We will come to you to collect. And you will not refuse Us.}
~ str = 2 
~ spe = 1
~ sea = 3
~ name = "Saul"
{new_day()}
+[Wake up] -> morning

        == jude ==
{!You Unfaithful Hunter.}
{!You flatter your loves and then lie and cheat them when they sleep. You feed your greed with betrayal and take more than what you deserve, wasting the parts you deem unworthy. You hold onto both hands but never embrace them. }
{!You will be broken by Us. We will provide until We won't. And when you cry out for Us, We will not come. }
~ str = 1
~ spe = 3
~ sea = 2
~ name = "Jude"
{new_day()}
+[Wake up] -> morning

        == sam ==
{!You Prideful Angler.}
{!You hold your head high but never lower it to help those around. You sabatoge and step on your peers like they are enemies. You reach the top by pushing and pulling down the others who look up to you. You think yourself an idol among men. }
{!We who you have spat upon will spit upon you. We will take apart your body and ignore your cries for We are stronger.}
~ str = 3
~ spe = 2
~ sea = 1
~ name = "Sam"
{new_day()}
+[Wake up] -> morning

/*
Inside the cabin and responses!
*/

        == morning ==
"Alright {name}, up and at 'em."
{!Your body aches as you groggily open your eyes and become blinded by sunlight pouring into the room. You attempt to block the light with your arm but the noise your friend makes while opening the curtains makes it impossible to sleep any longer. You roll over to get more comfortable, but your body soon falls onto a hard, wooden floor. Your friend laughs at your predicament.|You carefully stretch your limbs and rub your eyes. You attempt to cover yourself with your blanket, but realize it is no longer there. You look around for it but it is no in sight. You look to your friend who merely stares into the furnace, but he does not acknowledge you.| You wake suddenly and painfully and your head aches will a throbbing pain. You are cold. You feel weak. You hear trumpets, and yet you are alone. For now at least.}
{!"Damn, did the drive wear you out that much? I don't think I've ever seen you sleep so soundly."|"Breakfast's in the kitchen," he mutters without even looking at you.|You expect to see your friend waking you up like he has been, but no one is with you. You try to listen for your friends in the other rooms, but no sound comes.}
{!As you stir, you begin to remember details of last night. You and two of your buddies arrived at his hunting grounds for a getaway weekend. It was practically midnight when you arrived last night and you remember crashing on the couch from exhaustion.|You try to nudge your friend out of his stupor, but he pulls his shoulder away and continues staring.|You look through each room to see if perhaps they're just asleep, but no. It is useless.} 

    *{day == 1}"I'm tired, man. Let me sleep." -> tired_response
    *{day == 1}[Get up] -> get_up
    *{day == 2}["You okay, dude?"] -> you_okay_response
*{day > 1}[Go to the kitchen] -> kitchen

        == tired_response ==

You mumble about how you feel groggy and tired. 
"Well, alright then. But we're gonna eat some breakfest and you probably want to join us."
Your friend leaves the room into the adjoining kitchen, leaving you on the floor.
*[Join him in the kitchen] -> kitchen

        == get_up ==
You stand up and take in the lounge you were sleeping in. You do your best to fix the blankets and make it somewhat presentable as your friend leaves to adjoining kitchen. 
*[Join him in the kitchen] -> kitchen

        == you_okay_response ==
You try again to talk your friend.
He is unmoving as he responds.
"Breakfast's in the kitchen."
+[Try again] -> you_okay_response
*[Go to the kitchen] -> kitchen

        == kitchen ==
    {day == 1:
    When you step into the small kitchen, you see the friend that woke you up getting some plates from a hanging cabinet while your other friend cooks bacon and eggs on the stove.
    When he finishes cooking, you all take a plate, grab your food, and sit at the dining table in the corner
    Conversation is light and mostly filled with idle chat about how you slept. You tell your friends that you had a dream last night, but when you try to recall the details, they seem to fade.
    Your buddies laugh about it briefly before moving on.
    "Today is a great day for hunting. Or fishing. Hell, you might find some good edibles out there, too," one of them muses while looking out the window.
    "You've both been here before, but just so you remember, you're free to use whatever equipment you can find in the cabin as long as you return it by nightfall. Now, I'm going off to do my own thing, but all I ask is that you both meet me back at the campfire outside by nightfall."
    You all finish your meal and the other two head out to start their day.
}
    {day == 2:
    While eating, one of your friends glances out the window. He turns back to his food but his gaze returns back to the window in just a minute. He stares for a while until you break him out of his trance. He says nothing as he puts his plate in the sink and quickly returns to his room.
    You look to your other friend. He shrugs and continues eating.
    Something about today feels off.
    You both finish your meal and head out to start your day.
}
    {day == 3:
    The kitchen smells of burnt meat and charcoal as you desperately search. 
        {spe==3:You spot your friend's car keys on the table and snatch them up.}
    Once again, the trumpets sound from the thick woods. It occurs to you that your friends are likely somewhere in the woods. You could go find them, or you could save your skin and find a way out of these cursed woods.
}
+{day < 3}[Find equipment] -> itemslist
+{day < 3}[Leave cabin] -> cabin_b2   
    +{day == 3} [Escape] -> cabin_b2   
    +{day == 3} [Find your friends] -> cabin_b2   
    
        == itemslist ==
You look around the cabin and grab the essentials. You also manage to find three tools that might help you. Unfortunately, you can only carry one of them. 
+[Pick up the hunting rifle] -> rifle
+[Pick up the booklet] -> booklet
+[Pick up the fishing rod] -> rod
    
        == rifle ==
You pick up the standard hunting rifle along with some ammo. This should make hunting a little easier. {spe > 2: You're not sure you need this.}
~ spe = spe + 2
+[Head out] -> cabin_b2

        == booklet ==
You pick up the booklet on foragables. This should make foraging a little easier. {sea > 2: You're not sure you need this.}
+[Head out] -> cabin_b2

        == rod ==
You pick up the sturdy fishing rod. This should make fishing a little easier. {str > 2: You're not sure you need this.}
~ spe = spe + 2
+[Head out] -> cabin_b2


/*
Action spaces here!
*/

        == cabin_b2 ==
    {day == 1:
    {You step onto the porch of the cabin and take in the fresh air. {saul:These hunting grounds are absolutely gorgeous, and if you're being honest, you're envious.} {jude:It's nice to get away from the family even for just a bit. Hopefully the guys won't snitch.} {sam:These beautiful woods are just perfect for you and your amazing skills.}| }
    To the north, you hear the crashing of small waves against the shore. To the east, you see a tree towering over the rest. To the south, you spot a familar path. To the west, you can see more of the woods.
    {You gather what you need and head out.| You look to your compass. }
}
    {day == 2:
    {You step onto the porch of the cabin and a strange air hangs around you. Not bad, but certainly not good..{saul:These hunting grounds aren't as perfect as the grounds you wil have in the future.} {jude: You remember your friend asking that you don't take all the good fish. But I'm sure he won't mind too much if you did.} {sam:The wildlife is not ready for your perfect abilities!}| }
       {&You gather what you need and head out. You look to your compass.| }
}
    {day == 3: 
    You try to find any kind of equipment, but the entire cabin is empty, as if no one had ever lived there.
    The peaceful forest is no more. Whispers surround you, taunting. Where will you go?
}
+[Go north] -> boat_b1
+[Go east]  -> tree_c2
+[Go south] -> path_b3
+[Go west] -> a2
    
        == campfire_a1 ==
    {day == 1: You come across a small fire pit on the side of the lake with three logs set up to be chairs. You assume this is the campfire your friend was talking about.| You return to the campfire.}
    {day == 2: While you don't remember cleaning up the firepit area much last night, all evidence of your presence from before is gone. There are no bottles, no utensils, no plates or anything but coals that ache to be lit again.}
    {day == 3: As you near the fire pit, the unlit coals roar to life and a mountain of flames burst forth. You stumble back as birds flock to the flames and dive in, turning to ash in the pit.}
+[Go east]  -> boat_b1
+[Go south] -> a2
+{day<3}[Wait for your friends] -> end_day
    *{day == 1} [Go Fishing] -> largemouth_bass
    *{day == 2} [Go Hunting] -> goose
    
        == a2 == 
        You stand in the middle of the woods and take in the sounds of the wild. {day == 2:It is quiet.}{day == 3: A chill runs down your spine. You are being watched, {name}.}
+[Go north] -> campfire_a1
+[Go east]  -> cabin_b2
+[Go south] -> sinkhole_a3
    *{day == 1} [Go Foraging] -> curly_dock
    *{day == 2} [Go Foraging] -> purslane

        == sinkhole_a3 ==
    {day == 1: {What you thought was a large clearing from afar actually turns out to be a large and expansive sinkhole. You try to look down it, but it almost seems to suck you in as you stare at the bottomless void.| You return to the sinkhole. It's still as empty as you left it.}}
    {day == 2: The sinkhole remains where is was yesterday. Just as empty as you left it. Your friend stands by the edge looking into it.}
    {day == 3: 
    The sinkhole remains where it was yesterday. It's mostly empty, but now you can make out movement at the bottom. You want to turn away and leave, but again, the sound of trumpets pound in your ear. A voice calls to you.
    A grave. Here lies the bodies of those whose footsteps you follow. If your friends are anywhere, they will likely be here.
}
+[Go north] -> a2
+[Go east] -> path_b3
    *{day == 1} [Go Hunting] -> white_tail
    *{day == 2} [Go Foraging] -> chestnuts
    +{day == 2}[Talk to your friend] -> talk
    *{day == 3}[Jump in] -> sinkhole_inner

        == boat_b1 ==
    {day == 1: {As you travel north, the smell of the lake becomes more prominent until you fully see the expansive lake in front of you. You see the bank across from you and some men preparing to go out on their boat. You look around and find a fine-sized canoe sitting patiently.| You return to the lakeside and find the canoe waiting to be used.}}
    {day == 2: The lake seems a bit foggy, and the other side is harder to make out. The canoe continues to rest where it is.}
    {day == 3: The lake seems endless as fog covers the entire body of water save for a few inches off the shore. The water is murkey and dark.}
    {day == 3: As you observe the water, fish float to the surface mangled and torn apart, but somehow still swimming.}
    {day == 3: The canoe is still there by the lakeside... could this be a way to escape?}
+[Go east]  -> c1
+[Go south] -> cabin_b2
+[Go west] -> campfire_a1
    *{day == 1} [Go Fishing] -> lake_trout
    *{day == 2} [Go Fishing] -> salmon
    *{day == 3} [Use the canoe to escape] -> canoe

        == path_b3 ==
    You {day < 3:walk|run} along the path until it leads you to a deep ravine with a wide rope bridge hanging across it. The ravine is too big to simply jump across. {day == 1: You vaguely remember hauling your luggage across it last night in the dark.}
    {day == 2: The bridge looks a little worse for wear and the planks seemed scratched like an animal was clawing at it. Was it like that yesterday?}
    {day==3: Across the bridge you can make out your friends truck parked in the distance. If you crossed the bridge, you could drive out of here.}
+[Go north] -> cabin_b2
+[Go east]  -> c3
+[Go west] -> sinkhole_a3
    *{day == 1} [Go Hunting] -> turkey
    *{day == 2} [Go Foraging] -> chicken
    *{day == 3} [Cross the bridge to escape] -> bridge
        == c1 ==
        You stand at the lakeside observing the water for any signs of life. {day == 2: A dead fish floats to the surface in the distance and is picked up by bird.} {day == 3: The water that was once crashing peacefully now rages against you, daring you to step into the water.}
+[Go south] -> tree_c2
+[Go west] -> boat_b1
    *{day == 1} [Go Fishing] -> rainbow_trout
    *{day == 2} [Go Fishing] -> catfish

        == tree_c2 ==
    {day==1: You come across a tree that towers over the rest of the forest, making the other trees look like bushes in comparison. It's branches are long and sturdy and it's leaves are unlike any other you've seen before. You try your best to identify the tree, but it's unlike any you've ever seen. You'll have to ask your friend if he knows what type of tree it is.| You return to the giant tree. It feels almost intimidating to just stand near it.}
    {day==2: The tree stands just as it did yesterday. You once again observe it and it looks almost like a figure looking down at you. You laugh at the thought.}
    {day==3:You return to the massive tree that looms over the forest and your eardrums feel broken and useless as the trumpets' sound pierces them. Simply nearing the tree makes the noise grow even louder. Whatever is tormenting you is here. We are here.} 
+[Go north] -> c1
+[Go south] -> c3
+[Go west] -> cabin_b2
    *{day==1} [Go Foraging] -> persimmon
    *{day==2} [Go Hunting] -> skull
    *{day==3} [Confront your Judge] -> creature

        == c3 ==
        You enter a small clearing in the woods. {day==1: It's peaceful.} {day==2: It's empty, and the grass seems almost paused in time.}
+[Go north] -> tree_c2
+[Go west] -> path_b3
    *{day==1} [Go Hunting] -> coyote
    *{day==2} [Go Foraging] -> grapes

/*
Action space interactions here!
*/

        == talk ==
{You tap your friend's shoulder to get his attention. He doesn't react.| You ask your friend if he's alright. He doesn't react.| You keep trying to talk to your friend. He will not respond.| You ask him how he's doing. He cannot respond.| Stop trying. It is pointless, {name}.}
+[Try again] -> talk
+[Leave] -> sinkhole_a3

        == salmon ==
You go fishing. After some time, you feel a bite and begin reeling in.
{str > 2:  You manage to reel in the fish. It's a salmon of average size! You continue to get as many of them as you can despite the overwhelming smell.-> success1| You fail to catch anything.}
*[Go Back] -> boat_b1
        == skull ==
You stand still and observe the life around you. Soon, you hear rustling nearby and take aim. However, it seems like it's not needed.
At the base of the tree you see the pale white of bone. You go closer to inspect it and there sits a perfectly intact deer skull... except something is wrong.
The eye sockets are facing forward. They're facing you. 
And the teeth. The teeth are sharp. Why are they sharp?
Is this really a deer skull?
*[Go Back] -> tree_c2
        == chicken ==
You look around to see if you can find any edible plants. After some time, you spot something.
{sea > 1: You manage to find some chicken of the woods! You collect everything edible and leave nothing behind. -> success3| Some plants get your attention, but you fail to identify anything edible.}
*[Go Back] -> path_b3
        == purslane ==
You look around to see if you can find any edible plants. After some time, you spot something.
{sea > 0: You manage to find some purslane! You collect as much as you can and leave nothing behind. -> success4| Some plants get your attention, but you fail to identify anything edible.}
*[Go Back] -> a2
        == catfish ==
You go fishing. After some time, you feel a bite and begin reeling in.
{str > 1: You manage to reel in the fish. It's a catfish of average size! You continue to get as many of them as you can. -> success5| You fail to catch anything.}
*[Go Back] -> c1
        == goose ==
You stand still and observe the life around you. Soon, you hear rustling nearby and take aim.
{spe > 0: You are able to take down the animal. It's a Canada goose! You harvest the parts you like and leave the rest. -> success6| You fail to take down any animal in one shot.}
*[Go Back] -> campfire_a1
        == grapes ==
You look around to see if you can find any edible plants. After some time, you spot something.
{sea > 2: You manage to find some wild grapes! You collect everything edible and leave nothing behind. -> success7| Some plants get your attention, but you fail to identify anything edible.}
*[Go Back] -> c3
        == chestnuts ==
You look around to see if you can find any edible plants. After some time, you spot something.
{sea > 0: You manage to find some chestnuts! You collect everything edible and leave nothing behind. -> success8| Some plants get your attention, but you fail to identify anything edible.}
*[Go Back] -> sinkhole_a3
        == lake_trout ==
You go fishing. After some time, you feel a bite and begin reeling in.
{str > 0: You manage to reel in the fish. It's a lake trout of average size! You continue to get as many of them as you can. -> success1| You fail to catch anything.}
*[Go Back] -> boat_b1
        == success1 ==
{add_token()}
    {day ==1 :{token > 7: You hear a low rumble in the distance. It gets a little louder and you swear you feel the ground itself shake. You decide that this is probably enough for today and head to the campfire. -> end_day|-> boat_b1}}
    {day==2: {token > 15: A booming voice sounds in your ear. You are no longer welcome here. You should go back to your friends for the night.-> end_day|-> boat_b1}}
        == persimmon ==
You look around to see if you can find any edible plants. After some time, you spot something.
{sea > 2: You manage to find a persimmon tree! You collect all the edible ones and leave nothing behind. -> success2| Some plants get your attention, but you fail to identify anything edible.}
*[Go Back] -> tree_c2
        == success2 ==
{add_token()}
    {day==1:{token > 7: You hear a low rumble in the distance. It gets a little louder and you swear you feel the ground itself shake. You decide that this is probably enough for today and head to the campfire. -> end_day|-> tree_c2}}
    {day==2: {token > 15: A booming voice sounds in your ear. You are no longer welcome here. You should go back to your friends for the night.-> end_day|-> tree_c2}}
        == turkey ==
You stand still and observe the life around you. Soon, you hear rustling nearby and take aim.
{spe > 1: You are able to take down the animal. It's a wild turkey! You harvest the parts you like and leave the rest. -> success3| You fail to take down any animal in one shot.}
*[Go Back] -> path_b3
        == success3 ==
{add_token()}
    {day==1:{token > 7: You hear a low rumble in the distance. It gets a little louder and you swear you feel the ground itself shake. You decide that this is probably enough for today and head to the campfire. -> end_day|-> path_b3}}
    {day==2: {token > 15: A booming voice sounds in your ear. You are no longer welcome here. You should go back to your friends for the night.-> end_day|-> path_b3}}
        == curly_dock ==
You look around to see if you can find any edible plants. After some time, you spot something.
{sea > 1: You manage to find some curly dock! You collect as much as you can and leave nothing behind. -> success4| Some plants get your attention, but you fail to identify anything edible.}
*[Go Back] -> a2
        == success4 ==
{add_token()}
    {day==1:{token > 7: You hear a low rumble in the distance. It gets a little louder and you swear you feel the ground itself shake. You decide that this is probably enough for today and head to the campfire. -> end_day|-> a2 }}
    {day==2: {token > 15: A booming voice sounds in your ear. You are no longer welcome here. You should go back to your friends for the night.-> end_day|-> a2}}
        == rainbow_trout ==
You go fishing. After some time, you feel a bite and begin reeling in.
{str > 1: You manage to reel in the fish. It's a rainbow trout of average size! You continue to get as many of them as you can. -> success5| You fail to catch anything.}
*[Go Back] -> c1
        == success5 ==
{add_token()}
    {day==1:{token > 7: You hear a low rumble in the distance. It gets a little louder and you swear you feel the ground itself shake. You decide that this is probably enough for today and head to the campfire. -> end_day|-> c1}}
    {day==2: {token > 15: A booming voice sounds in your ear. You are no longer welcome here. You should go back to your friends for the night.-> end_day|-> c1}}
        == largemouth_bass ==
You go fishing. After some time, you feel a bite and begin reeling in.
{str > 0: You manage to reel in the fish. It's a largemouth bass of average size! You continue to get as many of them as you can. -> success6| You fail to catch anything.}
*[Go Back] -> campfire_a1
        == success6 ==
{add_token()}
    {day==1:{token > 7: You hear a low rumble in the distance. It gets a little louder and you swear you feel the ground itself shake. You decide that this is probably enough for today and head to the campfire. -> end_day|-> campfire_a1}}
    {day==2: {token > 15: A booming voice sounds in your ear. You are no longer welcome here. You should go back to your friends for the night.-> end_day|-> campfire_a1}}
        == coyote ==
You stand still and observe the life around you. Soon, you hear rustling nearby and take aim.
{spe > 1: You are able to take down the animal. It's a coyote! You harvest the parts you like and leave the rest. -> success7| You fail to take down any animal in one shot.}
*[Go Back] -> c3
        == success7 ==
{add_token()}
    {day==1:{token > 7: You hear a low rumble in the distance. It gets a little louder and you swear you feel the ground itself shake. You decide that this is probably enough for today and head to the campfire. -> end_day|-> c3}}
    {day==2: {token > 15: A booming voice sounds in your ear. You are no longer welcome here. You should go back to your friends for the night.-> end_day|-> c3}}
        == white_tail ==
You stand still and observe the life around you. Soon, you hear rustling ne{add_token()}
    {day==1:{spe > 2: You are able to take down the animal. It's a white-tailed deer! You harvest the parts you like and leave the rest. -> success8| You fail to take down any animal in one shot.}}
*[Go Back] -> sinkhole_a3
        == success8 ==
{add_token()}
    {day==1:{token > 7: You hear a low rumble in the distance. It gets a little louder and you swear you feel the ground itself shake. You decide that this is probably enough for today and head to the campfire. -> end_day|-> sinkhole_a3}}
    {day==2: {token > 15: A booming voice sounds in your ear. You are no longer welcome here. You should go back to your friends for the night.-> end_day|-> sinkhole_a3}}

        == canoe ==
You rush into the wooden canoe, push off the shore, and begin rowing furiously. Your muscles ache, but you don't stop. 
Until you see the fish swimming towards you. 
The decaying but still living fish surround the canoe and open their ruined jaws to reveal layers of sharp, bloody teeth. They jump at the boat, attempting to shred the damn thing.
*{str < 3}[Row faster and leave them behind] -> ending_2
    *{str == 3}[Row faster and leave them behind] -> ending_3

        == bridge ==
You run onto the bridge and try to keep steady. The wood seems old and likely to break under your weight but you keep going.
Until you hear a shrill scream above you. 
A flock of giant red birds with calls like screaming children circle above you. It is clear that they plan to attack. 
*{spe < 3}[Run faster and get in the truck] -> ending_4
    *{spe == 3}[Run faster and get in the truck] -> ending_5

/*
End Day and dreams!
*/

        == end_day ==
            As the sun begins to set, you {day==1: and your friends} start up a fire. You prepare some of the game you hunted and talk about your day. {day==1:{token < 8: You each exchange laugh after laugh and try to one up each other with stories.| You ask your friends if they heard or felt the rumbling. They both look confused at you before moving on.}} {day==2: At least, you try to. Only one of your friends meets you at the campfire. When you ask him where the other is, he only shrugs, looking disinterested and says he left to go home. You ask if he cleaned up after you guys last night. He stares into the fire and doesn't respond.}
    {day==1: When it's well and dark and the drinks run out, you and your friends put out the fire and head back to the cabin.} 
    {day==1: You think today was nice and peaceful.}
    {day==2: When it gets too dark, you try to put out the fire, but your friend stops you. He tells you to just go back to the cabin. You oblige.}
When you get back, you lie down on the couch again and drift into sleep once more. 
+[Sleep] -> dream

        == dream ==
    {day==1:
    {token < 8:
Find Us.
You hear a familar voice calling you.
Find Us. 
You try to open your eyes, but it once again changes nothing. The world is empty. Have you been here before?
Find Us. 
You try to move your limbs, but they are stuck as if your body is being restrained by large snakes curling around every limb.
Find Us. 
You hear the voice again and again repeating itself. But it layers and echos. It yells and whispers. You can't tell where it's coming from.
Find Us.
You have crimes atone for. And you most certainly can atone.
Find Us.
This is not your first time. Though it will be your last.
Find Us.
Let your sins be seen and washed away by your blood. Let yourself be born anew.
Find Us.
This is your only option. Or else you will cease to exist.
Find Us.
Or We will find you. And We will not be happy.
Find me {name}.
}
}
    {day==1:
    {token > 8:
Find Us.
You hear an angry voice yelling for you.
Find Us. 
You try to open your eyes, but a hand finds them first. Nails claw at your eyeballs trying to pry them out.
Find Us. 
You try to move your limbs, but they are stuck as if your body is being restrained by large snakes curling around every limb. they squeeze tighter and tighter, restricting your breath and blood flow. Your body aches.
Find Us. 
You hear the voice again and again repeating itself. But it layers and echos. It yells and whispers. You can't tell where it's coming from. It's furious.
Find Us.
You have crimes atone for. Whether you survive does not matter.
Find Us.
This is not your first time. If you are not careful, you'll never get the chance to try again.
Find Us.
Let your sins be seen and washed away by your blood. Let yourself be born anew.
Find Us.
This is your only option. We will make sure of it.
Find Us.
Or We will find you. And We will not be happy.
Find me {name}.
}
}
    {day==2:
{token < 16: 
Find me {name}.
You hear Our voice demand of you.
Find me {name}.
You try to open your eyes, but We take them first. You feel them peel away out of your skull.
Find me {name}.
You try to move your limbs, but We pull them deeper into the abyss.
Find me {name}.
You hear Our voice again and again repeating. We echo. We scream. We whisper. We are angry.
Find me {name}.
You have crimes We will make you pay for.
Find me {name}.
This is not your first time. We know this well.
Find me {name}.
Let your sins be seen and washed away by your blood spilled by Us.
Find me {name}.
This is Our only option. 
Find me {name}.
For We have found you. And We are not be impressed. 
Find me {name}.
}
}
        {day==2:{token==16:->ending_1}}
{saul:-> saul}
{jude:-> jude}
{sam: -> sam}
    

/*
Pre-ending scenes!
*/

        == sinkhole_inner ==
You jump into the sinkhole and fall into the hole. The sound of trumpets fade as you fall for what feels like hours. You fall, you fall, you fall and fall and fall and fall until you finally land on something surprisingly uninjured. Despite knowing there is light above, the area is dark. You feel around for what you landed on when you feel inhumanely cold hands. You feel around a bit more and realize quickly that it wasn't the only hand either. 
You are sitting on a pile of severed human hands. 
You quickly jump off the pile and try to find any source of light when a torch lights suddenly, revealing an iron cellar door near it.
As you observe the door, it flings open on its own reavealing a corrider leading down.
You take the stairs down and find a room filled with cells like a medieval jail each holding various monsters. Some are deer with teeth like a shark tearing the lungs out of a corpse. Another holds a giant bloody vulture stabbing a body with its beak. Each sight disturbs you more than the last. 
But one cell catches your eye. It's a cell that contains no monsters, but only a man and one that actually breathes no less. 
The man is much older than you, at least 80, and he holds his knees to his chest as he sits unmoving in the corner except for his shaky breaths. 
"You a hunter?" He questions in a raspy drawl. "Or a fisher? Or perhaps a forager?"
    *[Lie]{~ lie == true} -> sinkhole_cells 
*[Tell the truth] -> sinkhole_cells

        == sinkhole_cells ==
    {lie==true: "You liar. Your moment of judgement is nearing and you have no fear for demise, even now. Heh...I suppose I'm not surprised. I was the same..."-> vines}
    {lie==false:"I figured. I was too in my youth. But I was a selfish fool. See, these woods target people like us. Those that can't treat it right. It's not the fact that we hunt, it's the fact that we waste and destroy what was given rather than cherish it." -> vines} 

        == vines ==
As the man finishea his sentence, the stone behind him bursts forth and reveals long thorned vines lunging at you. You try to run but they are too quick and grab you, pulling you through the wall. Before you fully are taken, you see the man once again, this time, crushed by the rubble and no longer breathing.
The vines pull you through and drag you through the dirt. Your body aches when you are finally pull you to the surface. They force your body into a kneeling position as you face that same damn tree you'd seen before. 
-> creature

        == creature ==
{not vines: As you walk towards the tree, roots burst from the ground and latch onto your limbs. The pull you further to the tree and force you into a kneeling position.}
You look up at the tree that looms over you like the grim reaper. You don't know what to think.
As you try to predict where your Judge will be, the tree begins shaking. The branches you assumed to be arms flex like fingers and the tree rises higher. After a while, the ground cracks around you and your Judge reveals itself to you, {name}.
The Judge is immense. Our body of wood shakes off the dirt and our hands leave craters in the Earth. Our size rivals that of a castle. Our head finally surfaces and you feel your blood run cold as We open our eyes to reveal caverns filled with bloodied wildlife. 
{name}. We finally meet face-to-face. 
We have seen you around and We have called to you, but you have never heeded Our warnings. You decimate Our kingdom and expect Us to give you more. What will We give when our rivers no longer carry the fish that taken so much of? What will We give when Our blood no longer runs this forest since you have hunted them to extinction? What will We give when you have stolen all of our greens and left nothing behind?
We have seen your kind before. We rarely see them change. 
Tell Us, {name}. What makes you different?
*{sinkhole_cells}[Apologize for disrespecting the forest and swear to do better] -> ending_7
*[Apologize for hunting] -> ending_6
*[Beg for your life] -> ending_6

/*
Endings!
*/

        == ending_1 ==
You try to fall asleep, but you cannot rest. 
Something is calling you. 
You shut your eyes, but you can still hear it. 
And then, a thumping. 
Your friends have not returned.
The thumping becomes louder. 
What happened to your friends?
The thumping turns violent and unbearable. 
Are they alright?
The thumping draws closer and closer as if it's inside your ears.
No {name}. They are not alright. And neither will you be. 
The cabin door flies off its hinges and slams against the wall next to you. You rush out of bed and try to see what could have caused such a thing when you are rammed into and feel as though you've been shot through the back.
You try your hardest to make sense of the situation but as you look down, you realize you have a been impaled. 
You turn to look at your attacker, only to see a large deer glaring at you. It pins you to the wall with its antlers before stepping away and letting you slide off them.
You try to get up and protect yourself but another deer rams into you, this time puncturing you in the shoulder. 
The pain is too much. 
You try to get off the antler, but it is useless. 
There are more deer outside the cabin. 
The deer impaling you throws you outside onto the porch.
You try to crawl away. It is useless. 
The deer surround you.
You try to do something. Anything. It is useless, {name}.
They bite. 
They tear. 
They rip. 
They consume.
Your eyes, your fingers, your liver, your stomach, your heart, your lungs, your intenstines, your brain. 
You bite.
You tear. 
You rip.
You consume.
Take only the best, leave the worst to rot.
We bite.
We tear.
We rip.
We consume.
We take your best and leave the rest to decay alone in the woods where no one will find. 
Suffer {name}.
Just as you had made Us suffer so. 
-> END

        == ending_2 ==
You try as hard as you can, but there is no way you will make it. The fish bite onto your oar and fling themselves into the boat. The latch onto your legs, your arms, everything. 
The pain is too much. 
You drop your oar and the fish finally manage to eat a hile through your boat. Your vessel fills with water as the fish continue tearing and ripping your skin. 
You sink deeper and deeper and deeper into the ocean. 
When you bloodied and barely surviving, the fish leave you there to die. Not to consumption, but to the slow and painful death of drowning.
-> END

        == ending_3 ==
You use all your might to push through the swarm of fish. You remind yourself that you only need to get to the other side. That's it. You're almost there.
You keep going faster and faster until the fish start to sink away and leave you be. You laugh. 
You survived. Congrats.
You keep rowing to the other side until you realize your aching muscles. How long have you been rowing?
You panic. You yell out to the fog for someone to hear you, but no one does.
You are alone, {name}. Truly alone.
-> DONE

        == ending_4 ==
As you run across, you realize far too late that you will not make it.
The birds dive to you, stabbing you in the back with their beaks and carrying you off. 
The flock peaks at you while they fly, occasionally ripping your toes or fingers off and swallowing them whole. 
After many hours, the birds drop your body, still barely clinging to life, onto a cliff. 
A rock pierces through your abdomen as you left to decay alone. 
-> END

        == ending_5 ==
You dash to the other side as the flock dives to grab you, but you are much too quick. You make it to the other side and run to the truck, quickly getting and driving off. 
You laugh to yourself and you drive faster and faster and finally make it home. 
You see one of your wives standing in the driveway. 
You quickly exit the truck and run to give her a hug, but she turns away. 
You are confused until your girlfriend opens the front door to greet you.
Her eyes are glazed over, but yet she seems intent on something. 
You try to explain yourself to her, but it is not enough.
A shot rings out and you see a piece of your stomach fly out of you along with a bullet.
the world blurs as both your wife and girlfriend stand still, unwilling to save the one they thought they loved.
-> END

        == ending_6 ==
Oh? This is what you believe is the issue?
So not only are you cruel, you are also plain stupid. 
Oh {name}. 
We will do to you what has been done to us. 
Shadows tower over you from behind and with no warning you feel a creature bite into your shoulder. Another creature steps forward and rips into your legs. More come. More eat. 
The pain is too much. . 
You try to crawl away. It is useless. 
The creatures surround you.
You try to do something. Anything. It is useless, {name}.
They bite. 
They tear. 
They rip. 
They consume.
Your eyes, your fingers, your liver, your stomach, your heart, your lungs, your intenstines, your brain. 
You bite.
You tear. 
You rip.
You consume.
Take only the best, leave the worst to rot.
We bite.
We tear.
We rip.
We consume.
We take your best and leave the rest to decay alone in the woods where no one will find. 
Suffer {name}.
Just as you had made us suffer so. 
-> END

        == ending_7 ==
It's funny. 
You are only saying that because We let you, so why is that We want to believe you?
Oh {name}. 
You swear to your best then? Fine. 
You will leave these forests. You find a life outside.
And if We hear a whisper of your disrespect again...
We will not hesitate to rip you apart and leave you to rot as We have done time and time again. 
Leave, {name}. Leave and show Us what repentance looks like.
-> END






