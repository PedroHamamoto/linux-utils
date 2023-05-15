# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export ZPLUG_HOME=~/.zplug

. $ZPLUG_HOME/init.zsh

zplug "zplug/zplug", hook-build:"zplug --self-manage"

# Enhanced cd
zplug "b4b4r07/enhancd", use:init.sh

zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug "djui/alias-tips"

zplug "plugins/asdf", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/zsh_reload", from:oh-my-zsh
zplug "plugins/screen", from:oh-my-zsh
zplug "plugins/kubectl", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/kube-ps1", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "johanhaleby/kubetail"

if ! zplug check; then
	zplug install
fi

zplug load

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

alias glsm='git pull --recurse-submodules origin master'
alias kon='kubeon'
alias koff='kubeoff'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

PROMPT='$(kube_ps1) '$PROMPT
