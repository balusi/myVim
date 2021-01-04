" 安装插件管理 vim-plug
" unix
call plug#begin('~/.vim/plugged')

" windows
" call plug#begin("C:\Users\admin\Vimplugged")

" 主题配色
Plug 'sainnhe/sonokai'

call plug#end()

colorscheme sonokai

""""""""""""""""""""""""""""""""""""
"""=>基本配置<="""
""""""""""""""""""""""""""""""""""""


" 不与 Vi 兼容（采用 Vim 自己的操作命令）
set nocompatible

" 支持使用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 使用 utf-8 编码
set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"设置文件编码"
set fileencodings=utf-8

"设置终端编码"
set termencoding=utf-8

"设置语言编码"
set langmenu=zh_CN.UTF-8
set helplang=cn

" 启用 256 色
set t_Co=256

"开启相关插件"
"侦测文件类型"
filetype on
" 载入文件类型插件
filetype plugin on
"为特定文件类型载入相关缩进文件"
filetype indent on

""""""""""""""""""""""""""""""""""""
"""=>缩进<="""
""""""""""""""""""""""""""""""""""""

"设定<<和>>命令移动时的宽度为4"
set shiftwidth=4

" 将 Tab 转换为空格
set expandtab

"设置所有的Tab和缩进为4个空格"
set tabstop=4

"使得按退格键时可以一次删除4个空格"
set softtabstop=4
set smarttab

"缩进，自动缩进（继承前一行的缩进）"
"set autoindent 命令打开自动缩进，是下面配置的缩写
"可使用autoindent命令的简写，即“:set ai”和“:set noai”
"还可以使用“:set ai sw=4”在一个命令中打开缩进并设置缩进级别
set ai
set cindent

"智能缩进"
set si

"自动换行"
set wrap

"设置软宽度"
set sw=4

"行内替换"
set gdefault

"""""""""""""""""""""""""""""""
"""=>代码折叠功能<="""
"""""""""""""""""""""""""""""""
"激活折叠功能"
set foldenable
"set nofen（关闭折叠功能）"

"设置按照语法方式折叠（可简写set fdm=XX）"
"有6种折叠方法：
"manual   手工定义折叠"
"indent   更多的缩进表示更高级别的折叠"
"expr     用表达式来定义折叠"
"syntax   用语法高亮来定义折叠"
"diff     对没有更改的文本进行折叠"
"marker   对文中的标志进行折叠"
set foldmethod=manual
"set fdl=0（不选用任何折叠方法）

"设置折叠区域的宽度"
"如果不为0，则在屏幕左侧显示一个折叠标识列
"分别用“-”和“+”来表示打开和关闭的折叠
set foldcolumn=0

"设置折叠层数为3"
setlocal foldlevel=3

"设置为自动关闭折叠"
set foldclose=all

"用空格键来代替zo和zc快捷键实现开关折叠"
"zo O-pen a fold (打开折叠)
"zc C-lose a fold (关闭折叠)
"zf F-old creation (创建折叠)
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR

""""""""""""""""""""""""""""""""""""
"""=>外观<="""
""""""""""""""""""""""""""""""""""""
"设置背景颜色"
set background=dark

" 打开语法高亮。自动识别代码，使用多种颜色显示
syntax on

" 在底部显示，当前处于命令模式还是插入模式
set showmode

" 命令模式下，在底部显示，当前键入的指令，键入 d 时操作完成，显示消失
set showcmd

"设置字体"
"set guifont=dejaVu\ Sans\ MONO\ 10
set guifont=Courier_New:h10:cANSI

"设置颜色"
"colorscheme desert

" 显示行号
set number

" 显示光标所在行的行号，其它行为相对此行的行号
set relativenumber

" 光标所在行高亮
set cursorline
hi cursorline guibg=#FFFFFF
"hi CursorColumn guibg=#FFFFFF

"用浅色高亮显示当前行"
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

"行号颜色
highlight LineNr guifg=blue

" 设置行宽，一行显示多少个字符
set textwidth=80

" 自动折行
set wrap

" 不会在单词内部折行
set linebreak

"带有如下符号的单词不要被换行分割"
set iskeyword+=_,$,@,%,#,-

