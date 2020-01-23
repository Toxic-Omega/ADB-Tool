echo off
color 4
title ADB - Tool
cd adb
mkdir Screenshot0
mkdir Video0
:adb
mode con: cols=100 lines=30
SETLOCAL ENABLEDELAYEDEXPANSION
cls
echo.
echo   ______  ____    ____                     ______                ___      
echo  /\  _  \/\  _`\ /\  _`\                  /\__  _\              /\_ \     
echo  \ \ \L\ \ \ \/\ \ \ \L\ \                \/_/\ \/   ___     ___\//\ \    
echo   \ \  __ \ \ \ \ \ \  _  \      _______     \ \ \  / __`\  / __`\\ \ \   
echo    \ \ \/\ \ \ \_\ \ \ \L\ \    /\______\     \ \ \/\ \L\ \/\ \L\ \\_\ \_ 
echo     \ \_\ \_\ \____/\ \____/    \/______/      \ \_\ \____/\ \____//\____\
echo      \/_/\/_/\/___/  \/___/                     \/_/\/___/  \/___/ \/____/                                                                                                                                                                   
echo.
echo                                Happy Hacking ;D                     - Beta
echo.
echo ------------------------                          ------------------------
echo [ 0 ] Start Adb Server                            [ 10 ] Record Screen
echo [ 1 ] Stop Adb Server                             [ 11 ] Screenshot
echo [ 2 ] Restart Adb Server                          [ 12 ] Shell
echo ------------------------                          -----------------------  
echo [ 3 ] Disconnect All Devices                      [ 13 ] Download Files
echo [ 4 ] Connect To Device                           [ 14 ] Upload Files
echo [ 5 ] Show Connected Devices                      [ 15 ]
echo [ 6 ] Change Port                                 [ 16 ]
echo ------------------------                          ------------------------
echo [ 7 ] Enable Wi-Fi                                [ 17 ]
echo [ 8 ] Disable Wi-Fi                               [ 18 ]
echo [ 9 ] Restart Phone                               [ 19 ]
echo ------------------------                          ------------------------
echo.
echo [ x ] Exit
echo.
set /p "op=>> "
IF "%op%" == "0" GOTO start
IF "%op%" == "1" GOTO stop
IF "%op%" == "2" GOTO restart
IF "%op%" == "3" GOTO disconnect
IF "%op%" == "4" GOTO connect
IF "%op%" == "5" GOTO show
IF "%op%" == "6" GOTO port
IF "%op%" == "7" GOTO enable
IF "%op%" == "8" GOTO disable
IF "%op%" == "9" GOTO restart2
IF "%op%" == "10" GOTO record
IF "%op%" == "11" GOTO screenshot
IF "%op%" == "12" GOTO shell
IF "%op%" == "13" GOTO push
IF "%op%" == "14" GOTO pull
IF "%op%" == "x" GOTO exit
IF not "%op%"  == "16" IF not "%op%"  == "15" IF not "%op%"  == "14" IF not "%op%"  == "13" IF not "%op%"  == "12" IF not "%op%"  == "11" IF not "%op%"  == "10" IF not "%op%"  == "0" IF not "%op%"  == "1" IF not "%op%"  == "2" IF not "%op%"  == "3" IF not "%op%"  == "4" IF not "%op%" == "5" IF not "%op%" == "6" IF not "%op%" == "7" IF not "%op%" == "8" IF not "%op%" == "9" IF not "%op%" == "x" GOTO adb
:start
cls
adb start-server
goto adb
:stop
cls
adb kill-server
goto adb
:restart
cls
adb kill-server
adb start-server
goto adb
:shell
cls
start shell.bat
goto adb
:pull
cls
set /p "path=Path To Directory On Phone That You Want To Download? >> "
cls
adb pull %path% File
start File
cls
goto adb
:restart2
cls
adb reboot
goto adb
:enable
cls
adb shell svc wifi enable
goto adb
:disable
cls
adb shell svc wifi disable
goto adb
:push
cls
set /p "path=Path To File On Your Pc That Your Want To Upload On Phone? >> "
set /p "path2=Path To Directory On Phone That You Want To Upload File? >> "
cls
adb push %path% %path2%
goto adb
:Screenshot
cls
start screenshot.bat
start Screenshot0
goto adb
:record
cls
start video.bat
cls
start Video0
goto adb
:disconnect
cls
adb disconnect
goto adb
:connect
cls
set /p "connect=Enter Device Ip That You Want To Connect To >> "
cls
adb connect %connect%:5555
goto adb
:show
cls
adb devices
set /p "1="
cls
goto adb
:port
cls
set /p "port=Enter New Port >> "
cls
adb tcpip %port%
goto adb
:exit
exit

