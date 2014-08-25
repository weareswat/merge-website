 #!/bin/bash
 # A collection of functions useful for bash scripts

function common_require_ok {
  echo "Type 'ok' to continue (or 'no' to cancel): "

  while read VAR_OK; do
    if [ "$VAR_OK" == "ok" ]
    then
      break
    fi
    if [ "$VAR_OK" == "no" ]
    then
      echo "You've chosen to cancel. Bye."
      echo ""
      exit 0
    fi
    echo "You must type 'ok' to proceed or 'no' to cancel:"
  done
}
