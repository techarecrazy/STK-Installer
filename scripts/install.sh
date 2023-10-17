echo "Install Super Tux Kart? (y/n): "
read reply

if [[ "$reply" == "y" ]]; then
    echo "Installing curl..."
    sudo apt install curl -y
    echo "Done. Downloading Super Tux Kart..."
    rm /tmp/stk.tar.xz
    curl -L https://github.com/supertuxkart/stk-code/releases/download/1.4/SuperTuxKart-1.4-linux-x86_64.tar.xz -o /tmp/stk.tar.xz
    echo "Done. Configuring shorcuts..."
    curl -L https://raw.githubusercontent.com/techarecrazy/STK-Installer/main/SuperTuxKart.desktop -o $HOME/.local/share/applications/SuperTuxKart.desktop
    echo "Done. Extracting The Game..."
    sudo rm -rf /usr/local/games/SuperTuxKart
    sudo tar -xf /tmp/stk.tar.xz -C /usr/local/games
    sudo mv /usr/local/games/SuperTuxKart-1.4-linux-x86_64 /usr/local/games/SuperTuxKart
    echo "Done!"
else
  exit 1
fi
