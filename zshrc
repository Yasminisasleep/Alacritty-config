# ————— HISTORY —————
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt histignorealldups sharehistory

# ————— KEYBINDINGS —————
bindkey -e  # Use emacs keybindings

# ————— MODERNE COMPLETION —————
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# ————— COULEURS POUR LS —————
eval "$(dircolors -b)"

# ————— ALIAS UTILES —————
#`alias ls="lsd"
alias ll="lsd -l"
alias la="lsd -la"

# ————— STARSHIP PROMPT —————
eval "$(starship init zsh)"

