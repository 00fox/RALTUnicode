;▓║▓▓▓▓▓▓▓▓▓▓▓▓▓▒▓▒ ▒▒▓▓▓▒▒▓▒▓▒▓▒▓▒ ▒▓▒▓▒▓▓▒▓▒▓▒ ▒▓▓▓▒▓▒ ▒▓ ▒▓▒ RALTUnicode  ▒▓ ▒▓▒ ▒▓▒▓

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒AHKconfig▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

#SingleInstance force						;ForceIgnorePromptOff
#Persistent
#NoEnv
#UseHook On								;OnOff
SetWorkingDir %A_ScriptDir%

;#InstallKeybdHook
;#InstallMouseHook
;#NoTrayIcon

#MaxThreads 100							;1-10-255
#MaxMem	1								;1-64-4095 Megabytes
#MaxThreadsBuffer Off						;OnOff
#MaxThreadsPerHotkey 2						;1-1-255

#MaxHotkeysPerInterval 1000					;70
#HotkeyInterval	10						;2000 Milliseconds

#HotkeyModifierTimeout -1					;-1 0 x Milliseconds
#IfTimeout 2000							;1000 Milliseconds
#ClipboardTimeout 200						;1000 Milliseconds

#MenuMaskKey vkFF							;Ctrl
#KeyHistory 0								;0-40-500
AutoTrim, On								;OnOff
SendMode Input

SetMouseDelay, -1							;10 Milliseconds
SetKeyDelay, 100, -1, -1
SetDefaultMouseSpeed, 33						;0-100
SetBatchLines, -1

SetCapsLockState, Off						;On Off AlwaysOn AlwaysOff
SetCapsLockState, AlwaysOff
SetNumLockState, On							;On Off AlwaysOn AlwaysOff
SetNumLockState, AlwaysOn
SetScrollLockState, Off						;On Off AlwaysOn AlwaysOff
SetScrollLockState, AlwaysOff
SetStoreCapsLockMode, Off					;OnOff

SetFormat, float, 0.6

StringCaseSense, Off						;OnOffLocale
CoordMode Mouse, Screen
Process Priority,,R							;L,B,N,A,H,R

DetectHiddenText, On
DetectHiddenWindows, On
SetTitleMatchMode RegEx
SetTitleMatchMode, fast

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Variables▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

Unicodemode :=1							; Mode: Character/Unicode/Ascii/Html name/Html number
UnicodePage :=1							; Page: Usual/Maths/Arrows/Drawing/Symbols or whatever you want
Lock :=0									; Lock the key in case of autorepeat, removed on release
Start :=0									; Start time of key press
DoubleAble :=0								; If short press has been done, before timeout, and double possible if quickly press again

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Symbols▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

