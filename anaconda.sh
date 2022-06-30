#!/bin/bash
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mis1/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mis1/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mis1/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mis1/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH=/home/mis1/.nvm/versions/node/v16.15.1/bin:/home/mis1/anaconda3/bin:/home/mis1/anaconda3/condabin:/sbin:/bin:/usr/bin:/usr/local/bin:/snap/bin
export LD_LIBRARY_PATH=/usr/oaodbc81/lib64
export OASDK_ODBC_HOME=/usr/oaodbc81/lib64 
export ODBCINI=/usr/oaodbc81/odbc64.ini 
cd /home/mis1/src/jupyter-notebooks
conda activate reports
anaconda-navigator
