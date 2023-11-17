# Start an update
apt update
apt upgrade

apt install flatpak
apt install plasma-discover-backend-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install flatpak apps
# flatpak install flathub com.discordapp.Discord
flatpak install flathub com.spotify.Client
flatpak install flathub org.DolphinEmu.dolphin-emu
flatpak install flathub org.videolan.VLC
flatpak install flathub net.rpcs3.RPCS3
flatpak install flathub org.libretro.RetroArch
flatpak install flathub com.visualstudio.code
flatpak install flathub net.kuribo64.melonDS
# flatpak install flathub com.valvesoftware.Steam
flatpak install flathub org.kde.krita
flatpak install flathub com.obsproject.Studio
flatpak install flathub net.brinkervii.grapejuice
flatpak install flathub org.gnome.Boxes
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub net.davidotek.pupgui2
flatpak install flathub com.usebottles.bottles
flatpak install flathub org.ryujinx.Ryujinx
flatpak install flathub com.github.unrud.VideoDownloader

# Install wine
sudo dpkg --add-architecture i386 
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
sudo apt update
sudo apt install --install-recommends winehq-devel

# Install Steam
wget https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb
sudo dpkg -i steam.deb
rm steam.deb

# Install Discord
wget https://dl.discordapp.net/apps/linux/0.0.35/discord-0.0.35.deb
sudo dpkg -i discord-0.0.35.deb
rm discord-0.0.35.deb

# Install Minecraft
wget https://launcher.mojang.com/download/Minecraft.deb
sudo dpkg -i Minecraft.deb
rm Minecraft.deb

echo "Script by: HttpAnimations"