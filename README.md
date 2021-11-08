# OCB Electricity POI Lamps - 7 Days to Die (DMT/Harmony) Addon

Changes POI lights to use my ElectricityLamps:  
https://github.com/OCB7D2D/ElectricityLamps

Actual support for this is completely in the required
ElectricityLamps mod. This Modlet merely setups the
relevant POI blocks accordingly. This Modelt is currently
considered highly experimental and is certainly incomplete!

## POI Powered Lights

You probably also wondered where all the energy to power
the POI lights is coming from :) Well, looks like TFP
has finally discovered free energy. Joke aside, its
certainly understandable why they did that and it put
up a little challenge for me to figure out how to
handle this in regard to my ElectricityLamps.

The solution I came up is to only give free energy
to POI lights as long as they are not claimed (inside
a land claim block). Every light will periodically
(like minutes) check if it is inside any land claim
block. So POI lights will slowly turn on/off when
a claim block is placed/removed. You can power
POI lights yourself once you claimed it though!

## Current state

I've done the major work to support this in code,
but the big work is to configure each and every
POI light type so lighting in POIs still works
and looks nice.