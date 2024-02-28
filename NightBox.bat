::==========================::
::                          ::
::  Criado Por <\DarkMode>  ::
::  Criação: 16/06/2023     ::
::                          ::
::==========================::


@echo off && cls && mode 15,1 && color 0f >nul 2>&1
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
powershell -nop -c "& {$host.ui.rawui.windowtitle=' '}" && mode 39,6


::====================================================================================================::
::====================================================================================================::

rmdir /S /Q %SYSTEMDRIVE%\NightBox >nul 2>&1
mkdir %SYSTEMDRIVE%\NightBox >nul 2>&1
cd %SYSTEMDRIVE%\NightBox >nul 2>&1
echo.
echo.
echo      Baixando Arquivos Importantes
echo            Aguarde, Por favor
echo.

if not exist "%SYSTEMROOT%\System32\aria2c.exe" curl -g -L -o "%SYSTEMROOT%\System32\aria2c.exe" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/aria2c.exe" >nul 2>&1

set "Files=batbox.exe GetInput.exe Button.bat Gecho.exe 7z.dll 7z.exe UnRAR.exe"
set "URL=https://github.com/0DarkMode0/DarkCloud/raw/Main/NightBox/"

for %%f in (%Files%) do (
    if not exist "%SYSTEMROOT%\System32\%%f" (
        aria2c.exe -j 8 -d "%SYSTEMROOT%\System32" "%URL%%%f" >nul 2>&1
    )
)

if not exist "%SYSTEMDRIVE%\NightBox\Gecho.exe" (
    aria2c.exe -j 8 -d "%SYSTEMDRIVE%\NightBox" "%URL%Gecho.exe" >nul 2>&1
)

goto MenuInicial


::====================================================================================================::
::====================================================================================================::


:MenuInicial
cls && Batbox /h 0 && mode 59,21 && chcp 65001 >nul 2>&1
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
cls && Batbox /h 0 && mode 29,18 && chcp 65001 >nul 2>&1
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

Call Button  6 2 "   Limpeza   " 6 6 "   Novo IP   " 6 10 " Ferramentas "  # Press
Getinput /m %Press% /h 70

if %errorlevel%==1 (goto Limpeza)
if %errorlevel%==2 (goto NovoIP)
if %errorlevel%==3 (goto Ferramentas)
goto MenuInicial


::====================================================================================================::
::====================================================================================================::


:Limpeza
cls && mode 44,7 && chcp 65001 >nul 2>&1
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "            <dy>Arquivos Temporários"
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  ┌──────────────────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  │<#0077ff>████                                  <#ffffff>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  └──────────────────────────────────────┘"
chcp 850 >nul 2>&1


del c:\$recycle.bin\* /s /q >nul 2>&1
PowerShell.exe -NoProfile -Command Clear-RecycleBin -Confirm:$false >nul 2>&1

for /d %%F in (C:\Users\*) do (
    Powershell.exe Remove-Item -Path "%%F\AppData\Local\Temp\*" -Recurse -Force >nul 2>&1
    type nul > "%%F\AppData\Local\Temp\vazio.txt" >nul 2>&1
    robocopy "%%F\AppData\Local\Temp\" "%%F\AppData\Local\Temp\" /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
    del "%%F\AppData\Local\Temp\vazio.txt" >nul 2>&1
)

del c:\Windows\Temp\* /s /q >nul 2>&1
type nul > c:\Windows\Temp\vazio.txt >nul 2>&1
robocopy c:\Windows\Temp c:\Windows\Temp /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
del c:\Windows\Temp\vazio.txt >nul 2>&1

::====================================================================================================::

cls && chcp 65001 >nul 2>&1
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "               <dy>Logs do Windows"
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  ┌──────────────────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  │<#0077ff>████████                              <#ffffff>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  └──────────────────────────────────────┘"
chcp 850 >nul 2>&1


