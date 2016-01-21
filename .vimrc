set nocompatible
set   history=50
set   undolevels=20

colorscheme kefo

filetype indent on
filetype plugin on

set   autoread

" User interface
set   statusline=%<%t\ %y%m\ %r%h%w%=Ln:%l/%L\ Col:%c\ [%{&ff}][%{&enc}]
set   cmdheight=1
set   laststatus=2
set   backspace=indent,eol,start
set   ruler
set   showcmd
set   showmatch
set   showmode
set   shortmess=at
set   mat=2

set noequalalways

" Backups
set nobackup
set noswapfile
set nowritebackup

" Text
set   autoindent
set   expandtab
set   shiftwidth=4
set   tabstop=4
set   textwidth=80

syntax enable

if has("gui_running")
   set guifont=Courier_New:h10:cDEFAULT
   set lines=34 columns=80
   set showtabline=2
   set number
   hi LineNr guifg=DarkGray guibg=LightGray
endif

" Use GnuPG to open a .gpg file
augroup gpg
    au!
    au BufReadPre,FileReadPre *.gpg
        \ set viminfo=
    " Don't write unencrypted stuff to disk
    au BufReadPre,FileReadPre *.gpg
        \ set noswapfile noundofile nobackup nowritebackup history=0
    " Switch to binary mode to read the encrypted file
    au BufReadPre,FileReadPre *.gpg
        \ set binary
    au BufReadPre,FileReadPre *.gpg
        \ let ch_save = &ch|set ch=2
    " Descrypt the file
    au BufReadPost,FileReadPost *.gpg
        \ '[,']!gpg --decrypt 2>/dev/null
    " Switch to normal mode for editing
    au BufReadPost,FileReadPost *.gpg
        \ set nobin
    au BufReadPost,FileReadPost *.gpg
        \ let &ch = ch_save|unlet ch_save
    au BufReadPost,FileReadPost *.gpg
        \ execute ":doautocmd BufReadPost " . expand("%:r")
    " Encrypt all text before writing
    au BufWritePre,FileWritePre *.gpg
        \ set binary |
        \ '[,']!gpg --encrypt --default-recipient-self
    au BufWritePost,FileWritePost *.gpg
        \ silent u |
        \ set nobin
    au VimLeave *.gpg :!clear
augroup END

