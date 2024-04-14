#Requires AutoHotkey v2.0

ProcessSetPriority("Realtime")

TICK := 15.625 ; 64
global enabled := true

End:: {
	global enabled := !enabled
	if enabled
		SoundBeep(600)
	else
		SoundBeep(300)
}

*Space:: {
	Send("{Space}")

	if !enabled
		return

	while GetKeyState("Space", "P") {
		Sleep(TICK)
		Send("{Space}")
	}
}
