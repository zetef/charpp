#!/bin/zsh

# zsh profile file, runs on login, env vars in here

# access to local bin files
export PATH="$PATH:$(du $HOME/.local/bin | cut -f2 | paste -sd ':')"

# default programs
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="brave"
export READER="zathura"

# using the XDG base directory spec
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export LESSHISTFILE="-"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
#export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export ICEAUTHORITY="$XDG_CACHE_HOME/ICEauthority"
export STACK_ROOT="$XDG_DATA_HOME/stack" # haskell stack
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
export GOPATH="$HOME/.local/go"

# other env vars
export PATH="$PATH:$(du $GOPATH/bin | cut -f2 | paste -sd ':')" # bcs go that's why

# change .zshrc location
[ -f "$ZDOTDIR/.zshrc" ] && source "$ZDOTDIR/.zshrc"
