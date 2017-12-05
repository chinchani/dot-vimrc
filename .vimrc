"""""""""""""""
""" Plugins """
"""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug
call plug#begin()
Plug 'fatih/vim-go'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'Shougo/deoplete.nvim'
" go get -u github.com/nsf/gocode
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'davidhalter/jedi'
Plug 'zchee/deoplete-jedi'
" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" dlv debugger
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/vimproc.vim'
Plug 'sebdah/vim-delve'
" git integration
Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'tpope/vim-fugitive'
"go crazy with colorschemes
Plug 'rafi/awesome-vim-colorschemes'
call plug#end()

" deoplete
" " Run deoplete.nvim automatically
let g:deoplete#enable_at_startup = 1
" golang
let go_fmt_autosave=1

""""""""""""""""""""
""" Key-bindings """
""""""""""""""""""""
" golang
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>R  :GoRename<CR>
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>T  :GoCoverage<CR>
autocmd FileType go nmap <leader>i  <Plug>(go-imports)
autocmd FileType go nmap <leader>d  <Plug>(go-def-vertical)
" errors
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
" search refs
nnoremap <C-\>s :Ag <C-R><C-W><CR> 

""""""""""""""""
""" Behavior """
""""""""""""""""
set number
set hlsearch
set tabstop=2
set shiftwidth=2
set textwidth=80
set expandtab
set cindent
set autoindent
set smartindent
set laststatus=2
set mouse=a
"set paste

""""""""""
""" UX """
""""""""""
syntax enable
set t_Co=256
set background=dark
colorscheme happy_hacking
