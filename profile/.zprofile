#!/bin/zsh
# zsh profile file. Runs on login. Environmental variables are set here.
# 
# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"
export PATH="$HOME/.local/bin${PATH:+:${PATH}}"



export PATH=$PATH:~/.config/emacs/bin

# Default programs:
export EDITOR="nvim"
export VISUAL="nvim"
export CODEEDITOR="nvim"
export BROWSER="brave"
export READER="zathura"
export QT_QPA_PLATFORMTHEME="qt5ct"
# ~/ Clean-up: 
export XDG_CONFIG_HOME="$HOME/.config"
export VSCODE_PORTABLE="$XDG_CONFIG_HOME/VSCodium"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_BARE_HOME="$HOME/repos/mario/bare"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export BASHRCDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/bash"

# ANDROID
#
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="${XDG_CONFIG_HOME}/java"
export ANDROID_SDK_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/android"
export ANDROID_AVD_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/android"
export ANDROID_EMULATOR_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/android"
export ANDROID_VENDOR_KEY="${XDG_CONFIG_HOME:-$HOME/.config}/android"

# XMONAD
export XMONAD_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/xmonad"
export XMONAD_DATA_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/xmonad"
export XMONAD_CACHE_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/xmonad"
#OTher
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
# This is the list for lf icons:
export LF_ICONS="di=📁:\
fi=📃:\
tw=🤝:\
ow=📂:\
ln=⛓:\
or=❌:\
ex=🎯:\
*.txt=✍:\
*.mom=✍:\
*.me=✍:\
*.ms=✍:\
*.png=🖼:\
*.webp=🖼:\
*.ico=🖼:\
*.jpg=📸:\
*.jpe=📸:\
*.jpeg=📸:\
*.gif=🖼:\
*.svg=🗺:\
*.tif=🖼:\
*.tiff=🖼:\
*.xcf=🖌:\
*.html=🌎:\
*.xml=📰:\
*.gpg=🔒:\
*.css=🎨:\
*.pdf=📚:\
*.djvu=📚:\
*.epub=📚:\
*.csv=📓:\
*.xlsx=📓:\
*.tex=📜:\
*.md=📘:\
*.r=📊:\
*.R=📊:\
*.rmd=📊:\
*.Rmd=📊:\
*.m=📊:\
*.mp3=🎵:\
*.opus=🎵:\
*.ogg=🎵:\
*.m4a=🎵:\
*.flac=🎼:\
*.mkv=🎥:\
*.mp4=🎥:\
*.webm=🎥:\
*.mpeg=🎥:\
*.avi=🎥:\
*.zip=📦:\
*.rar=📦:\
*.7z=📦:\
*.tar.gz=📦:\
*.z64=🎮:\
*.v64=🎮:\
*.n64=🎮:\
*.gba=🎮:\
*.nes=🎮:\
*.gdi=🎮:\
*.1=ℹ:\
*.nfo=ℹ:\
*.info=ℹ:\
*.log=📙:\
*.iso=📀:\
*.img=📀:\
*.bib=🎓:\
*.ged=👪:\
*.part=💔:\
*.torrent=🔽:\
*.jar=♨:\
*.java=♨:\
"
