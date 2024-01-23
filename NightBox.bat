:: https://adwcleaner.malwarebytes.com/adwcleaner?channel=release

::==========================::
::                          ::
::  Criado Por <\DarkMode>  ::
::  Criação: 16/06/2023     ::
::                          ::
::==========================::


@echo off
mode 15,1 && color 0f
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
powershell -nop -c "& {$host.ui.rawui.windowtitle=' '}" && mode 39,6


::====================================================================================================::
::====================================================================================================::


mkdir %SYSTEMDRIVE%\NightBox >nul 2>&1
mkdir %SYSTEMDRIVE%\NightBox\Plugins >nul 2>&1

echo.
echo.
echo      Baixando Arquivos Importantes
echo            Aguarde, Por favor
echo.


if exist "%SYSTEMROOT%\System32\aria2c.exe" goto BatBox01 >nul 2>&1
curl -g -L -o "%SYSTEMROOT%\System32\aria2c.exe" "https://github.com/0DarkMode0/DarkCloud/raw/Main/NightBox/aria2c.exe" >nul 2>&1

:BatBox01
if exist "%SYSTEMROOT%\System32\batbox.exe" goto BatBox02 >nul 2>&1
aria2c.exe -d "%SYSTEMROOT%\System32" https://github.com/0DarkMode0/DarkCloud/raw/Main/NightBox/batbox.exe >nul 2>&1
:BatBox02
if exist "%SYSTEMROOT%\System32\batbox.exe" goto GetInput01 >nul 2>&1
curl -g -L -o "%SYSTEMROOT%\System32\batbox.exe" "https://github.com/0DarkMode0/DarkCloud/raw/Main/NightBox/batbox.exe" >nul 2>&1

:GetInput01
if exist "%SYSTEMROOT%\System32\GetInput.exe" goto GetInput02 >nul 2>&1
aria2c.exe -d "%SYSTEMROOT%\System32" https://github.com/0DarkMode0/DarkCloud/raw/Main/NightBox/GetInput.exe >nul 2>&1
:GetInput02
if exist "%SYSTEMROOT%\System32\GetInput.exe" goto Button01 >nul 2>&1
curl -g -L -o "%SYSTEMROOT%\System32\GetInput.exe" "https://github.com/0DarkMode0/DarkCloud/raw/Main/NightBox/GetInput.exe" >nul 2>&1

:Button01
if exist "%SYSTEMROOT%\System32\Button.bat" goto Button02 >nul 2>&1
aria2c.exe -d "%SYSTEMROOT%\System32" https://github.com/0DarkMode0/DarkCloud/raw/Main/NightBox/Button.bat >nul 2>&1
:Button02
if exist "%SYSTEMROOT%\System32\Button.bat" goto Gecho01 >nul 2>&1
curl -g -L -o "%SYSTEMROOT%\System32\Button.bat" "https://github.com/0DarkMode0/DarkCloud/raw/Main/NightBox/Button.bat" >nul 2>&1

:Gecho01
if exist "%SYSTEMDRIVE%\NightBox\Gecho.exe" goto Gecho02 >nul 2>&1
aria2c.exe -d "%SYSTEMDRIVE%\NightBox" https://github.com/0DarkMode0/DarkCloud/raw/Main/NightBox/Gecho.exe >nul 2>&1
:Gecho02
if exist "%SYSTEMDRIVE%\NightBox\Gecho.exe" goto MenuInicial >nul 2>&1
curl -g -L -o "%SYSTEMDRIVE%\NightBox\Gecho.exe" "https://github.com/0DarkMode0/DarkCloud/raw/Main/NightBox/Gecho.exe" >nul 2>&1


::====================================================================================================::
::====================================================================================================::


