# .bash_aliases

# Create aliases for going up, i.e. `..`=`cd ..`, `...`=`cd ../..`, &c.
for i in {1..9}; do
  # shellcheck disable=SC2139,SC2030,SC2031
  alias "..$(for ((j=1; j < i; j += 1)); do echo -n .; done)=cd ..$(
    for ((j=1; j < i; j += 1)); do
      echo -n '/..'
    done
  )"
done

# alias la="LC_COLLATE=C ls -lhAF --group-directories-first $1"
alias la="LC_COLLATE=C gls -lhAF --color --group-directories-first $1"
alias vpy="python --version"
alias wpy="which python"
alias egrep="egrep --color=auto"
alias grep="grep --color=auto"

pg(){
	ps aux |grep $1
}
