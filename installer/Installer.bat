@echo off
echo Thanks for using KatDB!
CALL:ECHORED "This installer will remove all current custom configs and replace them with the KatDB configs"
echo Kat's pre-set configs will remain in tact.
echo Please exit the program now if you do not want to remove your current custom configs
pause
echo Installing configs from GitHub
TIMEOUT 5
wget https://github.com/dokterkats/katDB/archive/refs/heads/main.zip
cls
echo Unzipping files
TIMEOUT 3
tar -xf main.zip
del main.zip
cls
echo Moving the KatDB Configs to Kat Gateway
TIMEOUT 3
cd katDB-main/installer/
move Local.json %AppData%/KAT_Gateway
cls
echo Cleaning things up
TIMEOUT 3
cd ..
cd ..
rmdir /s katDB-main
cls
echo Done
pause

:ECHORED
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red %1
goto:eof