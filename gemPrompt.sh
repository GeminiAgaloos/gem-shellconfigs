# ## !/bin/bash
# /Users/gemini/.bash_gem/bash_gemPrompt.sh

# taken from:
# https://martinfitzpatrick.name/article/add-git-branch-name-to-terminal-prompt-mac/
# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

print_git_branch() {
  local __gitbranch=$(parse_git_branch)
  if [ -n "$__gitbranch" ]; then
    echo -n " >> git on branch: $__gitbranch "
  else
    echo -n ""
  fi
}



export PS1="\n\n\D{%T %z %Z  >> %A %d %B %Y >> it is day# %j and week# %U of the year %Y}\n\u@\h >> \$(uname -sr) \$0  >> \${PWD}\$(print_git_branch)\n$ "
echo -e "\nPS1:"
echo "$PS1"
echo
return 0 2>/dev/null
exit

# timeFormat=${1:-"%d-%b-%Y-%a %T %z %Z"} # 19-Apr-2020-Sun 10:06:58 -0400 EDT

timeFormat=${1:-"it is day# %j and week# %U of the year %Y --> Today is %A %B %d and the time is %T %z %Z"}
echo -e "\n timeFormat: $timeFormat"
echo "Positional Parameters"
echo '$0 = ' $0
echo '$1 = ' $1
echo '$2 = ' $2
echo '$3 = ' $3

# export PS1="\n\n\${PWD} >> \u@\h >> \D{$timeFormat} \$(print_git_branch)\n \$ "
echo -n '$PS1 = '
echo "$PS1"


