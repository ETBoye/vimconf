" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload
" them.
execute pathogen#infect()
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

" bind NERDTree
map <F4> :NERDTreeToggle <CR>

" insert line numbers
set number
" bind ctrl+s to save
noremap <silent> <C-S>         :update<CR>
vnoremap <silent> <C-S>   <C-C>:update<CR>
inoremap <silent> <C-S>   <C-O>:update<CR> 
" bind jj to escape INSERT mode
inoremap jj <Esc>

" map <F7> to GoLangRun or GoLangTest
map <F7> :GolangGo <CR>
