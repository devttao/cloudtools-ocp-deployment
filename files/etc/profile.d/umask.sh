# /etc/profile.d/umask.sh
# OCP ansible auto deploy 
# Restore umask to prevent OpenStack install fail

if [ $UID -gt 199 ] && [ "`id -gn`" = "`id -un`" ]; then
   umask 002
else
   umask 022
fi
