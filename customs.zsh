#### My stuff ####
# Go places
alias goh='cd ~'
alias gonote='cd ~/Workspaces/Notes'

alias gows='cd ~/Workspaces'
alias gop='cd ~/Workspaces/Projects'

# Look for java processes
alias psj='ps -A | grep java'

# Do stuff with zsh
alias srcsh='source ~/.zshrc'
alias opensh='atom ~/.oh-my-zsh/custom/customs.zsh'
alias catsh='cat ~/.oh-my-zsh/custom/customs.zsh'
alias gosh='cd ~/.oh-my-zsh/custom/'
alias savesh=''

# Github
alias gitinfo='curl https://api.github.com -u $GITHUB_USER:$GITHUB_PASS'
alias gitrli='curl https://api.github.com/user/repos -u $GITHUB_USER:$GITHUB_PASS'

# Sbt
# TODO: Doesn't work
alias sbtopts='eval export SBT_OPTS="-Xmx2G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=2G -Xss2M  -Duser.timezone=GMT"'

# TODO implement: https://developer.github.com/v3/repos/
# function git_rc_r() {
#   curl https://api.github.com/user/repos -u $GITHUB_USER:$GITHUB_PASS -X POST -d \'
#   {
#     "name": "Hello-World",
#     "description": "This is your first repository",
#     "homepage": "https://github.com",
#     "private": false,
#     "has_issues": true,
#     "has_projects": true,
#     "has_wiki": true
#   }\'
# }

# alias gitrcr='curl https://api.github.com/user/repos -u $GITHUB_USER:$GITHUB_PASS -X POST -d \'
# {
#   "name": "Hello-World",
#   "description": "This is your first repository",
#   "homepage": "https://github.com",
#   "private": false,
#   "has_issues": true,
#   "has_projects": true,
#   "has_wiki": true
# }\''

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

# XClip (command output to clipboard)
alias clip="xclip -selection c"

# Docker
alias n4jdocker="docker run -p 7474:7474 -p 7687:7687 --rm neo4j"

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

#export PATH="/home/damxam/Workspaces/Libraries/anaconda3/bin:$PATH"
export PATH="/home/damxam/Workspaces/Libraries/bin:/home/damxam/Workspaces/Libraries/anaconda3/bin:$PATH"
export AIRFLOW_HOME=~/Workspaces/Libraries/airflow
export JAVA_HOME="/usr/lib/jvm/java-8-oracle/"