:MenuInicial
Batbox /h 0 && mode 59,21
chcp 65001 >nul 2>&1
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#4169e1>          ███╗   ██╗██╗ ██████╗ ██╗  ██╗████████╗"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#4169e1>          ████╗  ██║██║██╔════╝ ██║  ██║╚══██╔══╝"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#4169e1>          ██╔██╗ ██║██║██║  ███╗███████║   ██║   "
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#4169e1>          ██║╚██╗██║██║██║   ██║██╔══██║   ██║   "
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#4169e1>          ██║ ╚████║██║╚██████╔╝██║  ██║   ██║   "
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#4169e1>          ╚═╝  ╚═══╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   "
chcp 850 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "        <#ffffff>Quack!"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "      <#ffff00>_ <#ffffff>/"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "    <#ffa500>><#ffff00>(<#ffffff>.<#ffff00>)___"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "     <#ffff00>(____/"
echo.
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "          <#ffffff>User: <#6085f6>Administrator   <#ffffff>Data: <#6085f6>%date%"
Call Button  21 10 "   ToolBox   " 21 14 "  Consultas  " # Press
Getinput /m %Press% /h 70

if %errorlevel%==1 (goto ToolBox)
if %errorlevel%==2 (goto Consultas)
goto MenuInicial


::====================================================================================================::
::====================================================================================================::


:ToolBox
Batbox /h 0 && mode 29,18
chcp 65001 >nul 2>&1
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>┌───────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>└───────────────────────────┘"
call %SYSTEMDRIVE%\NightBox\Gecho.exe " "
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff> Pressione <#d2691e>ENTER <#ffffff>para voltar "
chcp 850 >nul 2>&1

Call Button  6 2 "   Limpeza   " 6 6 "  AntiVirus  " 6 10 "   Novo IP   "  # Press
Getinput /m %Press% /h 70

if %errorlevel%==1 (goto Limpeza)
if %errorlevel%==2 (goto AntiVirus)
if %errorlevel%==3 (goto NovoIP)
goto MenuInicial


::====================================================================================================::
::====================================================================================================::


:Limpeza
Batbox /h 0 && mode 44,7
chcp 65001 >nul 2>&1
cls
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "            <dy>Arquivos Temporários"
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  ┌──────────────────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  │<#0077ff>█████                                 <#ffffff>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  └──────────────────────────────────────┘"
chcp 850 >nul 2>&1

del c:\$recycle.bin\* /s /q
PowerShell.exe -NoProfile -Command Clear-RecycleBin -Confirm:$false >$null
del $null
for /d %%F in (C:\Users\*) do (Powershell.exe Remove-Item -Path "%%F\AppData\Local\Temp\*" -Recurse -Force)
for /d %%F in (C:\Users\*) do type nul >"%%F\Appdata\Local\Temp\vazio.txt"
for /d %%F in (C:\Users\*) do robocopy %%F\AppData\Local\Temp\ %%F\AppData\Local\Temp\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Temp\vazio.txt
del c:\Windows\Temp\* /s /q
type nul > c:\Windows\Temp\vazio.txt
robocopy c:\Windows\Temp c:\Windows\Temp /s /move /NFL /NDL /NJH /NJS /nc /ns /np
del c:\Windows\Temp\vazio.txt

::====================================================================================================::

chcp 65001 >nul 2>&1
cls
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "               <dy>Logs do Windows"
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  ┌──────────────────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  │<#0077ff>██████████                            <#ffffff>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  └──────────────────────────────────────┘"
chcp 850 >nul 2>&1

