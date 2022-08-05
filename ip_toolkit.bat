@echo off
title whale cum!
color 5
cls
echo Welcome to donalds IP Menu!
echo Discord: Itlax#6666
echo Press any key to continue
pause > nul
goto login

title Login
:login 
cls
color B
set /p login= Password :
IF '%login%' == 'chaz' GOTO main_menu
IF '%login%' == 'CHAZ' GOTO main_menu
IF '%login%' == 'Chaz' GOTO main_menu
If not '%login%' == 'chaz' goto loginwrong
:loginwrong
echo wrong password retard
pause > nul
goto login
:main_menu
cls
color C
start chrome https://www.youtube.com/c/JaddexCapitalJ?sub_confirmation=1
ECHO                          __    _                                   
ECHO                     _wr""        "-q__                             
ECHO                  _dP                 9m_     
ECHO                _#P                     9#_                         
ECHO               d#@       Main Menu        9#m                        
ECHO              d##                         ###                       
ECHO             J###                         ###L                      
ECHO             {###K                       J###K                      
ECHO             ]####K      ___aaa___      J####F                      
ECHO         __gmM######_  w#P""   ""9#m  _d#####Mmw__                  
ECHO      _g##############mZ_         __g##############m_               
ECHO    _d####M@PPPP@@M#######Mmp gm#########@@PPP9@M####m_             
ECHO   a###""          ,Z"#####@" '######"\g          ""M##m            
ECHO  J#@"             0L  "*##     ##@"  J#              *#K           
ECHO  #"    by:          `#    "_gmwgm_~  dF  discord:      `#_          
ECHO 7      donald        "#_   ]#####F   dK    itlax          JE          
ECHO                        *m__ ##### __g@"    #6666            F          
ECHO                        "PJ#####LP"                                 
ECHO                          0##69##_                                 
ECHO                        _0########_                                   
ECHO      .               _d#####^#####m__              ,              
ECHO       "*w_________am#####P"   ~9#####mw_________w*"                  
ECHO           ""9@#####@M""           ""P@#####@M""                    


ECHO [0] Main Menu
ECHO [1] Pinger
ECHO [2] spooky
ECHO [3] Skype Resolver
ECHO [4] View Your IP
ECHO [5] IP Lookup
ECHO [6] Grabify Link
ECHO [7] IpGrabber
ECHO [8] OsintFramework
ECHO [9] Log Out
set /p var=Command :
IF '%var%' == '0' GOTO main_menu
IF '%var%' == '1' GOTO pinger
IF '%var%' == '2' GOTO weak_ddoser
IF '%var%' == '3' GOTO skype_resolver
IF '%var%' == '4' GOTO lookup
IF '%var%' == '5' GOTO lookup2
IF '%var%' == '6' GOTO grabify
If '%var%' == '7' GOTO IpGrabber
If '%var%' == '8' GOTO OsintFramework
IF '%var%' == '9' GOTO logoff
IF '%var%' == 'hehe' GOTO secret_menu
IF '%var%' == 'soundcloud' GOTO secret_soundcloud
IF '%var%' == '69' GOTO folder
goto main_menu

:lookup
cls
title Find your IP
color 7
@ipconfig/all | find "Subnet Mask"
@ipconfig/all | find "IPv4" 
@ipconfig/all | find "Default Gateway"
@ipconfig/all | find "Host Name"
echo When you are ready to leave press any key
pause>nul
goto main_menu


:grabify
title Grabify Link
cls
set /p grab= Are you sure you want to open "grabify.link"? (Y/N)
IF '%grab%' == 'N' GOTO main_menu
IF '%grab%' == 'Y' GOTO explorer
IF '%grab%' == 'n' GOTO main_menu
IF '%grab%' == 'y' GOTO explorer
pause
goto main_menu


:explorer
 explorer "http:://www.grabify.link"

echo When you are ready to go back to the menu press any key
pause>nul

goto main_menu

