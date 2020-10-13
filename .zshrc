# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mitchellblom/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# New alias land

alias tableplus="open -a """TablePlus""" "

alias ob='code ~/.bashrc'
alias rb='source ~/.bashrc'

alias oz='code ~/.zshrc'
alias rz='source ~/.zshrc'

alias t='touch'
alias nuke='rm -rf '
alias c='clear'

alias a='ls -a'
alias l='ls '
alias sl='ls '
alias s='ls '

alias gs='git status'
alias ga='git add . && git status'
alias gcm='git commit -m '
alias gb='git branch'
alias gch='git checkout'
alias gnuke='git branch -D' 
alias gnew='git checkout -b '

alias htdocs='ls -s /Applications/MAMP/htdocs'

function gpushm () {
    echo "Pushing to remote default branch..."
    if git push origin master >/dev/null 2>&1
    then
        echo "Pushed to master"
    else
        if git push origin main >/dev/null 2>&1
        then
            echo "Pushed to main"
        else
            echo "Could not push to main"
        fi
    fi
}

function gpullm () {
    echo "Pulling from remote default branch..."
    if git pull origin master >/dev/null 2>&1
    then
        echo "Pulled from master"
    else
        if git pull origin main >/dev/null 2>&1
        then
            echo "Pulled from main"
        else
            echo "Could not pull from main"
        fi
    fi
}

zshbackup () {
  cd ~/workspace/mbash
  cp ~/.zshrc .
  git add .
  git commit -m "updated zsh config file"
  git push origin master
}

# alias hs='http-server -p 8080'
alias hs="serve -l 8080"

alias tableplus="open -a """TablePlus""" "

# To enable zsh completions
# This was called "insecure" when loading zsh
# if type brew &>/dev/null; then
#   FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
#   autoload -Uz compinit
#   compinit
# fi

# Configure pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"