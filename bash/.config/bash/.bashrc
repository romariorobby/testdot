#
# ~/.config/bash/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1="\[\e[31m\][\[\e[m\]\[\e[94m\]\u\[\e[m\]@\[\e[96m\]\h\[\e[m\]:\[\e[35m\]\w\[\e[m\]\[\e[31m\]]\[\e[m\] (\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) \$ "
set -o vi

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc"
# FZF
[ -f /usr/share/fzf/completion.bash ] && source /usr/share/fzf/completion.bash 
[ -f /usr/share/fzf/key-bindings.bash ] && source /usr/share/fzf/key-bindings.bash 
