mkdir -p ~/EpicInstaller
cd ~/EpicInstaller
wget https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi
WINEPREFIX=~/EpicGames wineboot --init
WINEPREFIX=~/EpicGames winetricks -q corefonts vcrun2019 dxvk dotnet48
WINEPREFIX=~/EpicGames wine msiexec /i ~/EpicInstaller/EpicGamesLauncherInstaller.msi
wine ~/EpicGames/drive_c/Program\ Files\ \(x86\)/Epic\ Games/Launcher/Portal/Binaries/Win32/EpicGamesLauncher.exe
