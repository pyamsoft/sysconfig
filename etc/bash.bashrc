#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

prompt_ps1()
{
  printf -- '%s@%s %s %s ' '\u' '\h' "${PWD}" '\$'
}

prompt_command()
{
  PS1=$(prompt_ps1)
  export PS1
}

PROMPT_COMMAND=prompt_command
export PROMPT_COMMAND

# Colorized
alias ls="ls -CHh --color=auto "
alias dir="dir -CHAlh --color=auto "
alias grep="grep -E --color=auto "

# Quick ls
alias ll="ls -CHhl --color=auto "
alias la="ls -CHhA --color=auto "
alias lla="ls -CHhAl --color=auto "
alias lal="ls -CHhAl --color=auto "

# Verbose
alias rm="rm -iv "
alias cp="cp -iv "
alias mv="mv -iv "
alias mkdir="mkdir -vp "
