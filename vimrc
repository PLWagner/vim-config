let mapleader = ","

filetype plugin on  "Activate auto plugin activation based on filetype
filetype indent on  "Activate auto indentation configuration associated with filetype

syntax enable
set updatetime=100
set number
set background=dark
colorscheme gruvbox

"Tab navigation
noremap <silent> <C-H> :tabp<CR>
noremap <silent> <C-L> :tabn<CR>

"Window/View Options
set splitbelow      "Tell new splits open below the active window, not above it:
set splitright      "Tell new vertical open to the right of the active window:
set scrolloff=2     "Minimal number of screen lines to keep above and below the cursor
set showbreak="> "  "String to put at the start of lines that have been wrapped
set sidescrolloff=20    "The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set
set wmh=1           "The minimal height of a window when it's not the current window

"Buffer Options
nnoremap <tab> :bn<cr>
nnoremap <S-tab> :bp<cr>
nmap <leader>d :bd<cr>
nmap <leader>D :bufdo bd<cr>
"the sequence `,d` will delete the current buffer without killing the window
nmap <leader>d :bprevious<CR>:bdelete #<CR>

" Show trailing whitepace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

"" NerdCommenter config
let g:NERDSpaceDelims = 1

""NERDTree Plugin's Setting
let NERDTreeIgnore=[]
let NERDTreeIgnore+=['.*\~$']
let NERDTreeIgnore+=['.*\.pyc$']
nnoremap <F2> :NERDTreeToggle<CR>

"" Lightline plugin config
set laststatus=2

"" Vimdiff config
set diffopt+=iwhiteall

set bs=2 " Allow backspacing over everything in insert mode
