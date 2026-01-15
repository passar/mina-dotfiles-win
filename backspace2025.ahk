#SingleInstance Force
; Höja begränsning för när jag upprepar tangentryck fort snabbt, det vill jag aldrig se någonsin.
#MaxHotkeysPerInterval 380 ;70
;#HotkeyInterval 2000 ;2000 <Milliseconds>

;Byta ut Caps till Backspace
; ---------------------------------------------------------

$Backspace::
    ; suspend on
    send {Backspace}
return

$CapsLock::
    suspend off
    Send, {BackSpace}
    Sleep, 150 ;This is the delay in MS before the key starts to repeat
    Loop {
        GetKeyState, Go, CapsLock, P
        if (Go="D") {
            Send, {BackSpace}
            Sleep, 60 ;Lower = Faster; Higher = Slower.
        } else
            Break
    }
return

; infoga datum i zettlrformatet
^!D::
    FormatTime, CurrentDateTime, , yyyyMMddHHmmss
    Send %CurrentDateTime%
return

#Esc::Reload ; M-Esc för att ladda om ahk
return

; Definiera tangenterna för numpaden med AltGr som modifierare
; Det som är nytt med denna är att det är tangenterna för qwerty då detta bygger på att jag inte har svorak installerat på datorn utan använder fulsvorak.
<^>!u::Send, {Numpad4}
<^>!i::Send, {Numpad5}
<^>!o::Send, {Numpad6}
<^>!j::Send, {Numpad1}
<^>!k::Send, {Numpad2}
<^>!l::Send, {Numpad3}
