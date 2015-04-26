# .bash_profile
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment and startup programs
export LANG="en_US.UTF-8"

bind '"\x1b\x5b\x41":history-search-backward'
bind '"\x1b\x5b\x42":history-search-forward'
export PS1="\[\e[36;1m\]\u@\[\e[32;1m\]\H:\w\[\e[0m\]\n$"
parse_git_branch ()
{
  if git rev-parse --git-dir >/dev/null 2>&1
  then
    gitver=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
    gitver="$(tput setaf 3)(${gitver})$(tput sgr0)"
  else
    return 0
  fi
  echo $gitver
}
export PS1="\$(parse_git_branch)${PS1} "

export SVN_EDITOR=vim

export PATH=/Applications/XAMPP/bin:~/bin:$PATH

alias fuck='$(thefuck $(fc -ln -1))'
