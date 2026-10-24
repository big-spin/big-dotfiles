HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
zstyle :compinstall filename '/home/user/.zshrc'

autoload -Uz compinit
autoload -Uz add-zsh-hook vcs_info
compinit

PATH=$PATH+":/home/user/go/bin/"

export VISUAL=hx
export EDITOR=hx

PS1="[%/]
$ "

bindkey '^[[H' beginning-of-line
bindkey '^[[4~' end-of-line

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt prompt_subst

add-zsh-hook precmd vcs_info
# add ${vcs_info_msg_0} to the prompt
# e.g. here we add the Git information in red  
PROMPT='[%/] %F{blue}${vcs_info_msg_0_}%f
$ '

# check for changes in the code and add a character to the prompt if there are any
# '*' -> unstaged changes
# '+' -> staged changes
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'

# format the string for the vcs prompt for git specifically
# %b -> name of the branch (main, master, etc)
# %u -> unstaged changes (adds the '*' if there are any)
# %c -> staged changes (adds the '+' character if there are any)
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
