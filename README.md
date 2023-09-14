# Automated Zoom Login Bot

## Overview
This project provides an automated Zoom login bot that logs you into your Zoom meetings at specific times without requiring you to manually enter your login credentials each time.

## Prerequisites
- Download and install AutoHotkey. Use the installer provided in this repository or download your own from the [AutoHotkey website](https://www.autohotkey.com/).

## Installation
1. Clone this repository to your local machine.
2. Install AutoHotkey if you haven't already.

## Configuration
### Default Zoom Installation
If you installed Zoom using the default installation options, you only need to enter the Meeting ID and Password in the script.

### Custom Zoom Installation
If you installed Zoom in a custom directory:
1. Locate the `Zoom.exe` file and copy its path.
2. Paste the path beside `Run` in the script, as shown in the example.

## How to Use
1. Right-click on the AutoHotkey script file.
2. Choose "Edit Script" to open the script in a text editor.
3. Replace the placeholders for the Meeting ID and Password with your actual Meeting ID and Password.
4. Save the script.
5. Right-click on the script file again.
6. Choose "Compile Script". This option is available only after installing AutoHotkey.
7. Locate the compiled file with an H-icon and a green background.

## Code Snippet
\`\`\`ahk
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
Run, C:\\Users\\%A_UserName%\\AppData\\Roaming\\Zoom\\bin\\Zoom.exe, C:\\Users\\%A_UserName%\\AppData\\Roaming\\Zoom\\bin\\
Sleep, 2500
Send, {Enter}
Sleep, 3000
SendRaw, "Enter Your Meeting ID Here (Remove the Quotes)"
Send, {Enter}
Sleep, 4000
SendRaw, "Enter your Meeting Password Here (Remove Quotes)"
Send, {Enter}
Return
\`\`\`

## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
