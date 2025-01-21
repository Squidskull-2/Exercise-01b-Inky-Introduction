/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 * Knot structure
 * Recurring choices
 * Conditionals in descriptions
 * Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> grand_hall

== grand_hall ==
You enter the Grand Hall, a place of legend that few have seen. Just like the stories, it is easily the biggest room you have ever been in. Golden pillars erupt from the floor to support the enourmous ceiling that seems to be never-ending.
There are several rooms branching off from the hall, two on the left and two on the right, and a giant throne straight ahead of you. Nobody is in sight, but you notice strange markings on the floor leading up to the throne.
+ [Enter the front left hall] -> front_left
+ [Enter the front right hall] -> front_right
+ [Enter the back left hall] -> back_left
+ [Enter the back right hall] -> back_right

== front_left ==
As you enter the front left hall, everything around you seems to get foggy. The further you walk in, the harder it is to see.
+ [Continue down the hall] -> grand_hall
+ [Turn back] -> grand_hall
* {note_read} [Close your eyes and walk forward] -> gods_hall

== front_right ==
The right hallway is much smaller than the Grand Hall, and you feel a draft of wind push past you. {!A piece of paper flies past you.} You hear the sound of dripping water further ahead. 
+ [Walk further down the hallway] -> flooded_room
+ [Turn back] -> grand_hall

== flooded_room ==
Walking further down the hall brings you to a strange place. You think it shouldn't exist here, but who cares?
The hall widens up to reveal a beautiful pond, surrounded by lush trees and filled with colorful fish. As you approach the edge of the water, you see several fish swimming around without a care in the world.
+ [Try to grab a fish] -> fish_fail
* {fishing_rod_pickup} [Cast fishing rod] -> fish_success
+ [Turn back] -> front_right

== fish_fail ==
You reach your hands into the water, attempting to take hold of the elusive creatures. One lands in your grasp! You take your hands out, clutching onto your prize. The fish is slippery. Too slippery. It flails out of your hands and lands back in the pond, returning to its boring life of swimming.
+ [Feel embarrassed] -> flooded_room

== fish_success ==
You cast your fishing rod into the pond, and you wait. And wait. And wait. And... woah! Something pulls against the line, and you fight to bring it up and out of the water.
* [Continue reeling in the line] -> fish_success_cont

== fish_success_cont ==
You reel in the line and pull up the rod as hard as you can...
And you catch a fish! Congratulations!
* [Collect fish] -> flooded_room

== back_left ==
You walk towards the back left hallway, and your vision is filled with light. As soon as it appeared, it went away. The only thing in this hallway is {not fishing_rod_pickup: what looks to be a fishing rod placed on} a golden table.
* [Pick up fishing rod] -> fishing_rod_pickup
+ [Turn back] -> grand_hall

== fishing_rod_pickup ==
You pick up the fishing rod, noting its light weight and strong durability.
* [Turn back] -> back_left

== back_right ==
You walk into the back right hallway, but there's nothing around. The hallway ends with an empty wall with {not front_right: nothing remarkable around. | a note on the ground.}
+ [Turn back] -> grand_hall
+ {front_right} [Read note] -> note_read

== note_read ==
The note reads "The fog misplaces you if you can see it. Walking through with your vision obstructed seems to remove this effect, but be careful. I haven't tested this yet.
J.R."
 + [Turn back] -> grand_hall

== gods_hall ==
You close your eyes and wander aimlessly through the fog. After a few minutes, you start to hear people talking.
* [Keep your eyes closed and continue walking forward] -> wall_bonk
* [Open your eyes] -> gods_room

== wall_bonk ==
You continue following the note's directions.
...
Bonk! That must have hurt.
You reach your hands out and find a wall, and the voices you heard earlier let out a group of chuckles.
* [Open your eyes] -> gods_room

== gods_room ==
You look around and find yourself in a very large room, even larger than the Grand Hall. There is a table with 8 chairs around it, all filled with people wearing fancy suits and dresses.
They look at you, waiting to hear what you have to say.
* [Introduce yourself] -> gods_conversation

== gods_conversation ==
You introduce yourself, and the gods seem unimpressed.
"Something smells fishy about you," says one of the gods. "But you found us anyways."
"What is it you seek?"
* [You seek fame] -> fame
* [You seek fortune] -> fortune
* {fish_success_cont} [You seek fish!] -> fish_seeker

== fame ==
One of the goddesses speaks up:
"You seek fame, do you?"
Suddenly, the gust of wind you felt earlier comes back. It's stronger. Much stronger.
"If you wish for fame so greatly, then we shall grant it to you. You will be the most famous of your kind!"
* [Accept the boon] -> fame_end

== fame_end ==
No sooner have the words left your mouth to accept your new fame than you find yourself somewhere entirely new to you.
It's nothing like anywhere you've been before.
You seem to be floating.
* [Reach your hands out] -> fame_end_cont

== fame_end_cont ==
You try to reach your hands out, and all you see are fins.
You have been turned into a goldfish.
The goddess did keep her promise though, as the fishermen of the world seek you out. You are the biggest goldfish in the world, and you avoid capture for the rest of eternity. 
-> END

== fortune ==
The god from earlier speaks up:
"Like many before you, you want fortune. I will grant you your wish."
* [Accept the boon] -> fortune_end

== fortune_end ==
You accept the boon, and everything goes dark. Minutes pass, and the darkness is still there.
* [Continue waiting] -> fortune_end_cont

== fortune_end_cont ==
You keep waiting. You feel something fly past your fin. You open your mouth, and eat the tiny fish that mistook your light for safety and food.
* [My fin? Fish?] -> fortune_final

== fortune_final ==
You open your eyes and see a light dangling from your head. 
You are an angler fish, and your fortune is a large amount of food that seems to just flow straight towards you.
There is nothing you can do now, except live out the rest of your angler-fish-life consuming the riches of the deep.
-> END

== fish_seeker ==
You pull out the fish you caught earlier, and explain that all you want in life is to fish.
"I knew I smelled something fishy about you!" Says one of the gods.
"We needed a ninth god, we couldn't ever decide on anything. Gerald wanted sausages for dinner again, and because none of us have power over food, he gets his say!"
The gods and goddesses look towards you with admiration, and say in unison,
"Please, fish seeker, accept our power and join us at the table."
* [Accecpt the boon] -> fish_god

== fish_god ==
You gladly accept, and you are filled with power. The fishing rod you have in your hands disappears, and you become filled with knowledge of how to catch any fish without an issue.
Coastal towns and river people all around the world become aware of your name, and build temples to honor you.
You find a seat at the table, and the other gods and goddesses can finally enjoy food other than sausages.
May the Fish God prevail!
-> END
