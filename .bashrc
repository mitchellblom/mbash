# Include environment-specific odds-n-ends
if [ -f ~/.bashrc_local ]; then
  . ~/.bashrc_local
fi

. ~/workspace/reference/cool_prompt

alias ob='code ~/.bashrc'
alias rb='source ~/.bashrc'

alias t='touch'
alias nuke='rm -rf '
alias c='clear'

alias d='cd .. && ls'
alias u='cd '
alias a='ls -a'
alias l='ls '
alias sl='ls '
alias s='ls '

alias gs='git status'
alias ga='git add . && git status'
alias gc='git commit -m '
alias push='git push origin'
alias pushere='git push origin HEAD'
alias pull='git pull origin '
alias gb='git branch'
alias gch='git checkout'
alias gdb='git branch -D'
alias nb='git checkout -b '

alias dnr='dotnet run'
alias dnt='dotnet test'

alias nvs='open -n -a "Visual Studio"'

e () {
  cd $1
  ls
}

# gc () {
#     git commit -m "{$1}"
#     git status
# }

mcd () {
    mkdir -p $1
    cd $1
}

post () {
  curl -s -X POST -D - --header "Content-Type: application/json" --data $1 http://localhost:5000/$2
}

# Example of a post:
# post '{"name": "Song Yun"}' api/child

delete () {  
  curl -s -X DELETE -D - http://localhost:5000/$1 | json -i
}

put () {
  curl -X PUT --header "Content-Type: application/json" --data $1 http://localhost:5000/$2
}

get () {
  if [ -z "$2" ]
    then
      curl -s -X GET -D - http://localhost:5000/$1 | json -i
    else
      curl -s -X GET -D - http://localhost:5000/$1 | json -ic $2
  fi
}

bzc () {
  cd ~/.bash
  cp ~/.bashrc .
  git add .
  git commit -m "updated config file"
  git push origin master
}

# Examples:
# http://stevebrownlee.com/beautiful-api-json-results-in-bash/

alias weather="curl wttr.in/Moon && curl wttr.in/37208"

# Python env variables

# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# Env variables

# export BAGOLOOT_DB="/Users/mitchellblom/workspace/reference/bagoloot/bagoloot_db.db"
# export BANGAZON_DB="/Users/mitchellblom/workspace/c19/bangazon/BangazonAPI/bang.db"
# export BANGAZON_CLI_DB="/Users/mitchellblom/workspace/c19/bangazon/BangazonCLI/bang.db"
# export BANGAZON_TEST_DB="/Users/mitchellblom/workspace/c19/bangazon/BangazonCLI/bang_test.db"
# export YFINDER_DB="/Users/loaner1/Projects/YFinderAPI/YfinderAPIdotnet2/YFinder2.db"
# export FUELYTICS_DB="/Users/loaner1/workspace/EFC/Fuelytics.db"

export PATH="$HOME/.fastlane/bin:$PATH"