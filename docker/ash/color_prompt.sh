#!/bin/sh
#알파인 리눅스는 bash가 기본적으로 지원하지 않음
NORMAL="\[\e[0m\]"
RED="\[\e[1;31m\]"
GREEN="\[\e[1;32m\]"
USERNAME=$(whoami)
if [ "$USERNAME" = root ]; then
  PS1="[$RED\u@\h $NORMAL\W$RED]# $NORMAL"
else
  PS1="[$GREEN\u@\h $NORMAL\W$GREEN]# $NORMAL"
fi

export HISTFILE=/etc/profile.d/.ash_history
touch $HISTFILE