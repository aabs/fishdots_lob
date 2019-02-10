
if set -q FD_LOB_HOME 
    set -U FD_LOB_HOME "$HOME/.lob"
end

if not test -e $FD_LOB_HOME     
    mkdir -p $FD_LOB_HOME
end


