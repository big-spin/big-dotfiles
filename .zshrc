HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
zstyle :compinstall filename '/home/user/.zshrc'

autoload -Uz compinit
compinit

PS1="[%/]
$ "

bindkey '^[[H' beginning-of-line
bindkey '^[[4~' end-of-line

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
