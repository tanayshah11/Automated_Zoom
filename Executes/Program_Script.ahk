#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1


Macro1:
Run, C:\Users\%A_UserName%\AppData\Roaming\Zoom\bin\Zoom.exe, C:\Users\%A_UserName%\AppData\Roaming\Zoom\bin\
Sleep, 2500
Send, {Enter}
Sleep, 3000
SendRaw, "Enter Your Meeting ID Here (Remove the Quotes)"
Send, {Enter}
Sleep, 4000
SendRaw, "Enter your Meeting Password Here (Remove Quotes)"
Send, {Enter}
Return