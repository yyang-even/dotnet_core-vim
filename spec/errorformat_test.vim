if exists("current_compiler")
    unlet current_compiler
endif
source %:p:h:h/compiler/dotnet_core.vim

cgetfile %:p:h/error_file.txt

echomsg string(getqflist())
copen