del C:\Windows\Logs\cbs\*.log >nul 2>&1
del C:\Windows\setupact.log >nul 2>&1
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
for /d %%F in (C:\Users\*) do (
    del "%%F\AppData\Local\Microsoft\OneDrive\setup\logs\*.log" /s /q >nul 2>&1
    del "%%F\AppData\Local\Microsoft\OneDrive\*.odl" /s /q >nul 2>&1
    del "%%F\AppData\Local\Microsoft\OneDrive\*.aodl" /s /q >nul 2>&1
    del "%%F\AppData\Local\Microsoft\OneDrive\*.otc" /s /q >nul 2>&1
)

for /d %%F in (C:\Users\*) do (
    del "%%F\AppData\Local\Microsoft\*.log" /s /q >nul 2>&1
    del "%%F\AppData\Local\CrashDumps\*.dmp" /s /q >nul 2>&1
    del "%%F\AppData\Local\Microsoft\Windows\Explorer\*.db" /s /q >nul 2>&1
    del "%%F\AppData\Local\Microsoft\Windows\WebCache\*.log" /s /q >nul 2>&1
    del "%%F\AppData\Local\Microsoft\Windows\SettingSync\*.log" /s /q >nul 2>&1
    del "%%F\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.tmp" /s /q >nul 2>&1
    del "%%F\AppData\Local\Microsoft\Terminal Server Client\Cache\*.bin" /s /q >nul 2>&1
    del "%%F\AppData\Local\Microsoft\Windows\INetCache\IE\*" /s /q >nul 2>&1
    del "%%F\AppData\Local\Microsoft\Windows\INetCache\Low\*.dat" /s /q >nul 2>&1
    del "%%F\AppData\Local\Microsoft\Windows\INetCache\Low\*.js" /s /q >nul 2>&1
    del "%%F\AppData\Local\Microsoft\Windows\INetCache\Low\*.htm" /s /q >nul 2>&1
    del "%%F\AppData\Local\Microsoft\Windows\INetCache\Low\*.txt" /s /q >nul 2>&1
    del "%%F\AppData\Local\Microsoft\Windows\INetCache\Low\*.jpg" /s /q >nul 2>&1
    robocopy "%%F\AppData\Local\Microsoft\Windows\INetCache\IE\" "%%F\AppData\Local\Microsoft\Windows\INetCache\IE\" /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
)

for /d %%F in (C:\Users\*) do (
    del "%%F\AppData\Local\Spotify\Data\*.file" /s /q >nul 2>&1
    del "%%F\AppData\Local\Spotify\Browser\Cache\Cache_Data\f*" /s /q >nul 2>&1
    del "%%F\AppData\Local\Spotify\Browser\GPUCache\*" /s /q >nul 2>&1
    del "%%F\AppData\Roaming\Adobe\Common\Media Cache files\*.*" /s /q >nul 2>&1
)

::====================================================================================================::

cls && chcp 65001 >nul 2>&1
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "               <dy>Microsoft Edge"
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  ┌──────────────────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  │<#0077ff>████████████                          <#ffffff>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  └──────────────────────────────────────┘"
chcp 850 >nul 2>&1


