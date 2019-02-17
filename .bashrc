export TERM="xterm-256color"

# Bash History Options
export HISTSIZE=1000000
export HISTCONTROL='ignoreboth'
export HISTIGNORE='&:ls:[bf]g:exit'
export HISTTIMEFORMAT='%b %d %H:%M:%S: '
shopt -s histappend
set cmdhist

set -o vi

export EDITOR=vim

#bind "set completion-ignore-case on"

if [ -x /usr/bin/dircolors ]; then
    test -r $HOME/.dircolors && eval "$(dircolors -b $HOME/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

function ovim {
  /usr/local/bin/vim
}
alias vim='edit'
alias vi='edit'
alias v='edit'
alias e='edit'
alias l='ls -alh'
alias la='ls -alh'
alias lt='ls -alrth'
alias h='history |grep'
alias b='cat ~/.bashrc |grep'
