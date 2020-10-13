let mapleader = "\<Space>"


set nocompatible              " required
filetype off                  " required

 " set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'

 " add all your plugins here (note older versions of Vundle
 " used Bundle instead of Plugin)

 " ...

 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required

 set splitbelow
 set splitright

 "split navigations
 nnoremap <C-J> <C-W><C-J>
 nnoremap <C-K> <C-W><C-K>
 nnoremap <C-L> <C-W><C-L>
 nnoremap <C-H> <C-W><C-H>

"scrolling
nnoremap <C-K> <C-B>
nnoremap <C-J> <C-F>
" Enable folding
  set foldmethod=indent
  set foldlevel=99

 " Enable folding with the spacebar
 nnoremap <space> za
 Plugin 'tmhedberg/SimpylFold'
 let g:SimpylFold_docstring_preview=1
 au BufNewFile,BufRead *.py
     \ set tabstop=4 |
     \ set softtabstop=4 |
     \ set shiftwidth=4 |
     \ set textwidth=79 |
     \ set expandtab |
     \ set autoindent |
     \ set fileformat=unix
 au BufNewFile,BufRead *.js, *.html, *.css
	 \ set tabstop=2 |
	 \ set softtabstop=2 |
	 \ set shiftwidth=2 |
 Plugin 'vim-scripts/indentpython.vim'
 " au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
 set encoding=utf-8
 Bundle 'Valloric/YouCompleteMe'
 let g:ycm_autoclose_preview_window_after_completion=1
 map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

 "python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"   project_base_dir = os.environ['VIRTUAL_ENV']
"   activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"   execfile(activate_this, dict(__file__=activate_this))
" EOF
" 
 Plugin 'vim-syntastic/syntastic'
 Plugin 'nvie/vim-flake8'

 let python_highlight_all=1
 syntax on

 Plugin 'jnurmine/Zenburn'
 Plugin 'altercation/vim-colors-solarized'

 Plugin 'scrooloose/nerdtree'
 Plugin 'jistr/vim-nerdtree-tabs'
 Plugin 'kien/ctrlp.vim'
 Plugin 'jiangmiao/auto-pairs'
 
 set nu
 Plugin 'tpope/vim-fugitive'
 set clipboard=unnamed
 
 

 
 set background=dark
 set t_Co=256

 if (&term =~ '^xterm' && &t_Co == 256)	
   set t_ut= | set ttyscroll=1
 endif



 "Searching
 set hlsearch

 nnoremap ; :
 nnoremap : ;

 "automatic replacement
 nnoremap S :%s@@gI<Left><Left><Left>

"mouse setings
"set mouse=a


"highling location
set cursorline
set cursorcolumn
"highlight Cursonline ctermbg=Grey cterm=bold guibg=#2b2b2b
"highlight Cursorcolumn ctermbg=Grey cterm=bold guibg=#2b2b2b

"relative number
set number relativenumber

"vifm plugin file manager
Plugin 'vifm/vifm.vim'
map <Leader>vv ;Vifm<CR>
map <Leader>vs ;VsplitVifm<CR>
map <Leader>sp ;SplitVifm<CR>
map <Leader>dv ;DiffVifm<CR>
map <Leader>tv ;TabVifm<CR>

 "colorschemes
 "colo badwolf
 Plugin 'patstockwell/vim-monokai-tasty'
 colorscheme vim-monokai-tasty 
