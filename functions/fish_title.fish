function fish_title
		# PWD
    set -l home_escaped (echo -n $HOME | sed 's/\//\\\\\//g')
    set -l pwd (echo -n $PWD | sed "s/^$home_escaped/~/" | sed 's/ /%20/g')

    switch (echo $_)
    	case fish
		    echo $pwd
	  	case '*'
		    echo $argv[1]
	  end
end
