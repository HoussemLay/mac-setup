#!/bin/bash

#sudo xcode-select --install
#author : Houssem Layouni
# Install Brew!
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew tap homebrew/cask-fonts

# Install casks for communication / utilities
brew install --cask  google-chrome \
			        slack \
				whatsapp \
				signal \
			        zoom \
			        dashlane \
				visual-studio-code \
			        iterm2 \
			        drawio \
				clipy \
				font-hack-nerd-font \
				session-manager-plugin \
				adobe-acrobat-reader \
				mambaforge \
				postman

# Install packages for dev using Brew
brew install 	zsh \
		        awscli \
		        jq \
		        python \
		        python-yq \
			pinentry-mac \
			gpg2 \
		        gabrie30/utils/ghorg \
			asdf \
			direnv \
			nvim \
			ripgrep \
			bat \
			defaultbrowser \
			tree \
			pandoc \
			cheat

# Make zsh default shell
if [ ! "$SHELL" -e "/bin/zsh" ]; then
	chsh -s $(which zsh)
fi

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install powerlevel10k 
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# install dein (vim package manager)
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.dein

# link pinentry-mac to gpg
mkdir ~/.gnupg/
echo "pinentry-program /usr/local/bin/pinentry-mac" >> $HOME/.gnupg/gpg-agent.conf

# set default browser
defaultbrowser chrome

################################################
# ssh config
################################################

# Create SSH key if not exists
ssh-keygen -t ed25519

