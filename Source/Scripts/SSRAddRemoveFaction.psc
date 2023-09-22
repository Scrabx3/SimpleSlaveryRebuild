Scriptname SSRAddRemoveFaction extends ObjectReference  

Faction Property myFaction  Auto  

ObjectReference Property restrictRef  Auto  

Event OnTriggerEnter(ObjectReference akActionRef)
  Actor act = Validate(akActionRef)
  If (act)
    act.AddToFaction(myFaction)
  EndIf
EndEvent

Event OnTriggerLeave(ObjectReference akActionRef)
  Actor act = Validate(akActionRef)
  If (act)
    act.RemoveFromFaction(myFaction)
  EndIf
EndEvent

Actor Function Validate(ObjectReference akActionRef)
  If (restrictRef && akActionRef != restrictRef)
    return none
  EndIf
  return akActionRef as Actor
EndFunction

