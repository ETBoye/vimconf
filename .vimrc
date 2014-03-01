"Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload
" them.
filetype off
filetype plugin indent off
set runtimepath+=/usr/local/go/misc/vim
filetype plugin indent on
filetype indent on "Automatic indentation
syntax on
colorscheme werks
"set tabstop=3
autocmd FileType go autocmd BufWritePre <buffer> Fmt
set tabstop=3 softtabstop=3 shiftwidth=3
