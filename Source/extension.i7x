Version 1/220115 of Stuff by Matthew Orlando begins here.

"A kind for use with substances and other uncountables."

Use authorial modesty.

Chapter 1 - What is stuff?

[TODO: see if there are things in thing that we don't want in stuff]

stuff is a kind of thing.
stuff is always singular-named.

The specification of stuff is "Represents materials, substances, and other uncountable objects: air, cheese, wool, energy, etc., but not car, light bulb, gigabyte, etc."

Chapter 2 - Articles

Section 1 - Improper stuff

The indefinite article of stuff is "some".

Section 2 - Use "the" for proper-named stuff

[Overriding "To say" because definite articles are handled in I6]

To say the (S - stuff):
	say "the [S]".

To say The (S - stuff):
	say "The [S]".

Stuff ends here.

---- DOCUMENTATION ----

Some things aren't really things, they're stuff. Milk is stuff. Cheese is stuff. Energy is stuff. We can't have a water (unless we're using this as shorthand for a container or variety of water). The manual suggests:

	The water is here. The indefinite article is "some".

This works fine but has some limitations. For example:
	
	Some water is in the sink. The indefinite article is "some".

This would say "You can see a sink (in which are some water) here" when it should say "... in which is some water ..." If we want to write "some water" but have it say "is", we can add:
	
	The water is singular-named.

Stuff by Matthew Orlando wraps this up into a new kind called "stuff." Now we can say:

	Some water is in the sink. It is stuff.

and the room description will read "You can see a sink (in which is some water) here."

Additionally, we might want to say "There is air here." instead of "There is some air here." Given the above rules, this seems to work at first:
	
	air is here. It is stuff.
	in the sink is stuff called water.

This would say "You can see air and a sink (in which is water) here." When we take the water, it shows up in our inventory as "water". However, on closer examination, "You see nothing special about water." That's not right. It should be "... about the water."

Therefore we override "To say The/the stuff" so that it always uses "The/the".

Example: * Quesatorium - Demonstrate proper- and improper-named stuff.

	*: "Quesatorium"

	Include Stuff by Matthew Orlando

	The Quesatorium is a room. It contains air, a wood table, a glass table, a metal trough, and a marble table.

	Section 1 - Proper-named stuff - Use definite, not indefinite article

	air is stuff.
	in the metal trough is stuff called milk. the trough is open.

	Section 2 - Improper-named stuff - Use definite and indefinite articles

	Some cheese is stuff. It is on the wood table.
	The bread is some stuff. It is on the marble table.
	On the glass table is some cured meat. The cured meat is stuff.

	Section 3 - Tests

	Test me with "x air / x milk / x bread / x cheese / x meat".