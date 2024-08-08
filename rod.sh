#!/bin/bash

# Get the group number dynamically and export it
export RENDER_GROUP_ID=$(getent group render | cut -d: -f3)

# Check and create directories if they do not exist
for dir in src build install log; do
  mkdir -p ./$dir
  sudo chown $USER:$USER ./$dir
done

# Define ncurses colors and menu options
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=5
BACKTITLE="ROS 2 On Docker"
TITLE="Docker  Menu"
MENU="Choose one of the following options:"

OPTIONS=(1 "Build ROD"
         2 "Run ROD"
         3 "Execute Interactive Shell in ROD"
         4 "Stop ROD")

# Display the menu using ncurses
CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear

# Execute the choice
case $CHOICE in
        1)
            echo "Building ROD..."
            docker compose -f docker-compose_dev.yml build
            ;;
        2)
            echo "Running ROD..."
            docker compose -f docker-compose_dev.yml up -d
            ;;
        3)
            echo "Accessing ROD..."
            docker exec -it rod /bin/bash
            ;;
        4)
            echo "Stopping ROD..."
            docker compose -f docker-compose_dev.yml down
            ;;
esac