:lookup2
cls
@echo off
type help.py
title Donalds IP Lookup
type help.py
color 04
setlocal ENABLEDELAYEDEXPANSION
set webclient=webclient
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
:menu
cls
echo Coded by donald
title donalds IP lookup
echo.
echo.
goto iplookup
echo.
echo.
echo.
echo.
echo.
echo                       What would you like to do?
echo.
echo                            View your IP: (1)
echo.
echo                            Lookup an IP: (2)
echo.
echo.
echo.
echo.
echo.
echo.
echo.
goto action
:input
echo.
echo Please enter a valid input option.
echo.
:action
echo.
set /p action=Type your choice. 1,2: 
if '%action%'=='1' echo sUrl = "http://ipinfo.io/json" > %temp%\%webclient%.vbs & goto localip
if '%action%'=='2' goto iplookup
goto input
:iplookup
color 07
cls
echo.
echo                          Type an IP to lookup
echo.
set ip=127.0.0.1
set /p ip=IP: 
echo sUrl = "http://ipinfo.io/%ip%/json" > %temp%\%webclient%.vbs
:localip
cls
echo set oHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0") >> %temp%\%webclient%.vbs
echo oHTTP.open "GET", sUrl,false >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Length", Len(sRequest) >> %temp%\%webclient%.vbs
echo oHTTP.send sRequest >> %temp%\%webclient%.vbs
echo HTTPGET = oHTTP.responseText >> %temp%\%webclient%.vbs
echo strDirectory = "%temp%\response.txt" >> %temp%\%webclient%.vbs
echo set objFSO = CreateObject("Scripting.FileSystemObject") >> %temp%\%webclient%.vbs
echo set objFile = objFSO.CreateTextFile(strDirectory) >> %temp%\%webclient%.vbs
echo objFile.Write(HTTPGET) >> %temp%\%webclient%.vbs
echo objFile.Close >> %temp%\%webclient%.vbs
rem echo Msgbox HTTPGET,vbSystemModal+vbOKOnly+vbInformation, "IP Info" >> %temp%\%webclient%.vbs
echo Wscript.Quit >> %temp%\%webclient%.vbs
start %temp%\%webclient%.vbs
set /a requests=0
echo.
rem echo Waiting for API response. . .
echo  Looking up IP Address. . .
:checkresponseexists
set /a requests=%requests% + 1
if %requests% gtr 7 goto failed
IF EXIST "%temp%\response.txt" (
goto response_exist
) ELSE (
ping 127.0.0.1 -n 2 -w 1000 >nul
goto checkresponseexists
)
:failed
taskkill /f /im wscript.exe >nul
del "%temp%\%webclient%.vbs" /f /q /s >nul
echo.
echo Did not receive a response from the API.
echo.
pause
goto menu
:response_exist
cls
echo.
for /f "delims= 	" %%i in ('findstr /i "ip hostname city region country loc org postal" %temp%\response.txt') do (
	set data=%%i
	set data=!data:,=!
	set data=!data:""=Not Listed!
	set data=!data:"=!
	set data=!data:ip:=IP:		!
	set data=!data:hostname:=Hostname:	!
	set data=!data:city:=City:		!
	set data=!data:region:=State:	!
	set data=!data:country:=Country:	!
	set data=!data:loc:=Location:	!
	set data=!data:org:=ISP:		!
	set data=!data:postal:=Postal:	!
	echo !data!
)
echo.
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
pause
if '%ip%'=='' goto menu
goto main_menu

:secret_menu
cls
title Secret Menu
color 2

ECHO boob

echo Press Any Key to Proceed
pause > nul
goto hide
:logoff
set /p LOC=msg Are you sure you want to log off? (Y/N)
IF '%LOC%' == 'N' GOTO back
IF '%LOC%' == 'Y' GOTO end
IF '%LOC%' == 'n' GOTO back
IF '%LOC%' == 'y' GOTO end
pause
goto main_menu

:skype_resolver
set param=%~1
cls
::When 0, it will act as Netstat.
::When 1, it will grab Skype IP's.
set skype=1

