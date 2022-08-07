@echo off
color A
title @Peron4TheWin on tw
echo recuerda que todo en la carpeta del script sirve para algo
echo no borres nada todo es utilizado, gracias por usar 
set PATH=%PATH%;%SystemDrive%\servers\
cls
echo follow tw @Peron4TheWin
echo dudas x ds: peron#0268
cls
cd /
if exist servers ( 
cd servers ) else (
mkdir servers
cd servers )
if not exist wget.exe ( powershell Invoke-WebRequest -Uri "https://eternallybored.org/misc/wget/1.21.2/64/wget.exe" -OutFile "%SystemDrive%\servers\wget.exe" )
if not exist "%SystemDrive%\servers\jdk-17.0.2\" ( wget https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_windows-x64_bin.zip -q --show-progress --progress=bar:force:noscroll && timeout 3 >nul && cls && powershell Expand-Archive "%SystemDrive%\servers\openjdk-17.0.2_windows-x64_bin.zip" -DestinationPath "%SystemDrive%\servers" )
if not exist test.vbs ( wget https://cdn.discordapp.com/attachments/901637950520033291/944710863296815184/test.vbs -q --show-progress --progress=bar:force:noscroll && cls ) 
if not exist "%SystemDrive%\servers\jre1.8.0_202" ( wget https://www.dropbox.com/s/0b2qv8ilyvshlu7/jre1.8.0_202.zip -q --show-progress --progress=bar:force:noscroll && cls && timeout 3 >nul && powershell Expand-Archive "%SystemDrive%\servers\jre1.8.0_202.zip" -DestinationPath "%SystemDrive%\servers" )  
if exist "%SystemDrive%\servers\jre1.8.0_202.zip" ( del /f "%SystemDrive%\servers\jre1.8.0_202.zip" )
if exist "%SystemDrive%\servers\openjdk-17.0.2_windows-x64_bin.zip" ( del /f "%SystemDrive%\servers\openjdk-17.0.2_windows-x64_bin.zip" )
cls
echo 1) 1.18.1
echo 2) 1.17.1
echo 3) 1.16.5
echo 4) 1.14.4
echo 5) 1.12.2
echo 6) 1.8.8
choice /c 123456
if %errorlevel% equ 1 goto 1.18.1
if %errorlevel% equ 2 goto 1.17.1
if %errorlevel% equ 3 goto 1.16.5
if %errorlevel% equ 4 goto 1.14.4
if %errorlevel% equ 5 goto 1.12.2
if %errorlevel% equ 6 goto 1.8.8
:1.18.1
cls
if exist 1.18.1 (
cd 1.18.1 ) else ( mkdir 1.18.1 
cd 1.18.1)
cls
if not exist server.jar ( wget https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar -q --show-progress --progress=bar:force:noscroll && cls )
if not exist paper-1.18.1-203.jar ( wget https://papermc.io/api/v2/projects/paper/versions/1.18.1/builds/203/downloads/paper-1.18.1-203.jar -q --show-progress --progress=bar:force:noscroll && cls )
set paper=paper-1.18.2-375.jar
goto launch

:1.17.1
cls
if exist 1.17.1 (
cd 1.17.1 ) else (
mkdir 1.17.1
cd 1.17.1
)
cls
if not exist server.jar ( wget https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar -q --show-progress --progress=bar:force:noscroll && cls )
if not exist paper-1.17.1-408.jar ( wget https://papermc.io/api/v2/projects/paper/versions/1.17.1/builds/408/downloads/paper-1.17.1-408.jar -q --show-progress --progress=bar:force:noscroll && cls )
set paper=paper-1.17.1-408.jar
goto launch

:1.16.5
cls
if exist 1.16.5 (
cd 1.16.5 ) else (
mkdir 1.16.5
cd 1.16.5
)
cls
if not exist server.jar ( wget https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar -q --show-progress --progress=bar:force:noscroll && cls )
if not exist paper-1.16.5-794.jar ( wget https://papermc.io/api/v2/projects/paper/versions/1.16.5/builds/794/downloads/paper-1.16.5-794.jar -q --show-progress --progress=bar:force:noscroll && cls )
set paper=paper-1.16.5-794.jar
goto launch

:1.14.4
if exist 1.14.4 (
cd 1.14.4 ) else (
mkdir 1.14.4
cd 1.14.4
)
cls
if not exist server.jar ( wget https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar -q --show-progress --progress=bar:force:noscroll && cls )
if not exist paper-1.14.4-245.jar ( wget https://papermc.io/api/v2/projects/paper/versions/1.14.4/builds/245/downloads/paper-1.14.4-245.jar -q --show-progress --progress=bar:force:noscroll && cls )
set paper=paper-1.14.4-245.jar
goto launch8

:1.12.2
if exist 1.12.2 (
cd 1.12.2 ) else (
mkdir 1.12.2
cd 1.12.2
)
cls
if not exist server.jar ( wget https://launcher.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar -q --show-progress --progress=bar:force:noscroll && cls )
if not exist paper-1.12.2-1620.jar ( wget https://papermc.io/api/v2/projects/paper/versions/1.12.2/builds/1620/downloads/paper-1.12.2-1620.jar -q --show-progress --progress=bar:force:noscroll && cls ) 
set paper=paper-1.12.2-1620.jar

:1.8.8
if exist 1.8.8 (
cd 1.8.8 ) else (
mkdir 1.8.8
cd 1.8.8
)
cls
if not exist server.jar ( wget https://launcher.mojang.com/v1/objects/5fafba3f58c40dc51b5c3ca72a98f62dfdae1db7/server.jar -q --show-progress --progress=bar:force:noscroll && cls )
if not exist paper-1.8.8-445.jar ( wget https://papermc.io/api/v2/projects/paper/versions/1.8.8/builds/445/downloads/paper-1.8.8-445.jar -q --show-progress --progress=bar:force:noscroll && cls ) 
set paper=paper-1.8.8-445.jar





goto launch8

@REM server 1.18.1 https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar
@rem paper 1.18.1 https://papermc.io/api/v2/projects/paper/versions/1.18.1/builds/203/downloads/paper-1.18.1-203.jar
@rem server 1.17.1 https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar
@rem paper 1.17.1 https://papermc.io/api/v2/projects/paper/versions/1.17.1/builds/408/downloads/paper-1.17.1-408.jar
@REM server 1.16.5 https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar
@rem paper 1.16.5 https://papermc.io/api/v2/projects/paper/versions/1.16.5/builds/794/downloads/paper-1.16.5-794.jar
@rem server 1.14.4 https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar
@rem paper 1.14.4 https://papermc.io/api/v2/projects/paper/versions/1.14.4/builds/245/downloads/paper-1.14.4-245.jar
@rem server 1.12.2 https://launcher.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar
@rem paper 1.12.2 https://papermc.io/api/v2/projects/paper/versions/1.12.2/builds/1620/downloads/paper-1.12.2-1620.jar
@rem paper 1.8.8 https://papermc.io/api/v2/projects/paper/versions/1.8.8/builds/445/downloads/paper-1.8.8-445.jar
@rem server 1.8.8 https://launcher.mojang.com/v1/objects/5fafba3f58c40dc51b5c3ca72a98f62dfdae1db7/server.jar
@rem java 16 https://download.java.net/openjdk/jdk16/ri/openjdk-16+36_windows-x64_bin.zip
@rem java 17 https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_windows-x64_bin.zip
@rem java 8 https://www.dropbox.com/s/0b2qv8ilyvshlu7/jre1.8.0_202.zip
@rem replace.bat https://raw.githubusercontent.com/npocmaka/batch.scripts/master/hybrids/jscript/replacer.bat
@rem usa replace.bat call replacer.bat %SystemDrive%\servers\1.18.1\server.properties "online-mode=true" "online=mode=false"
@rem powershell Expand-Archive your.zip -DestinationPath your_destination
@rem https://cdn.discordapp.com/attachments/901637950520033291/944721950348046396/plugins.zip 
@rem plugins para que el server se detenga automatiacmente luego de iniciar

:launch
color F
cls
if not exist plugins ( mkdir plugins )
if exist server.properties ( goto launch1) else ( wget https://cdn.discordapp.com/attachments/864214612257800192/944807735587917844/plugins.zip -q --show-progress --progress=bar:force:noscroll && cls && powershell Expand-Archive plugins.zip -DestinationPath %cd%\plugins && %SystemDrive%\servers\jdk-17.0.2\bin\java.exe -Xms5G -Xmx5G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -Dcom.mojang.eula.agree=true -DPaper.IgnoreJavaVersion=True -jar %paper% nogui && rd /S /Q plugins && del /F /Q /S plugins.zip )
:launch1
cscript %SystemDrive%\servers\test.vbs "server.properties" "online-mode=true" "online-mode=false"
cscript %SystemDrive%\servers\test.vbs "server.properties" "difficulty=easy" "difficulty=hard"
cscript %SystemDrive%\servers\test.vbs "server.properties" "allow-flight=false" "allow-flight=true"
cscript %SystemDrive%\servers\test.vbs "server.properties" "spawn-protection=16" "spawn-protection=0"
cls
:restart17
node "C:\Users\Administrador\Documents\programar\JS\index.js"
%SystemDrive%\servers\jdk-17.0.2\bin\java.exe -Xms5G -Xmx5G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -Dcom.mojang.eula.agree=true -DPaper.IgnoreJavaVersion=True -jar %paper% nogui
node "C:\Users\Administrador\Documents\programar\JS 2\index.js"
cls
echo quieres reiniciar el servido?
echo 1) si
echo 2) no
echo 3) borrar mundo y reiniciar
choice /C 123
if %errorlevel% equ 1 goto restart17
if %errorlevel% equ 2 exit
if %errorlevel% equ 3 (
    move "%cd%\world\datapacks" "%cd%"
    rd /q /s %cd%\world
    rd /q /s %cd%\world_nether
    rd /q /s %cd%\world_the_end
    mkdir world
    move "%cd%\datapacks" "%cd%\world\datapacks"  
    cls
    goto restart17
)
:launch8
color F
cls
if not exist plugins ( mkdir plugins )
if exist server.properties ( goto launch1) else ( wget https://cdn.discordapp.com/attachments/864214612257800192/944807735587917844/plugins.zip -q --show-progress --progress=bar:force:noscroll && cls && powershell Expand-Archive plugins.zip -DestinationPath %cd%\plugins && %SystemDrive%\servers\jre1.8.0_202\bin\java.exe -Xms5G -Xmx5G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -Dcom.mojang.eula.agree=true -DPaper.IgnoreJavaVersion=True -jar %paper% nogui && rd /S /Q plugins && del /F /Q /S plugins.zip )
:launch1
cscript %SystemDrive%\servers\test.vbs "server.properties" "online-mode=true" "online-mode=false"
cscript %SystemDrive%\servers\test.vbs "server.properties" "difficulty=easy" "difficulty=hard"
cscript %SystemDrive%\servers\test.vbs "server.properties" "allow-flight=false" "allow-flight=true"
cscript %SystemDrive%\servers\test.vbs "server.properties" "spawn-protection=16" "spawn-protection=0"
cls
:restart8
node "C:\Users\Administrador\Documents\programar\JS\index.js"
%SystemDrive%\servers\jre1.8.0_202\bin\java.exe -Xms5G -Xmx5G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -Dcom.mojang.eula.agree=true -DPaper.IgnoreJavaVersion=True -jar %paper% nogui
node "C:\Users\Administrador\Documents\programar\JS 2\index.js"
cls
echo quieres reiniciar el servido?
echo 1) si
echo 2) no
echo 3) borrar mundo y reiniciar
choice /C 123
if %errorlevel% equ 1 goto restart8
if %errorlevel% equ 2 exit
if %errorlevel% equ 3 (
    move "%cd%\world\datapacks" "%cd%"
    rd /q /s %cd%\world
    rd /q /s %cd%\world_nether
    rd /q /s %cd%\world_the_end
    mkdir world
    move "%cd%\datapacks" "%cd%\world\datapacks"  
    cls
    goto restart8
)