del C:\Windows\Logs\cbs\*.log >nul 2>&1
del C:\Windows\setupact.log >nul 2>&1
attrib -s c:\windows\logs\measuredboot\*.* >nul 2>&1
del c:\windows\logs\measuredboot\*.log >nul 2>&1
attrib -h -s C:\Windows\ServiceProfiles\NetworkService\ >nul 2>&1
attrib -h -s C:\Windows\ServiceProfiles\LocalService\ >nul 2>&1
del C:\Windows\ServiceProfiles\LocalService\AppData\Local\Temp\MpCmdRun.log >nul 2>&1
del C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Temp\MpCmdRun.log >nul 2>&1
attrib +h +s C:\Windows\ServiceProfiles\NetworkService\ >nul 2>&1
attrib +h +s C:\Windows\ServiceProfiles\LocalService\ >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\*.log /s /q >nul 2>&1
del C:\Windows\Logs\MeasuredBoot\*.log >nul 2>&1
del C:\Windows\Logs\MoSetup\*.log >nul 2>&1
del C:\Windows\Panther\*.log /s /q >nul 2>&1
del C:\Windows\Performance\WinSAT\winsat.log /s /q >nul 2>&1
del C:\Windows\inf\*.log /s /q >nul 2>&1
del C:\Windows\logs\*.log /s /q >nul 2>&1
del C:\Windows\SoftwareDistribution\*.log /s /q >nul 2>&1
del C:\Windows\Microsoft.NET\*.log /s /q >nul 2>&1
taskkill /F /IM "OneDrive.exe" >nul 2>&1
taskkill /F /IM "OneDrive.exe" >nul 2>&1
taskkill /F /IM "OneDrive.exe" >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\OneDrive\setup\logs\*.log /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\OneDrive\*.odl /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\OneDrive\*.aodl /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\OneDrive\*.otc /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\OneDrive\*.qmlc /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\CrashDumps\*.dmp /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Windows\Explorer\*.db /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Windows\WebCache\*.log /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Windows\SettingSync\*.log /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.tmp /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\"Terminal Server Client"\Cache\*.bin /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Windows\INetCache\IE\* /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Windows\INetCache\Low\*.dat /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Windows\INetCache\Low\*.js /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Windows\INetCache\Low\*.htm /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Windows\INetCache\Low\*.txt /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Windows\INetCache\Low\*.jpg /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do robocopy %%F\AppData\Local\Microsoft\Windows\INetCache\IE\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Spotify\Data\*.file /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Spotify\Browser\Cache\"Cache_Data"\f*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Spotify\Browser\GPUCache\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Roaming\Adobe\Common\"Media Cache files"\*.* /s /q >nul 2>&1

::====================================================================================================::

chcp 65001 >nul 2>&1
cls
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "               <dy>Microsoft Edge"
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  ┌──────────────────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  │<#0077ff>█████████████                         <#ffffff>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  └──────────────────────────────────────┘"
chcp 850 >nul 2>&1

taskkill /F /IM "msedge.exe" >nul 2>&1
taskkill /F /IM "msedge.exe" >nul 2>&1
taskkill /F /IM "msedge.exe" >nul 2>&1

for /d %%F in (C:\Users\*) do attrib -h -s %%F\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*.* >nul 2>&1
for /d %%F in (C:\Users\*) do attrib -h -s %%F\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*.* >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*.* /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*.* /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do attrib +h +s %%F\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content >nul 2>&1
for /d %%F in (C:\Users\*) do attrib +h +s %%F\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\Cache_Data\data*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\Cache\Cache_Data\data*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\Cache\Cache_Data\data*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\Cache_Data\f*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\Cache\Cache_Data\f*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\Cache\Cache_Data\f*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\Cache_Data\index. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\Cache\Cache_Data\index. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\Cache\Cache_Data\index. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\GPUCache\d*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\GPUCache\d*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\GPUCache\d*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\GPUCache\i*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\GPUCache\i*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\GPUCache\i*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\IndexedDB\https_ntp.msn.com_0.indexeddb.leveldb\*.* /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\IndexedDB\https_ntp.msn.com_0.indexeddb.leveldb\*.* /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\IndexedDB\https_ntp.msn.com_0.indexeddb.leveldb\*.* /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\*.pma /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"Code Cache"\js\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"Code Cache"\js\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"Code Cache"\js\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"Code Cache"\wasm\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"Code Cache"\wasm\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"Code Cache"\wasm\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"Platform Notifications"\*.* /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"Platform Notifications"\*.* /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"Platform Notifications"\*.* /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\EdgePushStorageWithWinRt\*.log /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\EdgePushStorageWithWinRt\*.log /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\EdgePushStorageWithWinRt\*.log /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"File System"\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"File System"\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"File System"\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\CacheStorage\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do robocopy %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\CacheStorage\ %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /d %%F in (C:\Users\*) do robocopy %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\ %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do robocopy %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\ %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\Database\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"Service Worker"\Database\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"Service Worker"\Database\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\ScriptCache\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"Service Worker"\ScriptCache\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"Service Worker"\ScriptCache\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\EdgeCoupons\coupons_data.db\*.ldb /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\EdgeCoupons\coupons_data.db\*.ldb /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\EdgeCoupons\coupons_data.db\*.ldb /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\EdgeCoupons\coupons_data.db\index. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\EdgeCoupons\coupons_data.db\index. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\EdgeCoupons\coupons_data.db\index. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\EdgeCoupons\coupons_data.db\*.log /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\EdgeCoupons\coupons_data.db\*.log /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\EdgeCoupons\coupons_data.db\*.log /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Microsoft\Edge\"User Data"\BrowserMetrics\*.pma /s /q >nul 2>&1

