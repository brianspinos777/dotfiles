# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export TERM=screen-256color
export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/sbin:/usr/local/bin:/home/$HOME/bin
PATH=$HOME/.bin:/usr/local/bin:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

export EDITOR='vim'
export LC_CTYPE=en_US.UTF-8

alias p='less -r'
alias ls='ls -FG'

msk(){
    brew search "$@" | less
}

gdb(){ command gdb -q $@ }
take(){ mkdir $@; cd $@ }
tmux(){ command tmux -u -2 $@ }
wtfh(){ dig +short txt $@.wp.dg.cx }

#source /usr/local/rvm/scripts/rvm # Load RVM into a shell session *as a function*

#PATH=$PATH:/usr/local/rvm/bin # Add RVM to PATH for scripting
