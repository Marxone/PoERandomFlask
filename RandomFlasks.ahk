;Toggles flasks in random order with added delay.
;Adds addional delay after the loop to prevent double clicking, also randomized


;Active only when Path Of Exile is opened
#IfWinActive, ahk_class POEWindowClass

;Bind macro to a key as per https://autohotkey.com/docs/KeyList.htm

Shift::
{
	random, totalDelay, 1900, 3300
	Array := [1,2,3,4,5]

	;Array is used to list action keys, which are then cycled randomly through index with added random delay between presses. 

	Loop
{
	Random, F_Index,  1, % array.Length()
	Flask := Array.RemoveAt(F_Index)
	Send, % Flask
	random, delay, 48, 278
	sleep, %delay%
	if array.Length() = 0
		break
}

sleep, %totalDelay%

}
return