::====================================================================================================::

chcp 65001 >nul 2>&1
cls
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "               <dy>Firefox Browser"
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  ┌──────────────────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  │<#0077ff>████████████████                      <#ffffff>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  └──────────────────────────────────────┘"
chcp 850 >nul 2>&1

taskkill /F /IM "firefox.exe" >nul 2>&1
taskkill /F /IM "firefox.exe" >nul 2>&1
taskkill /F /IM "firefox.exe" >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\local\Mozilla\Firefox\Profiles\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\local\Mozilla\Firefox\Profiles\script*.bin /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\local\Mozilla\Firefox\Profiles\startup*.* /s /q >nul 2>&1

::====================================================================================================::

chcp 65001 >nul 2>&1
cls
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "               <dy>Chrome Browser"
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  ┌──────────────────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  │<#0077ff>███████████████████                   <#ffffff>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  └──────────────────────────────────────┘"
chcp 850 >nul 2>&1

taskkill /F /IM "chrome.exe" >nul 2>&1
taskkill /F /IM "chrome.exe" >nul 2>&1
taskkill /F /IM "chrome.exe" >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\Default\Cache\Cache_Data\data*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\Cache\Cache_Data\data*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\Cache\Cache_Data\data*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\Default\Cache\Cache_Data\f*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\Cache\Cache_Data\f*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\Cache\Cache_Data\f*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\Default\Cache\Cache_Data\index. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\Cache\Cache_Data\index. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\Cache\Cache_Data\index. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\Default\GPUCache\d*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\GPUCache\d*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\GPUCache\d*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\Default\GPUCache\i*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\GPUCache\i*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\GPUCache\i*. /s /q) >nul 2>&1
del C:\Program Files\Google\Chrome\Application\SetupMetrics\*.pma /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Code Cache"\js\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\"Code Cache"\js\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Code Cache"\js\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Code Cache"\wasm\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\"Code Cache"\wasm\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Code Cache"\wasm\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\Default\Storage\data_*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\Storage\data_*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\Storage\data_*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\Default\JumpListIconsRecentClosed\*.tmp /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\JumpListIconsRecentClosed\*.tmp /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\JumpListIconsRecentClosed\*.tmp /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\Default\Storage\index*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\Storage\index*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\Storage\index*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\Default\History-journal*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\History-journal*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\History-journal*. / >nul 2>&1s /q)
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Code Cache"\webui_js\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\"Code Cache"\webui_js\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Code Cache"\webui_js\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\CacheStorage\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\Database\*.log /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\"Service Worker"\Database\*.log /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Service Worker"\Database\*.log /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do robocopy %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\CacheStorage\ %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /d %%F in (C:\Users\*) do robocopy %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\ %%F\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do robocopy %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\ %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\Database\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\"Service Worker"\Database\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Service Worker"\Database\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\ScriptCache\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\"Service Worker"\ScriptCache\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Service Worker"\ScriptCache\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\BrowserMetrics*.pma /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome\"User Data"\crash*.pma /s /q >nul 2>&1

::====================================================================================================::

chcp 65001 >nul 2>&1
cls
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "                <dy>Brave Browser"
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  ┌──────────────────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  │<#0077ff>██████████████████████                <#ffffff>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  └──────────────────────────────────────┘"
chcp 850 >nul 2>&1

