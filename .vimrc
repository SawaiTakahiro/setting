" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

filetype off

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/dotfiles/.vim/bundle/'))

" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
  \ }
"NeoBundle 'VimClojure'
"NeoBundle 'Shougo/vimshell'
"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'Shougo/neosnippet'
"NeoBundle 'jpalardy/vim-slime'
"NeoBundle 'scrooloose/syntastic'
"NeoBundle 'Shougo/vimfiler.vim'
"NeoBundle 'itchyny/lightline.vim'
"NeoBundle 't9md/vim-textmanip'

"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'ujihisa/unite-colorscheme'
"NeoBundle 'tomasr/molokai'
""NeoBundle 'https://bitbucket.org/kovisoft/slimv'

"NeoBundle 'neocomplete.vim'

"色設定の追加してみる
NeoBundle 'w0ng/vim-hybrid'

NeoBundle 'chriskempson/vim-tomorrow-theme'

call neobundle#end()

filetype plugin indent on     " required!
filetype indent on
syntax on

set background=dark

if ($ft=='ruby')
	colorscheme Tomorrow-Night
else
	colorscheme hybrid
endif

set number

set list "不可視文字を表示
set listchars=tab:>-,trail:-	"タブ、半角スペースの表示

if has('lua')
	  NeoBundleLazy 'Shougo/neocomplete.vim', {
	      \ 'depends' : 'Shougo/vimproc',
	      \ 'autoload' : { 'insert' : 1,}
	      \ }
endif

" neocomplete {{{
let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 3
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'
" }}}



NeoBundleCheck
