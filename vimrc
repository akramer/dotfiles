" Map leader to <SPACE>
let mapleader = " "
" ----- Begin Vundle initialization
set nocompatible               " be iMproved
filetype on                    " for some reason, invoking vim as 'vi' on OS X returns non-zero unless this is here.
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Plugin 'VundleVim/Vundle.vim'

Plugin 'Lokaltog/vim-easymotion'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'bufexplorer.zip'
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'
Plugin 'christoomey/vim-tmux-navigator'
" ----- End Vundle initialization

" Set up Solarized theme
if has("gui_running")
  set background=light
  colorscheme solarized
else
  set t_Co=256
  set background=dark
  let g:solarized_termcolors=256
  colorscheme solarized
  set background=dark
endif

syntax on
filetype indent plugin on

set tabstop=8
set softtabstop=2
set shiftwidth=2
set expandtab
set swapsync=fsync
set hlsearch
set hidden
set ruler
set showmode
set showmatch
set incsearch
set wildmode=longest:full
set wildmenu
" 80 char stuff
" set textwidth=80

" Go has a different style...
au FileType go set noet ts=2 sw=2 noexpandtab softtabstop=2
let g:go_fmt_command = "goimports"
au FileType go nmap <Leader>gi <Plug>(go-info)
au FileType go nmap <Leader>gs <Plug>(go-implements)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>gd <Plug>(go-def)
au FileType go nmap <Leader>gv <Plug>(go-vet)
au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gc <Plug>(go-coverage)
au FileType go nmap <leader>gl <Plug>(go-lint)


" netrw configs - tree view, and open windows to the right
let g:netrw_liststyle=3
let g:netrw_altv=1

" map gp to toggle paste/nopaste
map gp :set invpaste<CR>:set paste?<CR>

" Move through tmux and vim panes seamlessly
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-a>h :TmuxNavigateLeft<cr>
nnoremap <silent> <C-a>j :TmuxNavigateDown<cr>
nnoremap <silent> <C-a>k :TmuxNavigateUp<cr>
nnoremap <silent> <C-a>l :TmuxNavigateRight<cr>