UnicodeLine1:= "¿, ,¡, ,⁈, ,⁉, ,⁇, ,‼, ,‽, ,✓, ,✕, , , , "
UnicodeLine2:= "|, ,‖, ,/, ,\, ,¦, ,‗, ,—, ,⎼, ,_, ,‐, ,¯"
UnicodeLine3:= "§, ,¶, ,¤, ,⇌, ,⌐, , , , , ,·, ,°, ,∙, , "
UnicodeLine4:= "‱, ,‰, ,µ, ,⁎, , , , , , , ,■, ,☐, ,☑, ,☒"
UnicodeLine5:= "…, ,⋯, ,†, ,‡, , , , , , , ,‵, ,‶, ,‷, , "
UnicodeLine6:="№, ,º, ,ª, ,✉, ,⎙, ,㏄, ,ℹ, ,′, ,″, ,‴, ,⁗"
UnicodeLine7:="〈, ,〉, ,⟮, ,⟯, ,‘, ,’, ,‹, ,›, ,©, ,℠, ,℻"
UnicodeLine8:="⟨, ,⟩, ,《, ,》, ,“, ,”, ,«, ,», ,®, ,™, ,℡"
UnicodeLine9:= "Ⅰ,Ⅱ,Ⅲ,Ⅳ,Ⅴ,Ⅵ,Ⅶ,Ⅷ,Ⅸ,Ⅹ,Ⅺ,Ⅻ,Ⅼ,Ⅽ,Ⅾ,Ⅿ, ,æ,œ,Æ,Œ"
UnicodeLine10:="€,$,£,¥, ,ß, , ,´,`,^,¨,~,¯,˘,¸,˙,˛,ˇ,˝,˚"
UnicodeLine11:="Á,Ć,É,Í,Ĺ,Ń,Ó,Ŕ,Ś,Ú,Ý,Ź, ,À,È,Ì,Ò,Ù, , , "
UnicodeLine12:="á,ć,é,í,ĺ,ń,ó,ŕ,ś,ú,ý,ź, ,à,è,ì,ò,ù, , , "
UnicodeLine13:="Â,Ĉ,Ê,Ĝ,Ĥ,Î,Ĵ,Ô,Ŝ,Û, , , ,Ä,Ë,Ï,Ö,Ü,Ÿ, , "
UnicodeLine14:= "â,ĉ,ê,ĝ,ĥ,î,ĵ,ô,ŝ,û, , , ,ä,ë,ï,ö,ü,ÿ, , "
UnicodeLine15:="Č,Ď,Ě,Ǐ,Ľ,Ň,Ř,Š,Ť,Ž, ,Þ, ,Å,Ċ,Ė,Ġ,İ,Ŀ,Ů,Ż"
UnicodeLine16:= "č,ď,ě,ǐ,ľ,ň,ř,š,ť,ž, , , ,å,ċ,ė,ġ,ı,ŀ,ů,ż"
UnicodeLine17:= "Ç,Ģ,Ķ,Ļ,Ņ,Ŗ,Ş,Ţ, ,Ă,Ğ,Ŭ, ,Ã,Ĩ,Õ,Ñ,Ũ, ,Ő,Ű"
UnicodeLine18:="ç,ģ,ķ,ļ,ņ,ŗ,ş,ţ, ,ă,ğ,ŭ, ,ã,ĩ,õ,ñ,ũ, ,ő,ű"
UnicodeLine19:="Ā,Ē,Ī,Ō,Ū, , , ,Ą,Ę,Į,Ų, ,Đ,Ħ,Ĳ,Ł,Ø,Ŧ, ,þ"
UnicodeLine20:="ā,ē,ī,ō,ū, , , ,ą,ę,į,ų, ,đ,ħ,ĳ,ł,ø,ŧ, ,ð"

UnicodeLine21:="×,±,÷,≠,⌗,∅, , ,⌠, ,⌗,π,√, , ,⇒,⇔, , , , "
UnicodeLine22:="≃,≄,≈,≉,≡,⊕, , ,⌡, ,∞,⭢,⮞, , ,⊤,⊥,⊢,⊨, , "
UnicodeLine23:="≤,≥,≲,≳,≦,≧,≨,≩,≮,≯,≰,≱, , , , , , , , , "
UnicodeLine24:="₁,₂,₃,₄,₅,₆,₇,₈,₉,₀,₍,₎,₊,₋,₌,ₓ,∖, , , , "
UnicodeLine25:="¹,²,³,⁴,⁵,⁶,⁷,⁸,⁹,⁰,⁽,⁾,⁺,⁻,⁼,ⁿ, , ,⅑,⅒,⅟"
UnicodeLine26:="⅛,¼,⅜,½,⅝,¾,⅞,⅓,⅔,⁄, ,⅕,⅖,⅗,⅘, ,⅙,⅚, ,⅐, "
UnicodeLine27:="⌒,⊾,⭕,⬭,◻,▭,△,◇,⬠,⬡, , , , , , , , , , , "
UnicodeLine28:="⦛,⦜,⦝,⦞,⦟,⦠,⦡,⦢,⦣,⦤,⦥,⦦,⦧,⦨,⦩,⦪,⦫,⦬,⦭,⦮,⦯"
UnicodeLine29:=" , , , , , , , , , , , , , , , , , , , , "
UnicodeLine30:="√,∛,∑,∏,∐,∆,∇,∶,≔, , , , , , , , , , , , "
UnicodeLine31:="∩,∪,⊂,⊄,⊊,⊃,⊅,⊇,⊉,⊋,∈,∉,∝,∨,⊻, , , , , , "
UnicodeLine32:="∁,∃,∄,∀,¬,∣, , , , , , , , , , , , , , , "
UnicodeLine33:="⨍,∫,∂,∞,·, , , , , , , , , , , , , , , , "
UnicodeLine34:="㏒,㏑,ℇ,℮,㎧,ℓ,ϝ,℉,ℎ, , , , , , , , , , , , "
UnicodeLine35:="☇,⊿,≬,⦚,⪤,⪥,↝,⎋,⅏,⍽,⎆,⎔,⏚,⎓,⏦,⎍,⏍, , , , "
UnicodeLine36:="⦅,⦆,⦇,⦈,⦉,⦊, , , , , , , , , , , , , , , "
UnicodeLine37:="Α,Β,Γ,Δ,Ε,Ζ,Η,Θ,Ι,Κ,Λ,Μ,Ν,Ξ,Ο,Π,Ρ,Σ,Τ,Υ,Φ"
UnicodeLine38:="Χ,Ψ,Ω, , , , , , , , , , , , , , , , , , "
UnicodeLine39:="α,β,γ,δ,ε,ζ,η,θ,ι,κ,λ,μ,ν,ξ,ο,π,ρ,σ,ς,τ,υ"
UnicodeLine40:="φ,χ,ψ, , , , , , , , , , , , , , , , , , "

