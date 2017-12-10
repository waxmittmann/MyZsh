#### My stuff ####
# Go places
alias goh='cd ~'
alias gonote='cd ~/Notes'

alias gows='cd ~/Workspaces'
alias gop='cd ~/Workspaces/Projects'

# Look for java processes
alias psj='ps -A | grep java'

# Do stuff with zsh
alias srcsh='source ~/.zshrc'
alias opensh='atom ~/.oh-my-zsh/custom/customs.zsh'
alias catsh='cat ~/.oh-my-zsh/custom/customs.zsh'
alias gosh='cd ~/.oh-my-zsh/custom/'

# Become postgres
alias pgu='sudo su postgres'

# view cheatsheet
alias cheat='atom /home/max/Workspaces/Misc/zshCheatsheet.md'
alias catcheat='cat /home/max/Workspaces/Misc/zshCheatsheet.md'

# Sbt stuff
alias sbtt='sbt -mem 3000'
alias sbtr='sbt -mem 3000 "run local.conf"'

# Npm / Frontend stuff
alias npmi='npm install'
alias npms='npm start'
alias bower='bower install'

function gcheatfn () { catcheat | grep $1 }
alias gcheat=gcheatfn

# Temporary links, review occasionally
alias secrets='eval $(~/Workspaces/Secrets/secret_env.sh)'

# This does not work as is (https://stackoverflow.com/questions/5343265/setting-title-for-tabs-in-terminator-console-application-in-ubuntu)
tnamef() {
  ORIG=$PS1
  TITLE="\e]2;\"This is just crazy enough to work\"\a"
  PS1=${ORIG}${TITLE}
}
alias tname=tnamef
