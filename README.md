# dotfiles
configuration  for 
ssh + tmux + vim + terminal (xterm)

contains vimrc tmux.conf configurations
also contains basrc and bash_profile - settings example to connect to a remote system 

-- vim color schemes contains settings for solarized, base16, molokai 
-- to solve color issues 


Note: If all your terminals support 256 colors - then no need to add 
screen-256color or screen-256color-bce or term-256color etc 
to any of bashrc or bash_profile or vimrc or tmux.conf

Still you may notice when opening vim in terminal - vim may not use 
all 256 colors - to allow vim to use all 256 colors of the terminal
just use - t_Co=256 and it should work out of the box


