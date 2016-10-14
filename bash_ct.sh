function ct {
IN=$PWD

arr=$(echo $IN | tr "/" "\n")

for x in $arr
do
    if [ -d "${PWD/$x/$1}" ]; then
    # Control will enter here if $DIRECTORY exists.
    cd  ${PWD/$x/$1}
    echo $PWD 
    break
    #else
    #echo 'no such directory'
    fi
    #echo "> [$x]"
done
}


_ct() 
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="--help --verbose --version"

    if [[ ${cur} == -* ]] ; then
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    else 
        arr=$(echo $PWD | tr "/" "\n")
        opts1=''
        path1='/'
        for x in $arr
        do
            opts1="$opts1 `ls $path1`"
            path1=$path1$x'/'
            
            #echo $opts1
        done
        COMPREPLY=( $(compgen -W "${opts1}" -- ${cur}))
        return 0
    fi
}
