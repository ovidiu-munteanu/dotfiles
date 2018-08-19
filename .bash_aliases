# .bash_aliases

alias ..="cd .."
alias la="LC_COLLATE=C ls -lhAF --group-directories-first $1"
alias e=exit
alias vpy="python --version"
alias wpy="which python"
alias egrep="egrep --color=auto"
alias grep="grep --color=auto"
alias tt="./scripts/test"

pg(){
	ps aux |grep $1
}