taskkill /F /IM "msedge.exe" >nul 2>&1
taskkill /F /IM "msedge.exe" >nul 2>&1
taskkill /F /IM "msedge.exe" >nul 2>&1
for /d %%F in (C:\Users\*) do (
    attrib -h -s "%%F\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*.*" >nul 2>&1
    del "%%F\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*.*" /s /q >nul 2>&1
    attrib +h +s "%%F\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content" >nul 2>&1

    for %%P in (Default "Guest Profile") do (
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\Cache\Cache_Data\data*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\Cache\Cache_Data\f*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\Cache\Cache_Data\index. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\GPUCache\d*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\GPUCache\i*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\IndexedDB\https_ntp.msn.com_0.indexeddb.leveldb\*.*" /s /q >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\*.pma /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\Code Cache\js\*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\Code Cache\wasm\*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\Platform Notifications\*.*" /s /q >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\EdgePushStorageWithWinRt\*.log /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\File System\*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\Service Worker\CacheStorage\*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\Service Worker\Database\*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\Service Worker\ScriptCache\*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\EdgeCoupons\coupons_data.db\*.ldb /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\EdgeCoupons\coupons_data.db\index. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\%%P\EdgeCoupons\coupons_data.db\*.log /s /q" >nul 2>&1
    )

    for /l %%i in (1,1,12) do (
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\Cache\Cache_Data\data*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\Cache\Cache_Data\f*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\Cache\Cache_Data\index. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\GPUCache\d*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\GPUCache\i*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\IndexedDB\https_ntp.msn.com_0.indexeddb.leveldb\*.*" /s /q >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\*.pma /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\Code Cache\js\*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\Code Cache\wasm\*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\Platform Notifications\*.*" /s /q >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\EdgePushStorageWithWinRt\*.log /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\File System\*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\Service Worker\CacheStorage\*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\Service Worker\Database\*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\Service Worker\ScriptCache\*. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\EdgeCoupons\coupons_data.db\*.ldb /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\EdgeCoupons\coupons_data.db\index. /s /q" >nul 2>&1
        del "%%F\AppData\Local\Microsoft\Edge\User Data\Profile %%i\EdgeCoupons\coupons_data.db\*.log /s /q" >nul 2>&1
    )
    
    del "%%F\AppData\Local\Microsoft\Edge\User Data\BrowserMetrics\*.pma /s /q" >nul 2>&1
)

::====================================================================================================::

cls && chcp 65001 >nul 2>&1
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
for /d %%F in (C:\Users\*) do (
    del "%%F\AppData\local\Mozilla\Firefox\Profiles\*.*" /s /q >nul 2>&1
    del "%%F\AppData\local\Mozilla\Firefox\Profiles\script*.bin" /s /q >nul 2>&1
    del "%%F\AppData\local\Mozilla\Firefox\Profiles\startup*.*" /s /q >nul 2>&1
)

::====================================================================================================::

cls && chcp 65001 >nul 2>&1
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "               <dy>Chrome Browser"
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  ┌──────────────────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  │<#0077ff>████████████████████                  <#ffffff>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  └──────────────────────────────────────┘"
chcp 850 >nul 2>&1


taskkill /F /IM "chrome.exe" >nul 2>&1
taskkill /F /IM "chrome.exe" >nul 2>&1
taskkill /F /IM "chrome.exe" >nul 2>&1
for /d %%U in (C:\Users\*) do (
    for %%P in (Default "Guest Profile" "Profile 1" "Profile 2" "Profile 3" "Profile 4" "Profile 5" "Profile 6" "Profile 7" "Profile 8" "Profile 9" "Profile 10" "Profile 11" "Profile 12") do (
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\Cache\Cache_Data\data*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\Cache\Cache_Data\f*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\Cache\Cache_Data\index." /s /q >nul 2>&1
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\GPUCache\d*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\GPUCache\i*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\GPUCache\s*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\IndexedDB\https_ntp.msn.com_0.indexeddb.leveldb\*.*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\*.pma" /s /q >nul 2>&1
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\Code Cache\js\*. /s /q" >nul 2>&1
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\Code Cache\wasm\*. /s /q" >nul 2>&1
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\Storage\data_*. /s /q" >nul 2>&1
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\JumpListIconsRecentClosed\*.tmp" /s /q >nul 2>&1
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\Storage\index*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\History-journal*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\Code Cache\webui_js\*. /s /q" >nul 2>&1
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\Service Worker\CacheStorage\*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\Service Worker\Database\*.log" /s /q >nul 2>&1
        del "%%U\AppData\Local\Google\Chrome\User Data\%%P\Service Worker\ScriptCache\*" /s /q >nul 2>&1
    )
    robocopy "%%U\AppData\Local\Google\Chrome\User Data\Default\Service Worker\CacheStorage\" "%%U\AppData\Local\Google\Chrome\User Data\Default\Service Worker\CacheStorage\" /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1 >nul 2>&1
)
del "C:\Program Files\Google\Chrome\Application\SetupMetrics\*.pma" /s /q >nul 2>&1
del "C:\Users\*\AppData\Local\Google\Chrome\User Data\*.pma" /s /q >nul 2>&1

