export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

export PATH="/Users/davens/libraries/Qt5.3.2/5.3/clang_64/bin:$PATH"
#export PATH="/Users/davens/libraries/Qt5.5.1/5.5/clang_64/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function gvim { /usr/local/bin/mvim -g $*; }

#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]mixlr:\[\033[33;1m\]\w\[\033[m\]\$ "
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]mixlr:\[\033[33;1m\]\w\[\033[m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export CLICOLOR=1
export LSCOLORS=HxFxBxDxCxegedabagacad

export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'

alias ls='ls -GFh'
alias ll='ls -GFhla'
alias gst='git status'
alias gb='git branch'
alias gc='git checkout'
alias gd='git diff'
alias gp='git apply *.patch'
alias be='bundle exec'
alias cgrep='grep --include=*.cpp --exclude={*moc*,tags,*rcc*} -RnIif /dev/stdin . <<<'
alias qgrep='grep --include=*.qml -RnIif /dev/stdin . <<<'
alias hgrep='grep --include=*.h -RnIif /dev/stdin . <<<'

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
. `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

export MIXLR_LIBDIR="/Users/davens/build/lib"
launchctl setenv MIXLR_LIBDIR $MIXLR_LIBDIR
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/versions/1.9.3-p551/bin:$PATH"
eval "$(rbenv init -)"

export WMSJAVA_HOME="/Library/WowzaStreamingEngine-4.2.0/java"
export WOWZA_PATH="/Library/WowzaStreamingEngine"

# OPAM configuration
. /Users/davens/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

eval `ssh-agent`
ssh-add ~/.ssh/id_rsa

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

eval $(thefuck --alias)

export PATH=/Users/davens/.opam/system/bin:/Users/davens/.rbenv/shims:/Users/davens/.rbenv/versions/1.9.3-p551/bin:/Users/davens/.rbenv/bin:/Users/davens/libraries/Qt5.3.2/5.3/clang_64/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/davens/.rvm/bin:/Users/davens/.vimpkg/bin
