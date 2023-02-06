# ~/.bashrc
test -d ~/bash_history/ || mkdir ~/bash_history/

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return

alias ls='exa'
# PS1='[\u@\h \W]\$'
PS1='\e[1;29m\w$ \e[m'

export EDITOR=nvim
set -o vi

alias ac='nvim ~/private/accounts'

#systemd
alias suspend='sudo systemctl suspend'
alias shutdown='sudo shutdown now'
alias reboot='sudo reboot now'

#shortcuts
alias vi='nvim'
alias sv='sudo nvim'
alias c='sudo make install'
alias vimconfig="nvim ~/.config/nvim/init.vim"

alias ll='exa -alh --group-directories-first --color=always'
alias grep='GREP_COLORS="mt=1;33;40" LANG=C grep --exclude-dir=node_modules --color=auto'

#cd
alias cdst='cd ~/.local/src/st/'
alias cdslstatus='cd ~/.local/src/slstatus/'
alias cddwm='cd ~/.local/src/dwm/'
alias cddwm='cd ~/.local/src/dwm/'
alias cdfroggame='cd ~/Documents/cs50/week0/scratch/frogGame'

#vim shortcuts
alias brc='nvim ~/.bashrc'
alias stc='nvim ~/.local/src/st/config.h'
alias dwmc='nvim ~/.local/src/dwm/config.h'
alias slstatusc='nvim ~/.local/src/slstatus/config.h'
alias dmenuc='nvim ~/.local/src/dmenu/config.h'
alias ec='nvim config.h'

#pacman shortcuts
alias s='pacman -Ss' 	           	#search for packages online
alias yays='yay -Ss' 	       	    #search for aur packages online
alias pmk='pacman -Qs'	           	#search installed packages for keywords

alias pmi='sudo pacman -S'      	#install packages
alias pmr='sudo pacman -Rns'    	#uninstall uneeded packages (safe)
alias pmru='sudo pacman -Rsc'   	#uninstall needed packages (unsafe)

alias pml='pacman -Qe'	           	#list installed packages
alias pmlf='pacman -Ql'	           	#list packages files
alias pminf='pacman -Qii'	   	#list packages information
alias pmun='pacman -Qdt'	  	#list uneeded packages

alias pmu='sudo pacman -Syu'    	#updates entire system and packages

#set keyboard layout
alias es='setxkbmap es'
alias en='setxkbmap us'

#inc/dec display brightness
alias bp='xbacklight'

#volume
alias vp='pamixer --get-volume'

shopt -s histappend
HISTCONTROL=ignoredups
PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/\~}\007"'
PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"
export HISTFILESIZE=-1 HISTSIZE=-1
HISTFILE=~/bash_history/$(date +%Y-%m)

h() {
	rg -a $@ ~/bash_history/*
}

#yyyymmdd
alias yyyymmdd='$(go env GOPATH)/bin/yyyymmdd ~/Downloads'
