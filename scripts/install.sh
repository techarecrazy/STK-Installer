echo "Install Super Tux Kart? (y/n): "
read reply

if [[ "$reply" == "y" ]]; then
    echo "Installing curl..."
    sudo apt install curl -y
    echo "Done. Downloading Super Tux Kart..."
    rm /tmp/stk.tar.xz
    curl -L https://github.com/supertuxkart/stk-code/releases/download/1.4/SuperTuxKart-1.4-linux-x86_64.tar.xz -o /tmp/stk.tar.xz
    echo "Done. Configuring shorcuts..."
    sudo rm -rf /usr/share/applications/SuperTuxKart.desktop
    sudo curl -L https://raw.githubusercontent.com/techarecrazy/STK-Installer/main/SuperTuxKart.desktop -o /usr/share/applications/SuperTuxKart.desktop
    echo "Done. Extracting The Game..."
    sudo rm -rf /usr/games/SuperTuxKart
    sudo tar -xf /tmp/stk.tar.xz -C /usr/games
    sudo mv /usr/games/SuperTuxKart-1.4-linux-x86_64 /usr/games/SuperTuxKart
    echo "Done!"
else
  exit 1
fi
