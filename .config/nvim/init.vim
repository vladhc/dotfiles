packadd minpac
call minpac#init()

call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('tpope/vim-fugitive')
call minpac#add('flazz/vim-colorschemes')

" Python folding
" call minpac#add('tmhedberg/SimpylFold')
" Python language server
call minpac#add('autozimu/LanguageClient-neovim')

call minpac#add('fatih/vim-go')

" Python language server
let g:LanguageClient_serverCommands = {
      \ 'go': ['/home/vladhc/projects/golang/bin/go-langserver'],
      \ 'python': ['/home/vladhc/.local/bin/miniconda3/bin/pyls'],
\ }
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
autocmd FileType python nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
autocmd FileType python nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
autocmd FileType python nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hidden

set nobackup                                " do not keep a backup file
:autocmd BufLeave,FocusLost * silent! wall  " autosave on focus lost

set relativenumber
set hlsearch        " highlight searches
set ignorecase      " ignore case when searching
set smartcase       " no ignorecase if Uppercase char is present

set encoding=utf-8
set autoindent

set colorcolumn=80

set list
set listchars=tab:▸\ ,eol:¬

set laststatus=2
set statusline=%.25F\ %{fugitive#statusline()}\ %l/%L

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap <C-J> <C-W><C-J> "Ctrl-j to move down a split
nnoremap <C-K> <C-W><C-K> "Ctrl-k to move up a split
nnoremap <C-L> <C-W><C-L> "Ctrl-l to move right a split
nnoremap <C-H> <C-W><C-H> "Ctrl-h to move left a split

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

colorscheme molokai

set guifont=Monospace\ 15
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

set nowrap

" to avoid switching between keyboards
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" public/ui ← swagger directory
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v(node_modules|build|vendor|public\/ui)$',
  \ 'file': '\v\.(ico|jpg|png|ttf|woff|otf|svg|eot|\.min\.)$'
  \ }

set cursorline

set wildmenu

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

" Don't give the intro message when starting Vim
set shortmess+=I

let g:python3_host_prog = '/home/vladhc/.local/bin/miniconda3/bin/python3.6'
let g:deoplete#enable_at_startup = 1

" Map <Esc> to exit terminal-mode
tnoremap <Esc> <C-\><C-n>
