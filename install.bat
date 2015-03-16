@echo off
:open
echo 1:Install
echo 2:Uninstall
echo 0:Exit
set /p userinp=

if "%userinp%"=="1" goto 1
if "%userinp%"=="2" goto 2
if "%userinp%"=="0" goto 0 else ( 
echo Wrong
goto open ) 
:1
echo on
md "%userprofile%\appdata\local\Delete"
@echo If there is the same name, it gives a warning.
copy * "%userprofile%\appdata\local\Delete\*"
reg add hkcu\software\microsoft\windows\currentversion\run /v del /t reg_sz /d "wscript \"%userprofile%\appdata\local\delete\del.js""
goto exit
:2
echo on
cd ..
cmd /c rd "%userprofile%\appdata\local\delete" /s /q & reg delete hkcu\software\microsoft\windows\currentversion\run /v del & @echo For security, the command didn't use /f. & pause
exit
goto exit
:0
echo Press any key to exit.
:exit
pause
