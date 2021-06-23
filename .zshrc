# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/chris/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
ZSH_THEME=""

export PATH=~/.bin:$PATH
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor line root)
source /home/chris/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# *** 
# Plugins
# ***
# plugins=(ssh-agent)

# *** 
# Custom Imports
# ***
# Environment
source .config/environment.d/envvars.conf 
source .config/environment.d/alias.conf

autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

# eval `ssh-agent -s`
eval "$(starship init zsh)"

