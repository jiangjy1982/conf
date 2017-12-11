# vi mode
set -o vi

export PS1="\u@\h:\w\$"

# ===== HIST SETTINS =====
export HISTFILESIZE=20000
export HISTSIZE=10000
shopt -s histappend
# Combine multiline commands into one in history
shopt -s cmdhist
# Ignore duplicates, ls without options and builtin commands
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"

# ===== USEFUL ALIASES =====
os=`uname -s`
case "$os" in
    Linux*) alias ls='ls -F --color=auto';;
    Darwin*) alias ls='ls -F -G'
esac
alias grep='grep --color=auto'
alias tree='find . -print | sed -e "s;/*/;|;g;s;|; |;g"'

# ===== USEFUL FUNCTIONS =====
function scan() {
    if [ $# -ne 1 ]; then
         echo "scan <KEYWORD>"
    else
         find . -type f ! -name '*.swp' -exec grep --color=auto $1 {} \+
    fi
}

# ===== COLOR FOR MAN PAGES =====
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
