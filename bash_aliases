platform='unknown'
unamestr=$(uname)
if [[ "$unamestr" == 'Linux' ]]; then
  platform='linux'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
  platform='freebsd'
elif [[ "${unamestr}" == 'Darwin' ]]; then
  platform='darwin'
fi

alias g='git'
alias gd='git diff --stat --color'
alias ga="git add \$1"
alias gaa="git add ."
alias gb="git br \$1"
alias gs="git show \$1 --color"
alias gstat="git status"
alias gco="git co \$1"
alias gcom="git com"
alias gcm="git cm \$1"
alias gcam="git cam \$1"
alias gu="git pull"
alias gp="git push"
alias gusvn="git svn rebase"
alias gpsvn="git svn dcommit"
alias salias="cat ~/.bash_aliases"
alias sgconf="cat ~/.gitconfig"

if [[ ${platform} == 'darwin' ]]; then
  alias wget="curl -O"
fi