::====================================================================================================::

cls && chcp 65001 >nul 2>&1
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "                <dy>Brave Browser"
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  ┌──────────────────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  │<#0077ff>████████████████████████              <#ffffff>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  └──────────────────────────────────────┘"
chcp 850 >nul 2>&1


taskkill /F /IM "brave.exe" >nul 2>&1
taskkill /F /IM "brave.exe" >nul 2>&1
taskkill /F /IM "brave.exe" >nul 2>&1
for /d %%U in (C:\Users\*) do (
    for %%P in (Default "Guest Profile" "Profile 1" "Profile 2" "Profile 3" "Profile 4" "Profile 5" "Profile 6" "Profile 7" "Profile 8" "Profile 9" "Profile 10" "Profile 11" "Profile 12") do (
        del "%%U\AppData\Local\BraveSoftware\Brave-Browser\User Data\%%P\Cache\Cache_Data\data*" /s /q >nul 2>&1
        del "%%U\AppData\Local\BraveSoftware\Brave-Browser\User Data\%%P\Cache\Cache_Data\f*" /s /q >nul 2>&1
        del "%%U\AppData\Local\BraveSoftware\Brave-Browser\User Data\%%P\Cache\Cache_Data\index." /s /q >nul 2>&1
        del "%%U\AppData\Local\BraveSoftware\Brave-Browser\User Data\%%P\GPUCache\d*" /s /q >nul 2>&1
        del "%%U\AppData\Local\BraveSoftware\Brave-Browser\User Data\%%P\GPUCache\i*" /s /q >nul 2>&1
        del "%%U\AppData\Local\BraveSoftware\Brave-Browser\User Data\%%P\Storage\data_*. /s /q" >nul 2>&1
        del "%%U\AppData\Local\BraveSoftware\Brave-Browser\User Data\%%P\JumpListIconsRecentClosed\*.tmp" /s /q >nul 2>&1
        del "%%U\AppData\Local\BraveSoftware\Brave-Browser\User Data\%%P\Storage\index*" /s /q >nul 2>&1
        del "%%U\AppData\Local\BraveSoftware\Brave-Browser\User Data\%%P\History-journal*" /s /q >nul 2>&1
        del "%%U\AppData\Local\BraveSoftware\Brave-Browser\User Data\%%P\Service Worker\CacheStorage\*" /s /q >nul 2>&1
        del "%%U\AppData\Local\BraveSoftware\Brave-Browser\User Data\%%P\Service Worker\Database\*.log" /s /q >nul 2>&1
        del "%%U\AppData\Local\BraveSoftware\Brave-Browser\User Data\%%P\Service Worker\ScriptCache\*" /s /q >nul 2>&1
        robocopy "%%U\AppData\Local\BraveSoftware\Brave-Browser\User Data\Default\Service Worker\CacheStorage\" "%%U\AppData\Local\BraveSoftware\Brave-Browser\User Data\Default\Service Worker\CacheStorage\" /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
    )
    del "C:\Program Files\BraveSoftware\Brave-Browser\Application\SetupMetrics\*.pma" /s /q >nul 2>&1
    del "%%U\AppData\Local\BraveSoftware\Brave-Browser\User Data\*.pma" /s /q >nul 2>&1
)

::====================================================================================================::

cls && chcp 65001 >nul 2>&1
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "               <dy>Vivaldi Browser"
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  ┌──────────────────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  │<#0077ff>████████████████████████████          <#ffffff>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  └──────────────────────────────────────┘"
chcp 850 >nul 2>&1