taskkill /F /IM "brave.exe" >nul 2>&1
taskkill /F /IM "brave.exe" >nul 2>&1
taskkill /F /IM "brave.exe" >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\Cache_Data\data*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\Cache\Cache_Data\data*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\Cache_Data\f*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\Cache\Cache_Data\f*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\Cache_Data\index. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\Cache\Cache_Data\index. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\GPUCache\d*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\GPUCache\d*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\GPUCache\i*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\GPUCache\i*. /s /q >nul 2>&1
del C:\Program Files\BraveSoftware\Brave-Browser\Application\SetupMetrics\*.pma /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Code Cache"\js\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\"Code Cache"\js\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Code Cache"\wasm\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\"Code Cache"\wasm\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Storage\data_*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\Storage\data_*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\JumpListIconsRecentClosed\*.tmp /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\JumpListIconsRecentClosed\*.tmp /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Storage\index*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\Storage\index*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\History-journal*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\History-journal*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Code Cache"\webui_js\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\"Code Cache"\webui_js\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\CacheStorage\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\Database\*.log /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\"Service Worker"\Database\*.log /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do robocopy %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\CacheStorage\ %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /d %%F in (C:\Users\*) do robocopy %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\ %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\Database\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\"Service Worker"\Database\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\ScriptCache\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\"Service Worker"\ScriptCache\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\BrowserMetrics*.pma /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\crash*.pma /s /q >nul 2>&1

::====================================================================================================::

chcp 65001 >nul 2>&1
cls
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "               <dy>Vivaldi Browser"
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  ┌──────────────────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  │<#0077ff>█████████████████████████             <#ffffff>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  └──────────────────────────────────────┘"
chcp 850 >nul 2>&1

taskkill /F /IM "vivaldi.exe" >nul 2>&1
taskkill /F /IM "vivaldi.exe" >nul 2>&1
taskkill /F /IM "vivaldi.exe" >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\Default\Cache\Cache_Data\data*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\Cache\Cache_Data\data*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\Cache\Cache_Data\data*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\Default\Cache\Cache_Data\f*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\Cache\Cache_Data\f*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\Cache\Cache_Data\f*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\Default\Cache\Cache_Data\index. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\Cache\Cache_Data\index. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\Cache\Cache_Data\index. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\Default\GPUCache\d*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\GPUCache\d*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\GPUCache\d*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\Default\GPUCache\i*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\GPUCache\i*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\GPUCache\i*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\Default\"Code Cache"\js\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\"Code Cache"\js\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Code Cache"\js\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\Default\"Code Cache"\wasm\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\"Code Cache"\wasm\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Code Cache"\wasm\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\Default\Storage\data_*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\Storage\data_*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\Storage\data_*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\Default\JumpListIconsRecentClosed\*.tmp /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\JumpListIconsRecentClosed\*.tmp /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\JumpListIconsRecentClosed\*.tmp /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\Default\Storage\index*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\Storage\index*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\Storage\index*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\Default\History-journal*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\History-journal*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\History-journal*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\Default\"Code Cache"\webui_js\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\"Code Cache"\webui_js\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Code Cache"\webui_js\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\CacheStorage\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\Database\*.log /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\"Service Worker"\Database\*.log /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Service Worker"\Database\*.log /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do robocopy %%F\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\CacheStorage\ %%F\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /d %%F in (C:\Users\*) do robocopy %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\ %%F\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do robocopy %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\ %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\Database\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\"Service Worker"\Database\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Service Worker"\Database\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\ScriptCache\*. /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\"Service Worker"\ScriptCache\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Service Worker"\ScriptCache\*. /s /q) >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\BrowserMetrics*.pma /s /q >nul 2>&1
for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Vivaldi\"User Data"\crash*.pma /s /q >nul 2>&1

::====================================================================================================::

chcp 65001 >nul 2>&1
cls
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "                <dy>Finalizando"
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  ┌──────────────────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  │<#0077ff>██████████████████████████████████████<#ffffff>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  └──────────────────────────────────────┘"
chcp 850 >nul 2>&1

