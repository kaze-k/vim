""""""""""""""""""""""""""""""
" initialize
""""""""""""""""""""""""""""""
let g:nvim_path="~/.config/nvim"

if has("nvim")
    execute 'set runtimepath+=' . g:nvim_path
    execute "source " . g:nvim_path . "/init.vim"
    finish
endif

""""""""""""""""""""""""""""""
" set vim config
""""""""""""""""""""""""""""""
set nu " 设置行号
set showcmd " 显示输入的快捷键
set wildmenu " 命令选项
set mouse=a " 启用鼠标
set t_Co=256 " 启用256色
filetype on " 开启文件类型检测
filetype plugin on " 开启文件类型检测
filetype plugin indent on " 开启文件类型检测
filetype indent on " 开启文件类型检测
set autoindent " 缩进设置
set tabstop=4 " 设置tab空格数
set shiftwidth=4 " 设置tab长度
set softtabstop=4 " 退格恢复
set relativenumber " 相对行号
set numberwidth=4 " 行号宽度
set cursorline " 光标所在行高亮
set wrap " 自动这行
set linebreak " 在符号处折行
set scrolloff=5 " 垂直滚动，光标距离行底和行顶
set showmatch " 括号高亮
set hlsearch " 高亮匹配结果
set incsearch " 搜索自动跳转到第一个
set ignorecase " 搜索忽略大小写
set undofile " 保留撤销历史
set undodir=~/.config/vim/.undo/ " 设置历史文件夹
set backupdir=~/.config/vim/.backup/ " 设置备份文件夹
set directory=~/.config/vim/.swp/ " 设置交换文件夹
set history=1000 " 历史操作记录
set list " 显示tab和空格
set listchars=tab:··,trail:·,eol:↲ " 设置tab和空格
set tw=0 " 关闭vi相关兼容
set backspace=indent,eol,start " 折叠代码
set foldmethod=indent " 折叠代码
set foldlevel=99 " 折叠代码
set laststatus=2 " 显示状态栏
set statusline=\ \%<%F%m\ \%=\ \%{strftime('%Y-%b-%d%a\ %I:%M\ %p')}\ \[%{&ff}]\ \[%{&fenc}]\ \[%Y]\ \%l:%L:%c\ \%P\ " 状态栏设置
colorscheme space-vim-dark " set colorscheme
let &t_ut='' " 配色兼容终端
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif " 关闭后打开回到之前的位置
let mapleader=" " " 设置空格为leader键


""""""""""""""""""""""""""""""
" map config
""""""""""""""""""""""""""""""
" vim
map <Space> <NOP>
map <c-q> :q<CR>
map <c-s> :w<CR>
map <Leader>n :nohl<CR>
map <Leader>bn :bn<CR>
map <Leader>bp :bp<CR>
map <Leader>bd :bdelete<CR>
map <Leader>tn :tabn<CR>
map <Leader>tp :tabp<CR>
map <Leader>td :tabclose<CR>
map <Leader>te :tabe<Space>
map <Leader>be :e<Space>
map <Leader>v :vsp<Space>
map <Leader>p :sp<Space>
