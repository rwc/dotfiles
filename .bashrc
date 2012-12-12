#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# adjust settings according to current terminal window width
# which may have changed while the last command was running
# (which is a common occurance for vim/less/etc.)
# Note this is already set in /etc/bashrc on Fedora 8 at least.
shopt -s checkwinsize

# Don't store duplicate records in history
HISTCONTROL=ignoreboth

# Some useful stuff to define
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export COLOR_NC='\[\e[0m\]' # No Color
export COLOR_WHITE='\[\e[1;37m\]'
export COLOR_BLACK='\[\e[0;30m\]'
export COLOR_BLUE='\[\e[0;34m\]'
export COLOR_LIGHT_BLUE='\[\e[1;34m\]'
export COLOR_GREEN='\[\e[0;32m\]'
export COLOR_LIGHT_GREEN='\[\e[1;32m\]'
export COLOR_CYAN='\[\e[0;36m\]'
export COLOR_LIGHT_CYAN='\[\e[1;36m\]'
export COLOR_RED='\[\e[0;31m\]'
export COLOR_LIGHT_RED='\[\e[1;31m\]'
export COLOR_PURPLE='\[\e[0;35m\]'
export COLOR_LIGHT_PURPLE='\[\e[1;35m\]'
export COLOR_BROWN='\[\e[0;33m\]'
export COLOR_YELLOW='\[\e[1;33m\]'
export COLOR_GRAY='\[\e[0;30m\]'
export COLOR_LIGHT_GRAY='\[\e[0;37m\]'
export TITLEBAR=""

case $TERM in
     xterm*|rxvt*)
         TITLEBAR='\[\033]0;\u ${NEW_PWD}\007\]'
          ;;
     *)
         TITLEBAR=""
          ;;
    esac

export UC=$COLOR_WHITE              # User's color
[ $UID -eq "0" ] && UC=$COLOR_RED   # Root's color

PS1="${TITLEBAR}\n${UC}\u@\h ${COLOR_YELLOW}\${PWD} ${COLOR_BLACK} \n${COLOR_LIGHT_CYAN}.${COLOR_NC} "

# If you're having issues with the above PS1 then use the default or something else ...
#PS1='[\u@\h \W]\$ '

# alias'
#alias ls='ls --color=auto'
alias ..="cd .."        #go to parent dir
alias ...="cd ../.."    #go to grandparent dir
alias ls='ls -lF --color=auto'
alias lsa='ls -laF --color=auto'
alias lsh='ls -aF --color=auto'
alias rtch="screen -rxU"