for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
goto ToolBox
:do_clear
echo clearing %1 >nul 2>&1
wevtutil.exe cl %1 >nul 2>&1
goto :eof


::====================================================================================================::
::====================================================================================================::


:AntiVirus
batbox /h 0 && mode 32,5
del /F /Q "%SYSTEMDRIVE%\NightBox\adwcleaner.exe" >nul 2>&1
aria2c.exe -d "%SYSTEMDRIVE%\NightBox" https://adwcleaner.malwarebytes.com/adwcleaner?channel=release >nul 2>&1
%SYSTEMDRIVE%\NightBox\adwcleaner.exe /eula /clean /noreboot>>%SYSTEMDRIVE%\NightBox\AdwLOG.txt >nul 2>&1
start %SYSTEMDRIVE%\NightBox\AdwLOG.txt >nul 2>&1
del /F /Q "%SYSTEMDRIVE%\NightBox\rkill.exe" >nul 2>&1
aria2c.exe -d "%SYSTEMDRIVE%\NightBox" https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/rkill.exe >nul 2>&1
%SYSTEMDRIVE%\NightBox\rkill.exe >nul 2>&1
goto ToolBox



::====================================================================================================::
::====================================================================================================::


:NovoIP
batbox /h 0 && mode 32,5
ipconfig /release >nul 2>&1
ipconfig /renew >nul 2>&1
arp -d * >nul 2>&1
nbtstat -R >nul 2>&1
nbtstat -RR >nul 2>&1
ipconfig /flushdns >nul 2>&1
ipconfig /registerdns >nul 2>&1
goto ToolBox


::====================================================================================================::
::====================================================================================================::


:Consultas
Batbox /h 0 && mode 29,14
chcp 65001 >nul 2>&1
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>┌───────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                           │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>└───────────────────────────┘"
call %SYSTEMDRIVE%\NightBox\Gecho.exe " "
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff> Pressione <#d2691e>ENTER <#ffffff>para voltar "
chcp 850 >nul 2>&1

Call Button  6 2 " IP Estatico " 6 6 "  IP Pinger  "  # Press
Getinput /m %Press% /h 70

if %errorlevel%==1 (goto ConsultarIP)
if %errorlevel%==2 (goto PingerIP)
goto MenuInicial


::====================================================================================================::
::====================================================================================================::


:ConsultarIP
cls
Batbox /h 1 && mode 40,5
chcp 65001 >nul 2>&1
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>   Qual endereço IP deseja consultar?"
echo.
chcp 850 >nul 2>&1
set/p ConsultaIP=">>> "

set "url=https://ipinfo.io/%ConsultaIP%/json"

for /f "delims=" %%a in ('powershell -Command "& { $response = Invoke-RestMethod -Uri '%url%' -Method Get; $response.ip }"') do set "ip=%%a"
for /f "delims=" %%a in ('powershell -Command "& { $response = Invoke-RestMethod -Uri '%url%' -Method Get; $response.city }"') do set "city=%%a"
for /f "delims=" %%a in ('powershell -Command "& { $response = Invoke-RestMethod -Uri '%url%' -Method Get; $response.region }"') do set "region=%%a"
for /f "delims=" %%a in ('powershell -Command "& { $response = Invoke-RestMethod -Uri '%url%' -Method Get; $response.country }"') do set "country=%%a"
for /f "delims=" %%a in ('powershell -Command "& { $response = Invoke-RestMethod -Uri '%url%' -Method Get; $response.timezone }"') do set "timezone=%%a"
powershell -nop -c "& {$host.ui.rawui.windowtitle=' '}" && mode 39,6

Batbox /h 0 && mode 37,14
chcp 65001 >nul 2>&1
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>┌───────────────┬───────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│  <#ffffff>Endereço IP  <#666666>│ <#ffffff>%ip% "
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>├───────────────┼───────────────────┤"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│  <#ffffff>Localização  <#666666>│ <#ffffff>%city%"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>├───────────────┼───────────────────┤"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│ <#ffffff>Região/Estado <#666666>│ <#ffffff>%region%"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>├───────────────┼───────────────────┤"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│  <#ffffff>Código País  <#666666>│ <#ffffff>%country%"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>├───────────────┼───────────────────┤"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│ <#ffffff>Fuso Horários <#666666>│ <#ffffff>%timezone%"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>└───────────────┴───────────────────┘"
call %SYSTEMDRIVE%\NightBox\Gecho.exe " "
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>     Pressione <#d2691e>ENTER <#ffffff>para voltar "
pause >nul 2>&1d
goto Consultas


