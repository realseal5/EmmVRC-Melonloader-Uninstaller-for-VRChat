@echo off
echo.
echo.
echo.
echo.
echo.
echo [34m
echo [1m
echo ^                           __                           __    
echo ^   _______   ____  _____  ^|  ^|    ______  ____  _____  ^|  ^|   
echo ^   \_  __ \_/ __ \ \__  \ ^|  ^|   /  ___/_/ __ \ \__  \ ^|  ^|   
echo ^    ^|  ^| \/\  ___/  / __ \^|  ^|__ \___ \ \  ___/  / __ \^|  ^|__ 
echo ^    ^|__^|    \____^> (______/____//_____/  \____^> (______/____/ 
echo [0m
echo ^    --------------------------------------------------------
echo ^    ^|  MelonLoader - EmmVRC AutoInstaller v1.6 by realseal ^|
echo ^    ^|  EmmVRC by thetrueyoshifan (thetrueyoshifan.com)     ^|
echo ^    ^|  MelonLoader by Herp Derpinstine (melonwiki.xyz)     ^|
echo ^    --------------------------------------------------------
echo.
echo Checking VrChat installation..
set /A x=0
IF NOT EXIST Vrchat.exe (
    c:
    IF EXIST "C:\Program Files (x86)\Steam\steamapps\common\VRChat\VRChat.exe" ( cd "C:\Program Files (x86)\Steam\steamapps\common\VRChat"
    ) else (
          d:
          IF EXIST "D:\Games\Steam\Steamapps\common\VRChat\VRChat.exe" ( cd "D:\Games\Steam\Steamapps\common\VRChat"
           ) else ( 
                  
                  IF EXIST "D:\Steam\Steamapps\common\VRChat\VRChat.exe" ( cd "D:\Steam\Steamapps\common\VRChat"
                   ) else (
                    echo.
                    echo [31m
                    echo [1m
                    echo "VrChat.exe" not found
                    echo Please put this file in the VRChat installation folder^!
                    echo To find it:
                    echo Open Steam ^> Library ^> Right click VrChat ^> Manage ^> Browse local files
                    echo [0m
                    echo.
                    echo.
                    echo.
                    pause
                   )
           )   
    )   
) 
IF EXIST VrChat.exe (
    echo Done!
    echo Cleaning up existing MelonLoader/EmmVRC installation..
rem Melonloader
IF EXIST MelonLoader rd /S /Q MelonLoader || set /A x=%x%+1
IF EXIST version.dll del version.dll || set /A x=%x%+1
IF EXIST MelonLoader.zip del MelonLoader.zip || set /A x=%x%+1
IF EXIST NOTICE.txt del NOTICE.txt || set /A x=%x%+1
IF EXIST winmm.dll del winmm.dll || set /A x=%x%+1
IF EXIST Mono.Cecil.dll del Mono.Cecil.dll || set /A x=%x%+1
rem EmmVRC
IF EXIST Mods\emmVRCLoader.dll del Mods\emmVRCLoader.dll || set /A x=%x%+1
    echo Done!
)
pause