UnicodeLine41:=" ,⇶, ,➔, ,⇿, ,⊲, ,⊳, , , ,⮲, ,⮳, ,⮴, ,⮵, "
UnicodeLine42:=" ,⇐, ,⇔, ,⇒, ,⇍, ,⇎, ,⇏, ,⮰, ,⮱, ,⮶, ,⮷, "
UnicodeLine43:=" , ,⮝, , ,⮌, ,⮍, , ,⏶, , , , , , ,▵, , , "
UnicodeLine44:=" ,⮜, ,⮞, ,⮐, ,⮑, ,⏴, ,⏵, , , , ,◃, ,▹, , "
UnicodeLine45:=" , ,⮟, , ,⮏, ,⮎, , ,⏷, , , , , , ,▿, , , "
UnicodeLine46:=" , , , , ,⬉,⬆,⬈,⬍, , , ,⭶,⭱,⭷,⭥, , , , , "
UnicodeLine47:=" , , , , ,⬅, ,➡,⬌,⮕, , ,⭰, ,⭲,⭤, , , , , "
UnicodeLine48:=" , , , , ,⬋,⬇,⬊, , , , ,⭹,⭳,⭸, , , , , , "
UnicodeLine49:=" ,↖,↑,↗,↕, , , , ,⮅, , , , , , , ,⮁, , , "
UnicodeLine50:=" ,←, ,→,↔, , , ,⮄, ,⮆, , , , , ,⮀, ,⮂, , "
UnicodeLine51:=" ,↙,↓,↘, , , , , ,⮇, , , , , , , ,⮃, , , "
UnicodeLine52:=" , , , , , , , , , , , , , , , , , , , , "
UnicodeLine53:=" ,⮪, ,⮫, , ,⮮, ,⮯, , ,↶, ,↷, , ,⮦, ,⮧, , "
UnicodeLine54:=" ,⮨, ,⮩, , ,⮬, ,⮭, , ,⤾, ,⤿, , ,⮤, ,⮥, , "
UnicodeLine55:=" ,⮢, ,⮣, , ,⟲, ,⟳, , ,⥁, ,⥀, , ,⤺, ,⤻, , "
UnicodeLine56:=" ,⮠, ,⮡, , ,⭮, ,⭯, , ,⤹, ,⤸, , ,⤽, ,⤼, , "
UnicodeLine57:=" , , , , , , , , , , , , , , , , , , , , "
UnicodeLine58:=" , ,˄, , , , ,⤧, , , , ,⇡, , , ,⭦,⭡,⭧, , "
UnicodeLine59:=" ,˂, ,˃, , ,⤪, ,⤨, , ,⇠, ,⇢, , ,⭠, ,⭢, , "
UnicodeLine60:=" , ,˅, , , , ,⤩, , , , ,⇣, , , ,⭩,⭣,⭨, , "

