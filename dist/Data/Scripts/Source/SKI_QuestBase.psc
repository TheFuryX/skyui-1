scriptname SKI_QuestBase extends Quest hidden

; -------------------------------------------------------------------------------------------------
; Version Tracking
;
; Quest implements
;	GetVersion, to return the static version number
;	OnVersionUpdate to handle the updating
; Update process is triggered by calling CheckVersion()

int property CurrentVersion auto hidden

function CheckVersion()
	int version = GetVersion()
	if (CurrentVersion < version)
		OnVersionUpdate(version)
		CurrentVersion = version
	endIf
endFunction

int function GetVersion()
	return 1
endFunction

event OnVersionUpdate(int a_version)
endEvent


; -------------------------------------------------------------------------------------------------
; Reload Events
;
; Helper to add reload event to quest script.
; 1. Create quest
; 2. Add player alias to quest
; 3. Attach SKI_PlayerLoadGameAlias to player alias
; 4. Set InitQuest property of alias script to quest

event OnGameReload()
endEvent