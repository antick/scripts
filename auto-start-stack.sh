#!/bin/bash


title1="npm start"
title2="docker"
title3="npm run dev"

title4="Frontend"
title5="Docker"
title6="Backend"

cmd1="cd /your/project/path/frontend-project; npm start"
cmd2="cd /your/project/path/docker-project; echo 'password' | sudo -S docker-compose up"
cmd3="cd /your/project/path/docker-project/services; npm run start"

cmd4="cd /your/project/path/docker-project/frontend-project && git status"
cmd5="cd /your/project/path/docker-project/docker-project && git status"
cmd6="cd /your/project/path/docker-project/services && git status"


gnome-terminal --window --title="$title1" --command="zsh -c '$cmd1; exec zsh'" \
               --tab --title="$title2" --command="zsh -c '$cmd2; exec zsh'" \
               --tab --title="$title3" --command="zsh -c '$cmd3; exec zsh'" \
               --tab --title="$title4" --command="zsh -c '$cmd4; exec zsh'" \
               --tab --title="$title5" --command="zsh -c '$cmd5; exec zsh'" \
               --tab --title="$title6" --command="zsh -c '$cmd6; exec zsh'"