UnicodeLine61:="┌,┬,┐,╔,╦,╗,╒,╤,╕,╓,╥,╖,─,│, ,◠, ,◜,◝, , "
UnicodeLine62:="├,┼,┤,╠,╬,╣,╞,╪,╡,╟,╫,╢,┄,┆, ,◡, ,◟,◞, , "
UnicodeLine63:="└,┴,┘,╚,╩,╝,╘,╧,╛,╙,╨,╜,═,║, , , , , , , "
UnicodeLine64:=" , , , , , , , , , , , , , , , ,░,▒,▓, , "
UnicodeLine65:="■,□,▢,▣,▤,▥,▦,▧,▨,▩,▪,▫, , ,◻,◼,◧,◫,◨,◩,◪"
UnicodeLine66:="▬,▭,▮,▯,▰,▱, , ,◆,◇,◈,◊, , , , ,◰,◱,◲,◳, "
UnicodeLine67:="▲,△,▴,▵, ,▶,▷,▸,▹,►,▻, ,◬,◭,◮, ,◸,◹, ,◤,◥"
UnicodeLine68:="▼,▽,▾,▿, ,◀,◁,◂,◃,◄,◅, , , , , ,◺,◿, ,◣,◢"
UnicodeLine69:="◉,○,◌,◍,◎,●, ,◐,◑,◒,◓,◔,◕, , , ,◴,◵,◶,◷, "
UnicodeLine70:="⛍,⛐,⛔,⛕,⛖,⛗,⛒,⛘,⛙,⛜,⛟,⛠, , , , ,⌓,◖◗,◯,◦, "
UnicodeLine71:=" , , , , , , , , , , ,✉, ,✆, ,✈, , , , , "
UnicodeLine72:=" ,╱,╭,╴,╮,╲, , ,⛩, ,⛪, ,⛫, ,⛬, ,⛯, ,⛰, ,⛱"
UnicodeLine73:="╳, ,╵,┼,╷, ,╳, , ,⛲, ,⛳, ,⛴, ,⛵, ,⛷, ,⛸, "
UnicodeLine74:=" ,╲,╰,╶,╯,╱, , ,⛹, ,⛺, ,⛻, ,⛼, ,⛽, ,⛾, ,⛿"
UnicodeLine75:=" , , , , , , , , , , , , , , , , , , , , "
UnicodeLine76:=" ,▁,▂,▃,▄,▅,▆,▇,█,▉,▊,▋,▌,▍,▎,▏, ,▐, , , "
UnicodeLine77:="▔,▕,▖,▗, ,▘,▙,▚,▛,▜,▝,▞,▟,▀, ,▍,▎, , , , , "
UnicodeLine78:=" , , , , , , , , , , , , , , , , , , , , "
UnicodeLine79:="⌫,⌧,⌦, ,⌨, ,⌛, ,⌚, ,⏏, ,⧎, ,⇪, ,⧉, ,♻, , "
UnicodeLine80:=" ,☠, ,⮔, ,⛶, ,⬚, ,⯏, ,☎, ,☜, ,☝, ,☞, ,☟, "

