#!/bin/sh

# xdg setup
# https://wiki.archlinux.org/title/XDG_Base_Directory#User_directories
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_STATE_HOME="$HOME"/.local/state
export XDG_BIN_HOME="$HOME"/.local/bin
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg

# aliases
alias ls='ls --color=always '
alias pacman='pacman --color=always '
alias less='less -r '
#alias firefox='firefox --ProfileManager '
#alias nmcli='nmcli --ask'
alias btw='neofetch '
alias hackerman='cmatrix -ab '
alias mirror='sudo reflector --country CA,US --protocol https --save /etc/pacman.d/mirrorlist '
alias vim='nvim '
alias lxappearance='GDK_BACKEND=x11 lxappearance '
#alias code='code --enable-features=UseOzonePlatform --ozone-platform=wayland '
#alias vscodium='vscodium --enable-features=UseOzonePlatform --ozone-platform=wayland '

# gtk themes
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export GTK_THEME='Graphite-pink-dark'

# edit defaults
export PATH=$PATH:$XDG_BIN_HOME:$HOME/scripts
export BROWSER='firefox --ProfileManager '
export TERMINAL=/usr/bin/kitty

# ssh tunnel
export SSH_TUNNEL_ADDRESS="52698:localhost:52698"

# cleanup
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export AUDACITY_PATH="$XDG_CONFIG_HOME"/audacity-data
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export HISTFILE="$XDG_DATA_HOME"/bash/history
export LESSHISTFILE=-
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages
export VSCODE_PORTABLE="$XDG_CONFIG_HOME"/code
export XAUTHORITY="$XDG_CACHE_HOME"/Xauthority

export AZURE_CONFIG_DIR=$XDG_DATA_HOME/azure
export GRIPHOME="$XDG_CONFIG_HOME"/grip
export PYTHON_EGG_CACHE="$XDG_CACHE_HOME"/python-eggs
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter

export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem

export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
alias mvn="mvn --global-settings $XDG_CONFIG_HOME/maven/settings.xml "

alias nvidia-settings="nvidia-settings --config=$XDG_CONFIG_HOME/nvidia-settings-rc "
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv

alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget-hsts "
export WGETRC="$XDG_CONFIG_HOME"/wgetrc

alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config "
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history

#export PSQLRC="$XDG_CONFIG_HOME"/pg/psqlrc
#export PSQL_HISTORY="$XDG_CACHE_HOME"/pg/psql_history
#export PGPASSFILE="$XDG_CONFIG_HOME"/pg/pgpass
#export PGSERVICEFILE="$XDG_CONFIG_HOME"/pg/pg_service.conf

export VIMHOME="$XDG_CONFIG_HOME/vim"
export VIMINIT="source $VIMHOME/vimrc"

#alias newsboat='newsboat '\
#	"--url-file=$XDG_CONFIG_HOME/newsboat.urls "\
#	"--cache-file=$XDG_CACHE_HOME/newsboat.cache.db "\
#	"--config-file=$XDG_CONFIG_HOME/newsboat.config"

# racket and ghc
#export PLTUSERHOME="$XDG_DATA_HOME"/racket
#export GHCUP_USE_XDG_DIRS=pog
#export GHCUP_INSTALL_BASE_PREFIX="$XDG_DATA_HOME"
#export CABAL_DIR="$XDG_DATA_HOME"/cabal
#export GHC_ENVIRONMENT="$GHCUP_INSTALL_BASE_PREFIX"/ghcup/ghc/x86_64-linux-8.6.5/environments/default

# R stats
export R_ENVIRON=${XDG_CONFIG_HOME}/Renviron
