"===Plugin set up===

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gruvbox-community/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
call plug#end()
"===Declare CoC extention
let g:coc_global_extentions = [
	\'coc-tsserver',
	\'coc-eslint'
	\]
"======Editing options===
"Ignore case when searching
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set ic
" Enable line numbers
set number

" Don't show last command
set noshowcmd

" === TAB/Space settings === "
" Insert spaces when TAB is pressed.
set expandtab

" Change number of spaces that a <Tab> counts for during editing ops
set softtabstop=2
" Yank and paste with the system clipboard
set clipboard=unnamedplus

" Hides buffers instead of closing them
set hidden

" do not wrap long lines by default
set nowrap

set ruler
set showcmd

" syntax highlighting
syntax on
" Highlight search hits
set hlsearch
" True color support for gruvbox
set termguicolors
"guvbox setup
set background=dark
let g:gruvbox_italic=1
colorscheme gruvbox 
"===NERDTREE SETTINGS===
nmap <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
" open NERDTree automatically when vim starts up on opening a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
