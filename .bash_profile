
timeFormat="%d-%b-%Y-%a %T %z %Z"

echo It is now:
date +"  DATE: %d-%b-%Y-%A%n  TIME: %T %z %Z"
readlink /etc/localtime
date  | toilet -f term -F border --gay -t
curl "wttr.in/Brighton,Michigan?1nF"

export HISTSIZE=
export HISTFILESIZE=
export HISTTIMEFORMAT="[$timeFormat]"
export PATH="/usr/local/sbin:${PATH}"

source gemPrompt.sh
echo "Path: $PATH"
echo -en "\n\nAliases: " ; alias
echo -en "\n\nPWD: " ; pwd