" 指定折行处与编辑窗口的右边缘之间空出的字符数
set wrapmargin=2

" 垂直滚动时，光标距离顶部 / 底部的位置（单位：行）
set scrolloff=5

" 水平滚动时，光标距离行首或行尾的位置（单位：字符） 不折行时有用
" set sidescrolloff=15

" 显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示
set laststatus=2

"增强模式中的命令行自动完成操作"
set wildmenu

"显示标尺"
set ruler

"设置命令行的高度"
set cmdheight=1

"不要图形按钮"
set go=

"在执行宏命令时，不进行显示重绘；在宏命令执行完成后，一次性重绘，以便提高性能"
set lz

"使回格键（backspace）正常处理indent, eol, start等"
set backspace=eol,start,indent

"允许空格键和光标键跨越行边界"
set whichwrap+=<,>,h,l

"设置魔术"
set magic

"关闭遇到错误时的声音提示"
"关闭错误信息响铃"
set noerrorbells

""""""""""""""""""""""""""""""""""""
"""=>搜索<="""
""""""""""""""""""""""""""""""""""""

" 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号
set showmatch

"匹配括号高亮的时间（单位是十分之一秒）"
set mat=2

" 搜索时高亮匹配结果
set hlsearch

" 搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set incsearch

" 搜索时忽略大小写
"还可以使用简写（“:set ic”和“:set noic”）"
set ignorecase

" 英语单词的拼写检查
set spell spelllang=en_us

" 不创建备份文件。默认情况下，文件保存时，会额外创建一个备份文件，它的文件名是在原文件名的末尾，再添加一个波浪号（〜）
set nobackup

" 可以在文件关闭后，操作记录保留在一个文件里面，继续存在。这意味着，重新打开一个文件，可以撤销上一次编辑时的操作。撤消文件是跟原文件保存在一起的隐藏文件，文件名以.un~开头
set undofile

" 自动切换工作目录。这主要用在一个 Vim 会话之中打开多个文件的情况，默认的工作目录是打开的第一个文件的目录。该配置可以将工作目录自动切换到，正在编辑的文件的目录
set autochdir

" 出错时，发出视觉提示，通常是屏幕闪烁
set visualbell

" Vim 需要记住多少次历史操作
set history=1000

" 文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示，并自动更新
set autoread

" 命令模式下，底部操作指令按下 Tab 键自动补全。
" 第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令
set wildmenu
set wildmode=longest:list,full

"""""""""""""""""""""""""""""
"""=>其他设置<="""
"""""""""""""""""""""""""""""
"开启新行时使用智能自动缩进"
set smartindent
set cin
set showmatch

"在处理未保存或只读文件的时候，弹出确认"
set confirm

"隐藏工具栏"
set guioptions-=T

"隐藏菜单栏"
set guioptions-=m

"置空错误铃声的终端代码"
set vb t_vb=

"显示状态栏（默认值为1，表示无法显示状态栏）"
set laststatus=2

"状态行显示的内容"
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

"文件类型自动检测，代码智能补全"
set completeopt=longest,preview,menu

"共享剪切板"
set clipboard+=unnamed

"从不备份"
set nobackup
set noswapfile

"自动保存"
set autowrite

"显示中文帮助"
if version >= 603
        set helplang=cn
            set encoding=utf-8
endif

"设置高亮相关项"
highlight Search ctermbg=black ctermfg=white guifg=white guibg=black

""""""""""""""""""""""""""""""""
"""=>在shell脚本开头自动增加解释器以及作者等版权信息<="""
""""""""""""""""""""""""""""""""
"新建.py,.cc,.sh,.java文件，自动插入文件头"
autocmd BufNewFile *.py,*.cc,*.sh,*.java exec ":call SetTitle()"
"定义函数SetTitle，自动插入文件头"
func SetTitle()
    if expand ("%:e") == 'sh'
        call setline(1, "#!/bin/bash")
        call setline(2, "#Author:bert")
        call setline(3, "#Blog:https://www.google.com")
        call setline(4, "#Time:".strftime("%F %T"))
        call setline(5, "#Name:".expand("%"))
        call setline(6, "#Version:V1.0")
        call setline(7, "#Description:")
    endif
endfunc
