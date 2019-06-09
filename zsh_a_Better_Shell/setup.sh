#!/bin/bash


#save and run this as script to install zsh the easy way (chmod +x setup.sh)i
# Otherwise just follow the steps manually
#
#Ubuntu

read -p "Do you want to install zsh and oh-my-zsh? y or n" resp
if [$resp = y]
  sudo apt-get -y install zsh
  sleep 3
  zsh --version #confirm install
  sleep 2
  sudo chsh -s $(which zsh) # setshell to be zsh close and open new terminal to use it
 
  # post install 
  echo $SHELL
  sleep 2
  read -p "do you want to install oh-my-zsh now y,n " answer
  if [$answer = y] then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  fi
  echo 'Setup finished!'
  echo 'For additional information be sure to visit: https://github.com/robbyrussell/oh-my-zsh'
fi


# If 'sudo chsh -s $(which zsh)' command fails then use this procedure
#echo -e "exec zsh\n$(cat ~/.basrc)" > ~/.bashrc
 
# If ^ fails then manually add this to the beginning of the 
#vim ./bashrc
# this inside 
   
  

