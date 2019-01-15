    #!/bin/bash
    files=`../qrsctl listprefix softproject ''`
    i=0
    echo $files | tr " " "\n" | while read line
    do
        if(($i>0))
        then
            echo $line
            ../qrsctl get softproject $line ./$line
        fi
        i=$(($i+1))
    done
