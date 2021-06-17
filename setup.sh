cd ~/Downloads

git config --global user.email "nxhuy@zonemail.clpccd.edu"
git config --global user.name "Nguyễn Đức Huy"

git clone https://aur.archlinux.org/github-desktop-bin.git
git clone https://aur.archlinux.org/postman-bin.git
git clone https://aur.archlinux.org/mongodb-compass.git
git clone https://aur.archlinux.org/slack-desktop.git
git clone https://aur.archlinux.org/discord-ptb.git
git clone https://aur.archlinux.org/visual-studio-code-bin.git
git clone https://aur.archlinux.org/ibus-bamboo.git
git clone https://aur.archlinux.org/teamviewer.git
git clone https://aur.archlinux.org/zoom.git
git clone https://aur.archlinux.org/docker-bin.git
git clone https://aur.archlinux.org/docker-compose-bin.git
git clone https://aur.archlinux.org/spotify.git
git clone https://aur.archlinux.org/nordvpn-bin.git

curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | gpg --import -

for i in `ls`
do
    cd $i
    makepkg -sif
    cd ..
done

rm -rf *

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hasklig.zip

sudo pacman -S vim nano gnome-keyring nodejs npm python-pip jdk-openjdk openjdk-doc openjdk-src texlive-most texlive-lang

#nordvpn
systemctl enable --now nordvpnd

#texlive-format
sudo cpan Log::Log4perl
sudo cpan Log::Dispatch
sudo cpan YAML::Tiny
sudo cpan File::HomeDir
sudo cpan Unicode::GCString