UnicodeLine81:="⓿,❶,❷,❸,❹,❺,❻,❼,❽,❾,❿,⓫,⓬,⓭,⓮,⓯,⓰,⓱,⓲,⓳,⓴"
UnicodeLine82:="☼,☀,☁,☂,☔,⛄,⛇, , , , , , , , , , , , , , "
UnicodeLine83:="Ⓗ,Ⓜ,✆,♿,✈,⛨,⚡,↟,⚰,⚱,⛼,⚑,⛬,⟰,⌘,⛾,⛻,⎈, , , "
UnicodeLine84:="♈,♉,♊,♋,♌,♍,♎,♏,♐,♑,♒,♓, , , , , , , , , "
UnicodeLine85:="☉,☽,☿,♀,♂,♁,♃,♄,♅,♆,♇, , , , , , , , , , "
UnicodeLine86:="⚀,⚁,⚂,⚃,⚄,⚅, , , , , , , , , , , , , , , "
UnicodeLine87:="☺,☹,☯,☮,⚆,⚈,⚉,⚇,♾, , , , , , , , , , , , "
UnicodeLine88:="✴,✹,✫,★,☆,✬,⭐,❀,☘,❤,✤,⚘, , , , , , , , , "
UnicodeLine89:="✡,⚕,☤,✝,☨,⚶, , , , , , , , , , , , , , , "
UnicodeLine90:="†,⚔,ⳝ, , , , , , , , , , , , , , , , , , "
UnicodeLine91:="⚛,⚝,☣,₪,𖦹, , , , , , , , , , , , , , , , "
UnicodeLine92:="⏏,⌂,⧡,⧗,♪,⸙,⸎,⚒,☩,ⴧ,※,✦,⚖, , , , , , , , "
UnicodeLine93:="⏹,⏯,⏸,⏺,⏪,⏩,⏮,⏭, , , , , , , , , , , , , "
UnicodeLine94:="♔,♕,♖,♗,♘,♙,♚,♛,♜,♝,♞,♟, , , , , , , , , "
UnicodeLine95:="♠,♥,♦,♣,♤,♡,♢,♧,⛁,⛀,⛃,⛂, , , , , , , , , "
UnicodeLine96:="☷,☳,☱,☵,☴,☶,☲,☰,⚏,⚍,⚎,⚌,⚋,⚊, , , , , , , "
UnicodeLine97:="⽽,⽀,⿒,⿎,⻩,⾅,⼲,⾯,⾞,⽏,⽇,⼧,⼭, , , , , , , , "
UnicodeLine98:="⼻,⽍,⿏,⾷,⾔,⾋,⾂,⿕,⾁,⾟,⻬,⻫, , , , , , , , , "
UnicodeLine99:="⾗,⾤,⾜,⾦,⾾,⾃,⻨,⽶,⽃,⻚,⽊,⾹,⽢, , , , , , , , "
UnicodeLine100:="⽗,⿌,⻪,⼵,⼡,⼺,⽰,⾐,⾉,⾝,⿐, , , , , , , , , , "

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Gui▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

OnMessage(0x200, "WM_MOUSEMOVE")

Gui Unicode:Destroy
Gui Unicode:Font, s8 cWhite
Gui Unicode:Color, 0x0000ff
Gui Unicode:Add, Button, gUnicodeMenu1 x6 y7 w68 +Default, Character
Gui Unicode:Add, Button, gUnicodeMenu2 x78 y7 w68, Unicode
Gui Unicode:Add, Button, gUnicodeMenu3 x150 y7 w68, Ascii
Gui Unicode:Add, Button, gUnicodeMenu4 x222 y7 w68, Html name
Gui Unicode:Add, Button, gUnicodeMenu5 x294 y7 w68, Html number
Gui Unicode:Font, s40
Gui Unicode:Add, Text, x368 y1 w58 h58 Center vUnicodeSymbol, X
Gui Unicode:Font, s8
Gui Unicode:Add, Tab3, x4 y40 w420 h433 vUnicodeMenu, Usual|Maths|Arrows|Drawing|Symbols
Gui Unicode:Font, s14

