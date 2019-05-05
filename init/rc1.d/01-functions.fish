function lob
  if test 0 -eq (count $argv)
    lob_help
    return
  end
  switch $argv[1]
    case home; cd $FD_LOB_HOME
    case sync; lob_sync
    case help; lob_help
    case '*'; lob_help
  end
end

function lob_sync -d "save all notes to origin repo"
  fishdots_git_sync $FD_LOB_HOME  "prob updates and additions"
end

function _enter_lob_home
  pushd .
  cd $FD_LOB_HOME  
end

function _leave_lob_home
  popd
end


function lob_help -d "display usage info"
  echo "Fishdots lobs Usage"
  echo "===================="
  echo "lob <command> [options] [args]"
  echo ""

    echo "lob home"
    echo "  go to your LOB"
    echo""

    echo "lob sync"
    echo "  pull down and push up any changes"
    echo""

    echo "lob help"
    echo "  this..."
    echo""
end
