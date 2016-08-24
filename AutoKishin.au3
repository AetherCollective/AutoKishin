#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=C:\ISN AutoIt Studio\autoitstudioicon.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
Opt("WinTitleMatchMode", 3)
Opt("SendKeyDownDelay", 500)
Opt("SendKeyDelay", 30)
Global $ToggleState = False
HotKeySet("{f9}", "ToggleAutoKishin")
While 1
	Sleep(1000)
WEnd
Func AutoKishin()
	ControlSend("MapleStory", "", "", "{Space}")
EndFunc   ;==>AutoKishin
Func ToggleAutoKishin()
	HotKeySet("{f9}")
	If $ToggleState = False Then
		ControlSend("MapleStory", "", "", "{Space}")
		AdlibRegister("AutoKishin", (180 * 1000))
		$ToggleState = True
	Else
		AdlibUnRegister("AutoKishin")
		$ToggleState = False
	EndIf
	HotKeySet("{f9}", "ToggleAutoKishin")
EndFunc   ;==>ToggleAutoKishin
