export ZSH="$HOME/.oh-my-zsh"

plugins=(
  git 
  zsh-syntax-highlighting 
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias v="nvim"
alias vi="nvim"
alias vim="nvim"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ssh-agent for repos that need ssh keys
eval `ssh-agent` > /dev/null 2>&1 &

# ssh-keys so it's less annoying to work on this laptop
# ssh-add ~/.ssh/<key-name> > /dev/null 2>&1 &

export GO111MODULE=on
export GOBIN="$(go env GOPATH)/bin"
export PATH="$(go env GOPATH)/bin:$PATH"

# pyenv configs that ensure the correct python version is loaded
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

eval "$(oh-my-posh init --config $HOME/oh-my-posh/faun3.omp.toml zsh)"
