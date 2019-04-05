# Customization for bash
alias ls='ls --color=auto'
#PS1="\[\033[33m\]\h:\[\033[31m\]\w\[\033[0m\]\[\033[1m\]$ \[\033[0m\]"
#PS2="\[\033[1m\]: \[\033[0m\]"
#export PS1 PS2

DIR=".git"

function checkGit()
if [ -d "$DIR" ]
then
        git status > output
        grep "^Changes to be committed" output > result
        if [ -s result ]
        then
		PS1="\[\033[33m\]\h:\[\033[31m\]\w\[\033[0m\]\[\033[1m\]*$ \[\033[0m\]"
	else
		PS1="\[\033[33m\]\h:\[\033[31m\]\w\[\033[0m\]\[\033[1m\]$ \[\033[0m\]"
        fi
        rm output result
else
	PS1="\[\033[33m\]\h:\[\033[31m\]\w\[\033[0m\]\[\033[1m\]$ \[\033[0m\]"
fi

export PROMPT_COMMAND=checkGit

# git visualizer graph
alias gl="git log --graph --full-history --all --color \
    --pretty=format:\"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s\""
