echo off
color 4
title ADB - Tool
cd adb
mkdir Screenshot0
mkdir Video0
:adb
color 4
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
echo [ 5 ] Show Connected Devices                      [ 15 ] Turn Phone Screen On/Off
echo [ 6 ] Change Port                                 [ 16 ] Open Browser
echo ------------------------                          ------------------------
echo [ 7 ] Enable Wi-Fi                                [ 17 ] Brightness Up
echo [ 8 ] Disable Wi-Fi                               [ 18 ] Brightness Down
echo [ 9 ] Restart Phone                               [ 19 ] Go To Home
echo ------------------------                          ------------------------
echo.
echo [ x ] Exit                                        [ n ] Next Page
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
IF "%op%" == "13" GOTO pull
IF "%op%" == "14" GOTO push
IF "%op%" == "15" GOTO screen
IF "%op%" == "16" GOTO browser
IF "%op%" == "17" GOTO up
IF "%op%" == "18" GOTO down
IF "%op%" == "19" GOTO home
IF "%op%" == "x" GOTO exit
IF "%op%" == "p" GOTO adb2
IF not "%op%"  == "n" IF not "%op%"  == "19" IF not "%op%"  == "18" IF not "%op%"  == "17" IF not "%op%"  == "16" IF not "%op%"  == "15" IF not "%op%"  == "14" IF not "%op%"  == "13" IF not "%op%"  == "12" IF not "%op%"  == "11" IF not "%op%"  == "10" IF not "%op%"  == "0" IF not "%op%"  == "1" IF not "%op%"  == "2" IF not "%op%"  == "3" IF not "%op%"  == "4" IF not "%op%" == "5" IF not "%op%" == "6" IF not "%op%" == "7" IF not "%op%" == "8" IF not "%op%" == "9" IF not "%op%" == "x" GOTO adb
:adb2
color 4
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
echo [ 20 ] Show Netstat                               [ 30 ] Ping
echo [ 21 ] Show CPU processes                         [ 31 ] Logcat
echo [ 22 ] Show Packages                              [ 32 ] Show Events
echo ------------------------                          -----------------------  
echo [ 23 ] Install Apk                                [ 33 ] 
echo [ 24 ] Uninstall Apk                              [ 34 ] 
echo [ 25 ] Show Battry Status                         [ 35 ] 
echo [ 26 ] Show Screen Status                         [ 36 ] 
echo ------------------------                          ------------------------
echo [ 27 ] Show Wlan0                                 [ 37 ] 
echo [ 28 ] Make Folder                                [ 38 ] 
echo [ 29 ] Delete Folder                              [ 39 ] 
echo ------------------------                          ------------------------
echo.
echo [ x ] Exit                                        [ f ] First Page
echo.
set /p "op=>> "
IF "%op%" == "20" GOTO netstat
IF "%op%" == "21" GOTO cpu
IF "%op%" == "22" GOTO packets
IF "%op%" == "23" GOTO apk
IF "%op%" == "24" GOTO apk2
IF "%op%" == "25" GOTO battry
IF "%op%" == "26" GOTO screen
IF "%op%" == "27" GOTO wlan0
IF "%op%" == "28" GOTO folder
IF "%op%" == "29" GOTO del
IF "%op%" == "30" GOTO ping
IF "%op%" == "31" GOTO logcat
IF "%op%" == "32" GOTO event
IF "%op%" == "x" GOTO exit
IF "%op%" == "f" GOTO adb
IF not "%op%"  == "32" IF not "%op%"  == "31" IF not "%op%"  == "30" IF not "%op%"  == "29" IF not "%op%"  == "28" IF not "%op%"  == "27" IF not "%op%"  == "26" IF not "%op%"  == "25" IF not "%op%"  == "24" IF not "%op%"  == "23" IF not "%op%"  == "22" IF not "%op%"  == "21" IF not "%op%"  == "x" IF not "%op%"  == "f" IF not "%op%"  == "20" IF not "%op%"  == "21" IF not "%op%"  == "22" IF not "%op%"  == "23" IF not "%op%"  == "24" IF not "%op%"  == "25" GOTO adb2
#Page 2
#------------------------------------------------------------------------------------------------
:netstat
cls
adb shell netstat
set /p "1="
goto adb2
:cpu
cls
echo To Exit CTRL + C
echo When You Press CTRL + C This Will Show Up Terminate batch job (Y/N)?
echo Then Press N
echo.
echo To Continue Press Enter!"
set /p "1="
adb shell top
goto adb2
:packets
cls
adb shell pm list packages
set /p "1="
goto adb2
:apk
cls
echo You Can Find Game/App Apks on "https://apkpure.com/"
set /p "apk=Apk Path On Your Pc? >> "
adb install %apk%
goto adb2
:apk2
cls
echo Example Apk Name: com.termux
set /p "apk2=Enter Apk Name That You Want To Uninstall >> "
adb uninstall %apk2%
goto adb2
:battry
mode con: cols=100 lines=42
cls
adb shell dumpsys battery
set /p "1="
goto adb2
:screen
mode con: cols=100 lines=50
cls
adb shell dumpsys display
set /p "1="
goto adb2
:wlan0
cls
adb shell ip -f inet addr show wlan0
set /p "1="
goto adb2
:folder
cls
set /p "name=Enter Name Of The Folder >> "
set /p "path=Enter Where You Want To Folder To Be >> "
adb shell mkdir %path%%name%
goto adb2
:del
cls
set /p "del=Enter Path Of The File/Folder That You Want To Delete >> "
adb shell  rm -rf %del%
:ping
cls
set /p "ip=Enter Ip Addres On The Device That You Want To Ping >> "
cls
echo To Exit Press CTRL + C
echo When You Press CTRL + C This Will Show Up! Terminate batch job (Y/N)?
echo Then Press N
echo.
ping %ip%
ping %ip%
ping %ip%
ping %ip%
ping %ip%
ping %ip%
ping %ip%
ping %ip%
ping %ip%
ping %ip%
ping %ip%
ping %ip%
ping %ip%
ping %ip%
ping %ip%
ping %ip%
ping %ip%
ping %ip%
goto adb2
:logcat
cls
adb shell logcat
goto adb2
:event
cls
echo To Exit Press CTRL + C
echo When You Press CTRL + C This Will Show Up! Terminate batch job (Y/N)?
echo Then Press N
echo.
adb shell getevent
goto adb2
#Page 1 
#------------------------------------------------------------------------------------------------
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
:screen
cls
adb shell input keyevent 26
goto adb
:browser
cls
adb shell input keyevent 64
goto adb
:up
cls
adb shell input keyevent 221
goto adb
:down
cls
adb shell input keyevent 220
goto adb
:home
cls
adb shell input keyevent 3
goto adb


