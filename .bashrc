###############################################################
#   _____               _     _               _               #
#  / ____|             | |   | |             | |              #
# | (___ _____   _     | |   | |__   __ _ ___| |__  _ __ ___  #
#  \___ \_  / | | |_   | |   | '_ \ / _` / __| '_ \| '__/ __| #
#  ____) / /| |_| | |__| |  _| |_) | (_| \__ \ | | | | | (__  #
# |_____/___|\__, |\____/  (_)_.__/ \__,_|___/_| |_|_|  \___| #
#             __/ |                                           #
#            |___/                                            #
###############################################################

# Exports
export EDITOR_PATH="/c/Users/Szymon Jackiewicz/AppData/Local/Programs/Microsoft VS Code/bin/code"

# Basic Commands
alias la='ls -al'
alias cl='clear'
alias bashrc='e ~/.bashrc'
e() {
    # Open a file in an editor
    "$EDITOR_PATH" "$1" "$2"
}

# Applications
alias exp='explorer .'
alias s='explorer .'

# Websites
alias github='start https://github.com/SzyJ'
alias music='start https://play.google.com/music/recents'
alias cal='start https://calendar.google.com/'
alias lofi='start https://youtu.be/dQw4w9WgXcQ'
alias youtube='start https://www.youtube.com/'
ddg() {
    # `ddg` will open DuckDuckGo homepage ready to type
    # `ddg test` will search for word test in ddg
    if [ $# -eq 0 ]
    then
        start "https://duckduckgo.com/"
    else
        search="https://duckduckgo.com/?q="
        for var in "$@"
        do
            search+="+${var}"
        done
        start "$search"
    fi
}
ggl() {
    # `ggl` will open google home page ready to type
    # `ggl maps` will open google maps
    # `ggl mail` will open gmail
    if [[ (-z "$1") || ("$1" == "maps") || ("$1" == "mail") ]]
    then
        start "https://www.google.co.uk/$1"
    else
        search="https://www.google.co.uk/search?q="
        for var in "$@"
        do
            search+="+${var}"
        done
        start "$search"
    fi
}

# Navigation
alias c="cd /c/"
alias dev='cd /c/code/'
alias tools='cd /c/tools/'
alias home='cd ~'