taskkill /F /IM "vivaldi.exe" >nul 2>&1
taskkill /F /IM "vivaldi.exe" >nul 2>&1
taskkill /F /IM "vivaldi.exe" >nul 2>&1
for /d %%U in (C:\Users\*) do (
    for %%P in (Default "Guest Profile" "Profile 1" "Profile 2" "Profile 3" "Profile 4" "Profile 5" "Profile 6" "Profile 7" "Profile 8" "Profile 9" "Profile 10" "Profile 11" "Profile 12") do (
        del "%%U\AppData\Local\Vivaldi\User Data\%%P\Cache\Cache_Data\data*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Vivaldi\User Data\%%P\Cache\Cache_Data\f*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Vivaldi\User Data\%%P\Cache\Cache_Data\index." /s /q >nul 2>&1
        del "%%U\AppData\Local\Vivaldi\User Data\%%P\GPUCache\d*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Vivaldi\User Data\%%P\GPUCache\i*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Vivaldi\User Data\%%P\Code Cache\js\*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Vivaldi\User Data\%%P\Code Cache\wasm\*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Vivaldi\User Data\%%P\Storage\data_*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Vivaldi\User Data\%%P\JumpListIconsRecentClosed\*.tmp" /s /q >nul 2>&1
        del "%%U\AppData\Local\Vivaldi\User Data\%%P\Storage\index*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Vivaldi\User Data\%%P\History-journal*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Vivaldi\User Data\%%P\Service Worker\CacheStorage\*" /s /q >nul 2>&1
        del "%%U\AppData\Local\Vivaldi\User Data\%%P\Service Worker\Database\*.log" /s /q >nul 2>&1
        del "%%U\AppData\Local\Vivaldi\User Data\%%P\Service Worker\ScriptCache\*" /s /q >nul 2>&1
        robocopy "%%U\AppData\Local\Vivaldi\User Data\Default\Service Worker\CacheStorage\" "%%U\AppData\Local\Vivaldi\User Data\Default\Service Worker\CacheStorage\" /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
    )
    del "%%U\AppData\Local\Vivaldi\User Data\BrowserMetrics*.pma" /s /q >nul 2>&1
    del "%%U\AppData\Local\Vivaldi\User Data\crash*.pma" /s /q >nul 2>&1
)

::====================================================================================================::

cls && chcp 65001 >nul 2>&1
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "                <dy>Finalizando"
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  ┌──────────────────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  │<#0077ff>██████████████████████████████████████<#ffffff>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>  └──────────────────────────────────────┘"
chcp 850 >nul 2>&1

cleanmgr.exe /verylowdisk >nul 2>&1
for /f "tokens=*" %%G in ('wevtutil.exe el') DO (wevtutil.exe cl "%%G") >nul 2>&1
goto ToolBox


::====================================================================================================::
::====================================================================================================::


:NovoIP
cls && mode 39,6 && chcp 65001 >nul 2>&1
echo.
echo.
echo        Limpando/Alterando seu IP
echo            Aguarde, Por favor
echo.
ipconfig /release >nul 2>&1
ipconfig /renew >nul 2>&1
ipconfig /flushdns >nul 2>&1
ipconfig /registerdns >nul 2>&1
arp -d * >nul 2>&1
nbtstat -R >nul 2>&1
nbtstat -RR >nul 2>&1
netsh int ip reset >nul 2>&1
goto ToolBox


::====================================================================================================::
::====================================================================================================::


:Ferramentas
cls && Batbox /h 1 && mode 32,14 && chcp 65001 >nul 2>&1
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>┌──────────────────────────────┐"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                              │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                              │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│ <#4169e1>[ <#FFFFFF>1 <#4169e1>] <#FFFFFF>Windows Activation     <#666666>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                              │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│ <#4169e1>[ <#FFFFFF>2 <#4169e1>] <#FFFFFF>Revo Uninstaller       <#666666>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                              │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│ <#4169e1>[ <#FFFFFF>3 <#4169e1>] <#FFFFFF>AdwCleaner             <#666666>│"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                              │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>│                              │"
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#666666>└──────────────────────────────┘"
call %SYSTEMDRIVE%\NightBox\Gecho.exe " "
set /p escolha=">>> "
chcp 850 >nul 2>&1

if "%escolha%"=="1" goto WindowsMAS
if "%escolha%"=="2" goto Uninstaller
if "%escolha%"=="3" goto AdwCleaner

