
" Put at the very end of your .vimrc file.

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END



set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'xolox/vim-misc'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'c.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'pangloss/vim-javascript'
"Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'ctags.vim'
"Plugin 'dsawardekar/wordpress.vim'
Plugin 'alvan/vim-closetag'
Plugin 'mattn/emmet-vim'
Plugin 'ciaranm/inkpot'
Plugin 'w0ng/vim-hybrid'
Plugin 'baines/vim-colorscheme-thaumaturge'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'vim-airline/vim-airline'

Plugin 'chriskempson/tomorrow-theme'
Plugin 'jnurmine/zenburn'
Plugin 'tomasr/molokai'

Plugin 'tmhedberg/matchit'
Plugin 'kien/ctrlp.vim'
Plugin 'joegesualdo/jsdoc.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'w0rp/ale'





" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"*************************************************************************"
"----------------------------------------------
"syntastic default settings
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"End of syntastic default settings
"-----------------------------------------------

colorscheme thaumaturge
nnoremap nt :NERDTreeToggle
nnoremap nta :NERDTree
nnoremap sh :split
nnoremap sk :vsplit
nnoremap tn :tabnew
nnoremap ta :tag
nnoremap rl :set rightleft
nnoremap lr :set norightleft

inoremap <C-Space> <C-x><C-o>

nnoremap nn :%!rev
syntax on
set number
:set ma

nmap <F8> :TagbarToggle<CR>

set incsearch
set hlsearch
set backspace=indent,eol,start
let g:airline_powerline_fonts = 1
:set akm

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

"autocmd FileType javascript set formatprg=prettier\ --stdin
"autocmd BufWritePre *.js :normal gggqG

set completeopt=longest,menuone
nnoremap sh :set arabicshape!