::====================================================================================================::
::====================================================================================================::


:PingerIP
cls
Batbox /h 1 && mode 41,5
chcp 65001 >nul 2>&1
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>   Qual endereço IP deseja ver o ping?"
echo.
chcp 850 >nul 2>&1
set/p IP=">>> "


set "url=https://ipinfo.io/%IP%/json"
for /f "delims=" %%a in ('powershell -Command "& { $response = Invoke-RestMethod -Uri '%url%' -Method Get; $response.region }"') do set "region=%%a"
for /f "delims=" %%a in ('powershell -Command "& { $response = Invoke-RestMethod -Uri '%url%' -Method Get; $response.country }"') do set "country=%%a"
powershell -nop -c "& {$host.ui.rawui.windowtitle=' '}"

chcp 65001 >nul 2>&1
Batbox /h 0 && mode 37,10

:Pinger
FOR /F "tokens=7 delims== " %%G IN ('PING -n 1 %IP% ^| FIND "tempo="') DO SET PingTime=%%G
IF NOT DEFINED PingTime (
  SET in=c
  cls
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>┌─────────────────┬─────────────────┐"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│   <#ffffff>Endereço IP   <#666666>│ <#ffffff>%IP% "
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>├─────────────────┼─────────────────┤"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│  <#ffffff>Região/Estado  <#666666>│ <#ffffff>%region%"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>├─────────────────┼─────────────────┤"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│   <#ffffff>Código País   <#666666>│ <#ffffff>%country%"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>└─────────────────┴─────────────────┘"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe " "
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>          Servidor: <#ff0000>Offline"
) ELSE (
  cls
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>┌─────────────────┬─────────────────┐"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│   <#ffffff>Endereço IP   <#666666>│ <#ffffff>%IP% "
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>├─────────────────┼─────────────────┤"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│  <#ffffff>Região/Estado  <#666666>│ <#ffffff>%region%"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>├─────────────────┼─────────────────┤"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│   <#ffffff>Código País   <#666666>│ <#ffffff>%country%"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>└─────────────────┴─────────────────┘"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe " "
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>        Ping do servidor: <#008000>%PingTime%"
)
ping -n 3 127.0.0.1 >nul 2>&1


FOR /F "tokens=7 delims== " %%G IN ('PING -n 1 %IP% ^| FIND "tempo="') DO SET PingTime=%%G
IF NOT DEFINED PingTime (
  SET in=c
  cls
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>┌─────────────────┬─────────────────┐"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│   <#ffffff>Endereço IP   <#666666>│ <#ffffff>%IP% "
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>├─────────────────┼─────────────────┤"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│  <#ffffff>Região/Estado  <#666666>│ <#ffffff>%region%"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>├─────────────────┼─────────────────┤"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│   <#ffffff>Código País   <#666666>│ <#ffffff>%country%"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>└─────────────────┴─────────────────┘"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe " "
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>          Servidor: <#ff0000>Offline"
) ELSE (
  cls
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>┌─────────────────┬─────────────────┐"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│   <#ffffff>Endereço IP   <#666666>│ <#ffffff>%IP% "
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>├─────────────────┼─────────────────┤"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│  <#ffffff>Região/Estado  <#666666>│ <#ffffff>%region%"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>├─────────────────┼─────────────────┤"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│   <#ffffff>Código País   <#666666>│ <#ffffff>%country%"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>└─────────────────┴─────────────────┘"
  call %SYSTEMDRIVE%\NightBox\Gecho.exe " "
  call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>        Ping do servidor: <#008000>%PingTime%"
)
ping -n 3 127.0.0.1 >nul 2>&1
goto Pinger