:WindowsMAS
cls && Batbox /h 1 && mode 33,3 && chcp 65001 >nul 2>&1
echo.
echo   Termine de usar o utilitário.
chcp 850 >nul 2>&1
powershell "irm https://massgrave.dev/get | iex"
powershell -nop -c "& {$host.ui.rawui.windowtitle=' '}"
goto Ferramentas

:Uninstaller
cls && Batbox /h 1 && mode 33,3 && chcp 65001 >nul 2>&1
echo.
echo       [ Baixando Arquivos ]
chcp 850 >nul 2>&1
rmdir /S /Q %SYSTEMDRIVE%\NightBox\Uninstaller >nul 2>&1
mkdir %SYSTEMDRIVE%\NightBox\Uninstaller >nul 2>&1
rmdir /S /Q "%SYSTEMDRIVE%\ProgramData\VS Revo Group\Revo Uninstaller Pro" >nul 2>&1
mkdir "%SYSTEMDRIVE%\ProgramData\VS Revo Group\Revo Uninstaller Pro" >nul 2>&1
aria2c.exe -j 8 -d "%SYSTEMDRIVE%\ProgramData\VS Revo Group\Revo Uninstaller Pro" "https://github.com/0DarkMode0/DarkCloud/raw/Main/NightBox/revouninstallerpro5.lic" >nul 2>&1
aria2c.exe -j 8 -d "%SYSTEMDRIVE%\NightBox\Uninstaller" "https://github.com/0DarkMode0/DarkCloud/raw/Main/NightBox/Uninstaller.rar" >nul 2>&1
UnRAR x %SYSTEMDRIVE%\NightBox\Uninstaller\Uninstaller.rar >nul 2>&1
start %SYSTEMDRIVE%\NightBox\Uninstaller\RevoUninPro.exe >nul 2>&1
goto Ferramentas



:AdwCleaner
cls && Batbox /h 1 && mode 33,3 && chcp 65001 >nul 2>&1
echo.
echo       [ Baixando Arquivos ]
chcp 850 >nul 2>&1
del /F /Q %SYSTEMDRIVE%\NightBox\adwcleaner.exe >nul 2>&1
aria2c.exe -j 8 -d "%SYSTEMDRIVE%\NightBox" "https://adwcleaner.malwarebytes.com/adwcleaner?channel=release" >nul 2>&1
start %SYSTEMDRIVE%\NightBox\adwcleaner.exe >nul 2>&1
goto Ferramentas


::====================================================================================================::
::====================================================================================================::


:Consultas
cls && Batbox /h 0 && mode 29,14 && chcp 65001 >nul 2>&1
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

Call Button  6 2 "  IP Status  " 6 6 "  IP Pinger  "  # Press
Getinput /m %Press% /h 70

if %errorlevel%==1 (goto StatusIP)
if %errorlevel%==2 (goto PingerIP)
goto MenuInicial


::====================================================================================================::
::====================================================================================================::


:StatusIP
cls && Batbox /h 1 && mode 40,5 && chcp 65001 >nul 2>&1
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

cls && Batbox /h 0 && mode 37,14 && chcp 65001 >nul 2>&1
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
cls && Batbox /h 1 && mode 41,5 && chcp 65001 >nul 2>&1
echo.
call %SYSTEMDRIVE%\NightBox\Gecho.exe "<#ffffff>   Qual endereço IP deseja ver o ping?"
echo.
chcp 850 >nul 2>&1
set/p IP=">>> "

set "url=https://ipinfo.io/%IP%/json"
for /f "delims=" %%a in ('powershell -Command "& { $response = Invoke-RestMethod -Uri '%url%' -Method Get; $response.region }"') do set "region=%%a"
for /f "delims=" %%a in ('powershell -Command "& { $response = Invoke-RestMethod -Uri '%url%' -Method Get; $response.country }"') do set "country=%%a"
powershell -nop -c "& {$host.ui.rawui.windowtitle=' '}"

cls && Batbox /h 0 && mode 37,10 && chcp 65001 >nul 2>&1
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