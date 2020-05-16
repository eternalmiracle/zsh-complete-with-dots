WAITING_DOTS=${WAITING_DOTS:-"..."}
expand-or-complete-with-dots() {
    echo -n $WAITING_DOTS
    zle expand-or-complete
    zle redisplay
}
zle -N expand-or-complete-with-dots
bindkey "^I" expand-or-complete-with-dots