Loop 5 {
	Gui Unicode:Tab, %A_Index%
	UnicodePagetmp:=A_Index-1
	y:=63
	Loop 20 {
		x=6
		UnicodeLine:=A_Index+20*UnicodePagetmp
		Loop, parse, UnicodeLine%UnicodeLine%, `,
		{
			Gui Unicode:Add, Text, x%x% y%y% Center gSymbolSelected, %A_LoopField%
			x+=20
		}
		y+=20
	}
}
Gui Unicode:Color, 0x0000ff
Gui Unicode:+LastFound +Caption +AlwaysOnTop +ToolWindow +Border +E0x20 +E0x08000000
Gui Unicode:Show, w428 h478 center,RALTUnicode
SplashTextOff
Gui Unicode:Hide
return										;▒▒▒▒▒▒▒▒End of excecution▒▒▒▒▒▒▒

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Key▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

RAlt::										;▒▒▒▒▒▒▒▒Your own key there▒▒▒▒▒▒
	if (Lock) {
		return
	}
	Lock :=1
	Start :=A_TickCount
	SetTimer, Long, -400						;▒▒▒▒▒▒▒▒Long press time there▒▒▒
return

RAlt up::										;▒▒▒▒▒▒▒▒Your own key there▒▒▒▒▒▒
	SetTimer, Long, Off
	if (A_TickCount - Start < 220) {
		UnicodeActive := WinActive("RALTUnicode") ? 1 : 0
		if (UnicodeActive) {
			SetTimer, Simple, 220
		}
	}
	Lock :=0
Return

Simple:
	SetTimer, Long, Off
	SetTimer, Simple, Off
	UnicodePage := (UnicodePage=5)? 1 : UnicodePage+1
	GuiControl Unicode:Choose, UnicodeMenu, |%UnicodePage%
return

Long:
	SetTimer, Simple, Off
	SetTimer, Long, Off
	UnicodeActive := WinActive("RALTUnicode") ? 1 : 0
	If (UnicodeActive) {
		Gui Unicode:Hide
	} else {
		Gui Unicode:Show
	}
return

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Program▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

UnicodeMenu1:
UnicodeMenu2:
UnicodeMenu3:
UnicodeMenu4:
UnicodeMenu5:
	Unicodemode:=SubStr(A_ThisLabel, 12)
return

SymbolSelected:
	this:=asc(A_GuiControl)
	Transform, htmlVal1, HTML, %A_GuiControl% ,1
	Transform, htmlVal2, HTML, %A_GuiControl% ,2
	if (strlen(htmlVal1)=1)	{
		htmlVal1:=htmlVal2
	}
	ascval:=this
	SetFormat, IntegerFast, hex
	this += 0
	this .= ""
	asciival:=this
	StringTrimLeft, asciival, asciival, 2
	SetFormat, IntegerFast, d
	Gui Unicode:Hide

	if (Unicodemode=1) {
		Send {u+%this%}
	}
	if (Unicodemode=2) {
		Send {raw}%asciival%
	}
	if (Unicodemode=3) {
		Send {raw}%ascval%
	}
	if (Unicodemode=4) {
		Send {raw}%htmlVAL1%
	}
	if (Unicodemode=5) {
		Send {raw}%htmlVAL2%
	}
	Sleep 50
	Gui Unicode:Show
Return

WM_MOUSEMOVE() {
	global UnicodeSymbol
	MouseGetPos,,,, control,2
	ControlGetText, UnicodeSymbol,, ahk_id %control%
	if (strlen(UnicodeSymbol)=1) {
		Guicontrol ,,UnicodeSymbol,%UnicodeSymbol%
	}
}

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Miscellaneous▒▒▒▒▒▒▒▒▒▒▒

;^+z::Send ^y								;Redo with Shift-Ctrl-Z

;░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░Media_Play_Pause double░
/*
$Media_Play_Pause::
	if (LockMedia) {
		return
	}
	LockMedia :=1
	if (A_TickCount - StartMedia < 220) {			;▒▒▒▒▒▒▒▒Double press time there▒▒
		StartMedia :=A_TickCount - 220
		Send {Media_Play_Pause}
		Send {Media_Next}					;Send again and Media_Next if double
	} else {
		StartMedia :=A_TickCount
		Send {Media_Play_Pause}
	}
return

Media_Play_Pause up::
	LockMedia :=0
Return
*/
;░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░No NumLock░░░░░░░░░░░░░░
/*
NumLock::return

$NumpadHome::Send {7}
$NumpadUp::Send {8}
$NumpadPgUp::Send {9}

$NumpadLeft::Send {4}
$NumpadClear::Send {5}
$NumpadRight::Send {6}

$NumpadEnd::Send {1}
$NumpadDown::Send {2}
$NumpadPgDn::Send {3}

$NumpadIns::Send {0}
$NumpadDel::Send {.}
$!NumpadHome::Send {7}
$!NumpadUp::Send {8}
$!NumpadPgUp::Send {9}

$!NumpadLeft::Send {4}
$!NumpadClear::Send {5}
$!NumpadRight::Send {6}

$!NumpadEnd::Send {1}
$!NumpadDown::Send {2}
$!NumpadPgDn::Send {3}

$!NumpadIns::Send {0}
$!NumpadDel::Send {.}
*/
