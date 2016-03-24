# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

export HISTFILESIZE=
export HISTSIZE=
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# etc
alias clem='qdbus org.mpris.clementine /Player GetMetadata | grep "title:\|performer:" 
alias nowplaying="date +%d/%m/%y' '%T >> /mnt/qnap/chloe/www/clem | qdbus org.mpris.clementine /Player GetMetadata | grep 'title:\|artist:' >> /mnt/qnap/chloe/www/clem"

# functions
alias nano='nano -c'
alias kill='kill -9'
alias killrdp='kill $(pgrep freerdp)'
alias lsl='ls -ahl --color'

# etc
alias gnomecss='sudo nano /usr/share/gnome-shell/theme/gnome-shell.css'
alias steam32='primusrun wine ~/.wine32/drive_c/Program\ Files/Steam/Steam.exe -no-dwrite'
alias steam='primusrun steam'
alias schrome='google-chrome --proxy-server="socks5://odin:9050" --host-resolver-rules="MAP * 0.0.0.0 , EXCLUDE hostname"'
alias zion='sshfs sgnls@zion:/mnt/data /mnt/zion'
alias teamviewer='~/rdm/teamviewer-11/teamviewer'
alias routeitl='sudo route add -net 10.40.1.0/24 dev ppp0'

alias gitadd='git add *'
alias gitsync='git pull origin'
alias gitcommit='git commit -m "Commit"'
alias gitbranch='git checkout -b'
alias gitmaster='git checkout master'
alias gitgo='git push origin'
alias gitgomaster='git push origin master'
alias gitup='gitadd && gitcommit && gitgomaster'

# lan
alias sshzion='ssh sgnls@zion'
alias wakezion='sudo ether-wake -i eth0 00:13:d4:13:81:db'

# rmt
alias sshgit='ssh git@github.com'