setlocal enabledelayedexpansion

::Used to convert PID to process names.
for /f "tokens=1 delims=" %%A in ('tasklist') do call :PID %%A
echo.
echo Skype Resolver (Must be in call or sending file to victim)
echo.
echo [Program:PID] LocalIP:Port - RemoteIP:Port
echo.
for /f "tokens=1-27 delims=: " %%A in ('netstat -ano') do call :netstat %%A %%B %%C %%D %%E %%F %%G %%H %%I %%J %%K %%L %%M %%N %%O %%P %%Q %%R %%S %%T %%U
if "%param%"=="-log" exit /b
echo.
echo The Skype Resolver has finished its process. Press any key to go back to the main menu.
pause>nul
goto main_menu

:PID
set pid_%2=%1
exit /b

:netstat
set type=%1
set srcIP=%2
set srcPort=%3
set dstIP=%4
set dstPort=%5
set state=%6
set pid=%7
set name=!pid_%pid%!

::Filter local connections away.
if "%state%"=="" exit /b
if not "%type%"=="TCP" exit /b
if "%srcIP%"=="Local" exit /b
if "%dstIP%"=="*" exit /b
if "%srcIP%"=="%dstIP%" exit /b
if "%pid%"=="" exit /b

if "%dstPort%"=="[" (
set state=LISTENING
set srcPort=%dstIP%
set pid=%9
)
if "%dstPort%"=="[" set name=!pid_%pid%!

if "%name%"=="" set name=Unknown

::Skype filter
if "%skype%"=="1" (
if /I not "%name%"=="skype.exe" exit /b
if not "%state%"=="ESTABLISHED" exit /b
if "%dstPort%"=="443" exit /b
if "%dstPort%"=="12350" exit /b)

::Formatting \tabs
set srcPortTab= %srcPort%
set namePidTab=[%name%:%pid%] 
set srcIpPortTab=%srcIP%:%srcPort% 
set dstIpPortTab=%dstIP%:%dstPort% 
set stateTab=%state% 
set namePidTab=%namePidTab:~0,20%
set srcIpPortTab=%srcIpPortTab:~0,21%
set dstIpPortTab=%dstIpPortTab:~0,21%
set stateTab=%stateTab:~0,12%
set srcPortTab=%srcPortTab:~-5%

if not "%state%"=="LISTENING" echo.%namePidTab% %srcIPPortTab% %dstIPPortTab% %stateTab%
if "%state%"=="LISTENING" echo.%namePidTab% Listening on: %srcPortTab%
exit /b


:back
goto main_menu

:folder
md folder %random%
GOTO :folder


:weak_ddoser
cls
color D 

color A

title donalds bored pinger

:greeting
cls

ECHO  oooo  o    o        o        ooooooo
ECHO o      o    o       o o            o
ECHO o      o    o      o   o          o
ECHO o      oooooo     o     o        o
ECHO o      o    o    ooooooooo      o
ECHO o      o    o   o         o    o
ECHO  oooo  o    o  o           o  ooooooo
ECHO ==========================================================
ECHO is this chaz not chaz enough?
ECHO damm man thats crazy

set /p IP=Enter IP To Ping:
:top
PING -n 1 %IP% | FIND "TTL="
title :: Pinging: %IP% ::
IF ERRORLEVEL 1 (echo GET FUCKED CHAZ)
set /a num=(%Random%%%9)+1
color %num%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top

