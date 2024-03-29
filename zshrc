fpath+=("$(brew --prefix)/share/zsh/site-functions")

autoload -U promptinit; promptinit
prompt pure

# THIS IS MY OLD CONFIGURATION
# 
# # Syntax highlighting for man pages
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# export HOMEBREW_CASK_OPTS="--no-quarantine"
#
# eval "$(rbenv init - zsh)"
#
# parse_git_dirty() {
#   git_status="$(git status 2> /dev/null)"
#   [[ "$git_status" =~ "Your branch is ahead" ]] && echo -n "%F{orange}⇑%f"
#   [[ "$git_status" =~ "Your branch is behind" ]] && echo -n "%F{orange}⇓%f"
#   [[ "$git_status" =~ "Changes to be committed:" ]] && echo -n "%F{green}%f"
#   [[ "$git_status" =~ "Changes not staged for commit:" ]] && echo -n "%F{yellow}%f"
#   [[ "$git_status" =~ "Untracked files:" ]] && echo -n "%F{red}·%f"
# }
#
# setopt prompt_subst
#
# NEWLINE=$'\n'
#
# autoload -Uz vcs_info  # enable vcs_info
# precmd () { vcs_info } # always load before displaying the prompt
# zstyle ':vcs_info:git*' formats ' ↣ (%F{254}%b%F{245})' # format $vcs_info_msg_0_
#
# PS1='%F{254}%n%F{245} ↣ %F{153}%(5~|%-1~/⋯/%3~|%4~)%F{245}${vcs_info_msg_0_} $(parse_git_dirty)$NEWLINE%F{254}$%f '

# alias l="exa -l -a --icons"
alias l="ls -a"
alias nvim="~/nvim-macos/bin/nvim"
alias nvimrc="cd ~/.config/nvim/ && nvim"
alias dotfiles="cd ~/.dotfiles/ && nvim"
alias update_latex_files="cd ~/Library/texmf/tex/ && git pull && cd -"

# github alias
alias ga="git add ."

# # ...now this works just fine
# eval "$(starship init zsh)"

[[ "$TERM_PROGRAM" == "CodeEditApp_Terminal" ]] && . "/Applications/CodeEdit.app/Contents/Resources/codeedit_shell_integration.zsh"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
