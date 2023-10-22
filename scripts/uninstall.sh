echo "Uninstall Super Tux Kart? (y/n): "
read reply

if [[ "$reply" == "y" ]]; then
    echo "Configuring shorcuts..."
    sudo rm -f /usr/share/applications/SuperTuxKart.desktop
    echo "Deleting The Game..."
    sudo rm -rf /usr/local/games/SuperTuxKart
    echo "Done!"
else
  exit 1
fi