:pinger
cls
echo                             ...
echo                           ;::::;
echo                         ;::::; :;
echo                       ;:::::'   :;
echo                      ;:::::;     ;.
echo                     ,:::::'       ;           OOO\
echo                      ::::::;      ;          OOOOO\
echo                     ;:::::;       ;         OOOOOOOO
echo                    ,;::::::;     ;'         / OOOOOOO
echo                  ;:::::::::`. ,,,;.        /  / DOOOOOO
echo                .';:::::::::::::::::;,     /  /     DOOOO
echo               ,::::::;::::::;;;;::::;,   /  /        DOOO
echo              ;`::::::`'::::::;;;::::: ,#/  /          DOOO
echo              : `:::::::`;::::::;;::: ;::# /            DOOO
echo              ::`:::::::`;:::::::: ;::::# /              DOO
echo              `:`:::::::`;:::::: ;::::::#/               DOO
echo               :::`:::::::`;; ;:::::::::##                OO
echo               ::::`:::::::`;::::::::;:::#                OO
echo               `:::::`::::::::::::;'`:;::#                O
echo                `:::::`::::::::;' /  / `:#
echo                 ::::::`:::::;'  /  /   `#

set /p IP=Enter Target:
:top
PING -n 1 %IP% | Find "TTL="
title :: Pinging: %IP% ::
IF ERRORLEVEL 1 (SET in=0b & echo either u put the wrong ip or its down.)
set /a num=(%Random%%%9)+1
color %nun%
:rainbow
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...)
ping -t 2 0 10 127.0.0.1 >nul

color a
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...)
ping -t 2 0 10 127.0.0.1 >nul
color 02
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...) 
ping -t 2 0 10 127.0.0.1 >nul
color 03
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...) 
ping -t 2 0 10 127.0.0.1 >nul
color 04
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...)
ping -t 2 0 10 127.0.0.1 >nul
color 05
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...) 
ping -t 2 0 10 127.0.0.1 >nul
color 06
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...) 
ping -t 2 0 10 127.0.0.1 >nul
color 07
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...) 
ping -t 2 0 10 127.0.0.1 >nul
color 08
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...) 
ping -t 2 0 10 127.0.0.1 >nul
color 09
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...)
ping -t 2 0 10 127.0.0.1 >nul
color 0a
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...)
ping -t 2 0 10 127.0.0.1 >nul
color 0b
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...) 
ping -t 2 0 10 127.0.0.1 >nul
color 0c
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...) 
ping -t 2 0 10 127.0.0.1 >nul
color 0d
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...)
ping -t 2 0 10 127.0.0.1 >nul
color 0e
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...)
ping -t 2 0 10 127.0.0.1 >nul
color 0f
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...)
ping -t 2 0 10 127.0.0.1 >nul
goto rainbow
echo Press Any Key to go back to the menu
pause > nul
goto main_menu

:secret_menu
cls
echo theres nothing here yet lmao

:IpGrabber
title IpGrabber
cls
set /p grab= Are you sure you want to open "IpGrabber"? (Y/N)
IF '%grab%' == 'N' GOTO main_menu
IF '%grab%' == 'Y' GOTO exp
IF '%grab%' == 'n' GOTO main_menu
IF '%grab%' == 'y' GOTO exp
pause
goto main_menu

:exp
explorer https://iplogger.org

echo When you are ready to go back to the menu press any key
pause>nul

goto main_menu

:OsintFramework
title OsintFramework
cls
set /p grab= Are you sure you want to open "OsintFramework"? (Y/N)
IF '%grab%' == 'N' GOTO main_menu
IF '%grab%' == 'Y' GOTO Osint
IF '%grab%' == 'n' GOTO main_menu
IF '%grab%' == 'y' GOTO Osint
pause
goto main_menu

:Osint
explorer https://osintframework.com

echo When you are ready to go back to the menu press any key
pause>nul

goto main_menu



:secret_soundcloud
title soundcloud
cls
set /p grab= Are you sure you want to open "soundcloud"? (Y/N)
IF '%grab%' == 'N' GOTO main_menu
IF '%grab%' == 'Y' GOTO explorer
IF '%grab%' == 'n' GOTO main_menu
IF '%grab%' == 'y' GOTO explorer
pause
goto main_menu


:explorer
 explorer "https://soundcloud.com/the_real_skid_donald"

echo When you are ready to go back to the menu press any key
pause>nul

goto main_menu

:logoff
goto login