#!/bin/bash

# Install brew
echo "Welcome back, beginning to download brew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Installing from Brewfile"
brew bundle

# Will begin in home directory
if [ ! -d "~/.config/" ] 
then
    # Install Dotfiles
    echo "Installing Dotfiles directory"
    cd ~ && git clone https://github.com/ZacharySantamaria/.dotfiles.git
    # Linking the files to have all configurations in one place for easier maintance
    cd .dotfiles/ && stow -vt ~ *
else
    echo ".config already exists"
fi






