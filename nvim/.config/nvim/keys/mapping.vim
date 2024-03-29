let mapleader=" "

"(CUSTOM TOGGLE LINE) Toggle no numbers → absolute → relative → relative with absolute on cursor line: 
function! g:ToggleLineMode()
:exe 'set nu!' &nu ? 'rnu!' : ''
endfunction

nnoremap <silent><A-Tab> :call g:ToggleLineMode()<CR>

" Esc key to kj or jk
inoremap jk <Esc>
inoremap kj <Esc>

" <TAB> : Completion
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"  Toggle Terminal
let g:term_buf = 0
let g:term_win = 0
function! Term_toggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

nnoremap <leader>\ :call Term_toggle(10)<cr>
nnoremap <C-\> :call Term_toggle(10)<cr>

" Exit Terminal mode
tnoremap <Esc> <C-\><C-n>

nnoremap <leader>q :q!<CR>
nnoremap <leader>d :close<CR>
nnoremap <leader>x :qa!<CR>
nnoremap <leader>e :wq!<CR>
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

nnoremap <A-h> :tabp<CR>
nnoremap <A-l> :tabn<CR>
if !exists('g:vscode')
	nmap <Tab> :tabn<CR>
	nmap <S-Tab> :tabp<CR>
endif
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprev<CR>
" nnoremap <silent> <C-]> :bnext<CR>
" nnoremap <silent> <C-[> :bprev<CR>
nnoremap <silent> <leader><b>n :bnext<CR>
nnoremap <silent> <leader><b>p :bprev<CR>

nnoremap <A-c> :tabc<CR>
nnoremap <A-N> :tabnew<CR>
nnoremap <A-f> :!touch<Space>
nnoremap <A-d> :!mkdir<Space>
nnoremap <A-m> :!mv<Space>%<Space>

nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
" Basic Movement
if !exists('g:vscode')
	"imap <leader>h <C-w>h
	"imap <leader>j <C-w>j
	"imap <leader>k <C-w>k
	"imap <leader>l <C-w>l
	nnoremap <leader>h <C-w>h
	nnoremap <leader>j <C-w>j
	nnoremap <leader>k <C-w>k
	nnoremap <leader>l <C-w>l
endif

" OLD Binding basic movement
"nnoremap <leader>h :wincmd h<CR>
"nnoremap <leader>j :wincmd j<CR>
"nnoremap <leader>k :wincmd k<CR>
"nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>= <C-w>=
nnoremap <leader><Bar> <C-W><Bar>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>

" nnoremap <silent> <M-j>    :resize -2<CR>
nnoremap <C-l> :vertical resize +1<CR>
nnoremap <C-h> :vertical resize -2<CR>
nnoremap <C-j> :resize -2<CR>
nnoremap <C-k> :resize +2<CR>

nnoremap <leader>bb :Bracey<CR>
nnoremap <leader>bs :BraceyStop<CR>
nnoremap <leader>br :BraceyReload<CR>
nnoremap <F5> :DiscordUpdatePresence<CR>
" Indenting
"vnoremap < <gv
"vnoremap > >gv

" Hexokinase
nnoremap <leader>` :HexokinaseToggle<CR>
" Emmet
let g:user_emmet_expandabbr_key='<A-Space>'
" Save File as sudo on that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
