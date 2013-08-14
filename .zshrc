# ZSH Modules
autoload -U compinit promptinit colors
colors
compinit
promptinit
# Done

# Dircolors
if [[ -a "$HOME/.dircolors" ]]; then
	eval "$(dircolors -b ~/.dircolors)"
fi

# Options
setopt MULTIOS
setopt CORRECT
#setopt GLOB_COMPLETE
setopt NO_BEEP
#setopt NO_CASE_GLOB
#setopt EXTENDED_GLOB
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE

export EDITOR="vim"
export BROWSER="firefox"
export PATH="${PATH}:/home/rohan/bin"
export LD_LIBRARY_PATH="/usr/local/lib"
export TERM="xterm-256color"
# Done

# Aliases
alias ls='ls --group-directories-first --color=auto -X'
alias la='ls --group-directories-first --color=auto -Xa'
alias ll='ls --group-directories-first --color=auto -Xlah'
alias dir='dir --color=auto'
alias grep='grep -P --color=auto'
alias pacman='sudo pacmatic'
alias svi='sudo vim'
alias vi='vim'
alias su='su -'
alias pdf='zathura'
alias img='mirage'
alias systemctl='sudo systemctl'
alias netcfg='sudo netcfg'
alias reset='reset -Q'
#Done

# Prompt
if [[ "$USER" == "root" ]]; then
        PROMPT="%{$fg[green]%} >  %{$reset_color%}"
        RPROMPT="%{$fg[green]%}%~%{$reset_color%}"
else
        PROMPT="%{$fg[blue]%} >  %{$reset_color%}"
        RPROMPT="%{$fg[blue]%}%~%{$reset_color%}"
fi

# Done

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# Done

# Other 
bindkey -v

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*' list-colors 'reply=( "=(#b)(*$VAR)(?)*=00=$color[green]=$color[bg-green]" )'
#zstyle ':completion:*:*:*:*:hosts' list-colors '=*=30;41'
#zstyle ':completion:*:*:*:*:users' list-colors '=*=$color[green]=$color[red]'
zstyle ':completion:*' menu select

export PERL_LOCAL_LIB_ROOT="$PERL_LOCAL_LIB_ROOT:/home/rohan/perl5";
export PERL_MB_OPT="--install_base /home/rohan/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/rohan/perl5";
export PERL5LIB="/home/rohan/perl5/lib/perl5:$PERL5LIB";
export PATH="/home/rohan/perl5/bin:$PATH";