# zxf4399 Neo/vim config

### Plugin: Denite

| Key   | Mode | Action
| ----- |:----:| ------------------
| <kbd>;r</kbd> | 𝐍 | Resumes last Denite window
| <kbd>;f</kbd> | 𝐍 | File search
| <kbd>;g</kbd> | 𝐍 | Grep search
| <kbd>;b</kbd> | 𝐍 | Buffers
| <kbd>;i</kbd> | 𝐍 | Old files
| <kbd>;x</kbd> | 𝐍 | Most recently used files (MRU)
| <kbd>;d</kbd> | 𝐍 | Directories and MRU
| <kbd>;v</kbd> | 𝐍 𝐕 | Yank history
| <kbd>;l</kbd> | 𝐍 | Location list
| <kbd>;q</kbd> | 𝐍 | Quick fix
| <kbd>;m</kbd> | 𝐍 | Marks
| <kbd>;n</kbd> | 𝐍 | Dein plugin list
| <kbd>;j</kbd> | 𝐍 | Jump points and change stack
| <kbd>;u</kbd> | 𝐍 | Junk files
| <kbd>;o</kbd> | 𝐍 | Outline tags
| <kbd>;s</kbd> | 𝐍 | Sessions
| <kbd>;t</kbd> | 𝐍 | Tag list
| <kbd>;p</kbd> | 𝐍 | Jumps
| <kbd>;h</kbd> | 𝐍 | Help
| <kbd>;w</kbd> | 𝐍 | Memo list
| <kbd>;z</kbd> | 𝐍 | Z (jump around)
| <kbd>;;</kbd> | 𝐍 | Command history
| <kbd>;/</kbd> | 𝐍 | Buffer lines
| <kbd>;\*</kbd> | 𝐍 | Search word under cursor with lines
| <kbd>Space</kbd>+<kbd>gt</kbd> | 𝐍 | Find tags matching word under cursor
| <kbd>Space</kbd>+<kbd>gf</kbd> | 𝐍 | Find files matching word under cursor
| <kbd>Space</kbd>+<kbd>gg</kbd> | 𝐍 𝐕 | Grep word under cursor
| **Within _Denite_ window** ||
| <kbd>jj</kbd> or <kbd>Escape</kbd> | 𝐈 | Leave Insert mode
| <kbd>i</kbd> or <kbd>/</kbd> | 𝐍 | Enter Insert mode (filter input)
| <kbd>q</kbd> or <kbd>Escape</kbd> | 𝐍 | Exit denite window
| <kbd>Tab</kbd> or <kbd>Shift</kbd>+<kbd>Tab</kbd> | 𝐈 | Next/previous candidate
| <kbd>Space</kbd> | 𝐍 | Select candidate entry
| <kbd>dd</kbd> | 𝐍 | Delete entry
| <kbd>p</kbd> | 𝐍 | Preview entry
| <kbd>st</kbd> | 𝐍 | Open in a new tab
| <kbd>sg</kbd> | 𝐍 | Open in a vertical split
| <kbd>sv</kbd> | 𝐍 | Open in a split
| <kbd>'</kbd> | 𝐍 | Quick-move
| <kbd>r</kbd> | 𝐍 | Redraw
| <kbd>yy</kbd> | 𝐍 | Yank
| <kbd>Tab</kbd> | 𝐍 | List and choose action

### Plugin: Defx

| Key   | Mode | Action
| ----- |:----:| ------------------
| <kbd>;e</kbd> | 𝐍 | Open file-explorer (toggle)
| <kbd>;a</kbd> | 𝐍 | Focus current file in file-explorer
| **Within _Defx_ window** ||
| <kbd>j</kbd> or <kbd>k</kbd> | 𝐍 | Move up and down the tree
| <kbd>l</kbd> or <kbd>Return</kbd> | 𝐍 | Toggle collapse/expand directory or open file
| <kbd>h</kbd> | 𝐍 | Collapse directory tree
| <kbd>t</kbd> | 𝐍 | Expand directory tree recursively
| <kbd>.</kbd> | 𝐍 | Toggle hidden files
| <kbd>Space</kbd> | 𝐍 | Select entry
| <kbd>\*</kbd> | 𝐍 | Invert selection (select all)
| <kbd>&</kbd> or <kbd>\</kbd> | 𝐍 | Change into current working directory
| <kbd>~</kbd> | 𝐍 | Change to user home directory
| <kbd>u</kbd> or <kbd>Backspace</kbd> | 𝐍 | Change into parent directory
| <kbd>u</kbd> <kbd>2</kbd>/<kbd>3</kbd>/<kbd>4</kbd> | 𝐍 | Change into parent directory count
| <kbd>st</kbd> | 𝐍 | Open file in new tab
| <kbd>sv</kbd> | 𝐍 | Open file in a horizontal split
| <kbd>sg</kbd> | 𝐍 | Open file in a vertical split
| <kbd>N</kbd> | 𝐍 | Create new directories and/or files
| <kbd>K</kbd> | 𝐍 | Create new directory
| <kbd>c</kbd> / <kbd>m</kbd> / <kbd>p</kbd> | 𝐍 | Copy, move, and paste
| <kbd>r</kbd> | 𝐍 | Rename file or directory
| <kbd>dd</kbd> | 𝐍 | Trash selected files and directories
| <kbd>y</kbd> | 𝐍 | Yank path to clipboard
| <kbd>w</kbd> | 𝐍 | Toggle window size
| <kbd>]g</kbd> | 𝐍 | Next dirty git item
| <kbd>[g</kbd> | 𝐍 | Previous dirty git item
| <kbd>x</kbd> or <kbd>gx</kbd> | 𝐍 | Execute associated system application
| <kbd>gd</kbd> | 𝐍 | Open git diff on selected file
| <kbd>gl</kbd> | 𝐍 | Open terminal file explorer with tmux
| <kbd>gr</kbd> | 𝐍 | Grep in current position
| <kbd>gf</kbd> | 𝐍 | Find files in current position
