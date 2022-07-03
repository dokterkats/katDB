@echo off
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