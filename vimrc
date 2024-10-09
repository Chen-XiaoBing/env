set autoread
set autowrite
set nowrap
set wrapmargin=2
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set ruler
set colorcolumn=80
highlight ColorColumn ctermbg=darkgray
highlight clear CursorColumn
highlight CursorColumn ctermbg=darkgray
highlight clear cursorline
highlight cursorline ctermbg=darkgray
highlight Search ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
set sidescrolloff=15
set sidescroll=5
set laststatus=2
set showcmd
set incsearch
set hlsearch
set ignorecase
set nobackup
set noswapfile
set wildmenu
set wildmode=list:full
set wildchar=<Tab>
set wildignore=*.o,*~,*.pyc,*.swp,*.swn
hi StatusLine ctermbg=green ctermfg=black
set statusline=%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
set statusline=%f%r%w%m%=%l/%L,%c\ %p%%
set statusline=%<%F\ %h%m%r%=[%n]\ %-14.(%l/%L,%c%V%)\ %p%%

"au BufNewFile,BufRead *.mlir setf mlir

if &diff
  colorscheme industry
endif
set mouse=a
if has('mouse')
  set mouse=v
endif

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

syntax enable

set smartindent
set showmatch
set ignorecase

set nocompatible
set modelines=0
set backspace=2
let skip_defaults_vim=1
set number
set cindent
set scrolloff=3
set clipboard=unnamed

hi comment ctermfg=3
set laststatus=2
set pastetoggle=<F2>
set foldenable
set foldmethod=indent
set foldlevel=99
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set cmdheight=2

" auto remove blank
augroup vimrc
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif
augroup END

map ; :

nnoremap <C-t> :NERDTreeToggle<CR>

" disable showing icons LeaderF which needs special fonts.
let g:Lf_ShowDevIcons = 0
nnoremap <leader>F :Leaderf rg<CR>
noremap <S-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
