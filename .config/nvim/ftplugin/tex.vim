"if filereadable('Makefile')
"  setlocal makeprg=make
"endif
set errorformat=%f:%l:\ %m

ab bbff \textbf{}<Left>
ab iitt \textit{}<Left>
ab mk	$$<Left>
ab dk \[<CR><BS><CR><BS>.\]<Up>
ab ct \cite{}<Left><C-X><C-]>

ab frame_ \begin{frame}{}<CR><CR>\end{frame}<Up>
ab item_  \begin{itemize}{}<CR>\item<CR>\end{itemize}<Up>

ab figure_ \begin{figure}[htpb]<CR>\includegraphics[width=\linewidth]{}<CR>\caption{This is an image}<CR>\label{img:}<CR>\end{figure}<UP><UP><UP>


