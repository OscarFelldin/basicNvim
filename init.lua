--[[
==============================
Usage
==============================
'n': normal mode
'v': visual mode
'i': insert mode

Cheat-sheet (default vim/nvim) ==================

    'i' <C-p> - Spell/variable/function suggestions
    'n' <C-]> - Go to definition
    'n' <C-]> - Go to definition

Basic Movement
    h: Move cursor left
    j: Move cursor down
    k: Move cursor up
    l: Move cursor right
    w: Move to beginning of next word
    b: Move to beginning of previous word
    e: Move to end of word
    $: Move to end of line
    0: Move to beginning of line
    ^: Move to first non-blank character of line
    gg: Move to first line
    G: Move to last line

File jumping
    'n', <C-]>      " Jump to definition using ctags
                    " Requires ctags setup:
                    " 1. In terminal at root of project, run: ctags -R --exclude=.git --exclude=node_modules .
                    " 2. In Vim, place the cursor on a variable/function and press Ctrl+] in normal mode

Editing Commands
    i: Enter Insert mode at cursor position
    I: Enter Insert mode at beginning of line
    a: Enter Insert mode after cursor
    A: Enter Insert mode at end of line
    o: Insert new line below current line
    O: Insert new line above current line
    x: Delete character under cursor
    dd: Delete entire line
    D: Delete from cursor to end of line
    C: Change to the end of line
    u: Undo last change
    Ctrl+r: Redo last change
    dt <character>: Delete to character
    di <character>: Delete inside characters (di " = "deletes whats inside here")
    da <character>: Delete around characters (da " = "deletes whats inside here and including quotations")
    ct <character>: Change to character
    ci <character>: Change inside characters (ci " = "Changes whats inside here")
    ca <character>: Change around characters (ca " = "Changes whats inside here and including quotations")
    *: Highlights word currently on
    z=: Gives list of spell suggestions for misspelled word under cursor

Visual Mode
    v: Enter Visual mode (character-wise)
    V: Enter Visual mode (line-wise)
    y: Yank (copy) selected text
    d: Delete selected text
    c: Change selected text

File Management
    :e filename: Open file for editing
    :w: Save current buffer
    :q: Quit Neovim
    :wq: Write and quit
    :x: Write and quit (only if changes were made)

Splits and Tabs
    :split: Split window horizontally
    :vsplit: Split window vertically
    :tabnew: Open new tab
    gt: Go to next tab
    gT: Go to previous tab

Search and Replace
    /: Search forward
    ?: Search backward
    n: Next match
    N: Previous match
    :%s/old/new/gc: Replace all occurrences of 'old' with 'new'

Windows
    'n', <C-w>s       " Make new windows (horizontal)
    'n', <C-w>v       " Make new window (Vertical)
    'n', <C-w>h       " Make windows to the left active
    'n', <C-w>j       " Make window below active
    'n', <C-w>k       " Make windows above active
    'n', <C-w>l       " Make windows to the right active
    'n', <C-w>h       " Make windows to the left active
--]]

-- ==============================
-- General Settings - Research any of these with :help <setting>
-- ==============================
-- leader key to be space for keymap shortcuts
vim.g.mapleader = " "

-- Enable syntax highlighting
vim.cmd("syntax enable")

-- Set colorscheme
vim.cmd("colorscheme lunaperche")

-- Remove banner in netrw
-- vim.o.netrw_banner = 0

-- Line numbers
vim.opt.number = true          -- Show absolute line numbers
vim.opt.relativenumber = true  -- Show relative line numbers
vim.opt.mouse = "a"            -- Enable mouse in all modes

-- Tabs and Indentation
vim.opt.expandtab = true       -- Convert tabs to spaces
vim.opt.tabstop = 4            -- Number of spaces tabs count for
vim.opt.shiftwidth = 4         -- Number of spaces to use for autoindent
vim.opt.softtabstop = 4        -- Number of spaces a tab uses in editing
vim.opt.autoindent = true      -- Auto-indent new lines
vim.opt.smartindent = true     -- Automatically indent based on code structure

-- Search Settings
vim.opt.ignorecase = true      -- Ignore case when searching
vim.opt.smartcase = true       -- Override 'ignorecase' if search contains uppercase
vim.opt.incsearch = true       -- Show matches as you type
vim.opt.hlsearch = true        -- Highlight search results

-- Wrapping
vim.opt.wrap = false           -- Disable line wrapping

-- Spelling
vim.opt.spell = true                    -- Enables spelling
vim.opt.spelllang = 'en_us,sv_se'       -- Enables spelling

-- Scrolling
vim.opt.scrolloff = 8          -- Keep 8 lines above/below the cursor when scrolling

-- Split Behavior
vim.opt.splitbelow = true      -- Horizontal splits open below the current window
vim.opt.splitright = true      -- Vertical splits open to the right of the current window

-- Clipboard
vim.opt.clipboard = "unnamedplus"  -- Use the system clipboard

-- Highlighting
vim.opt.cursorline = true      -- Highlight the line the cursor is on

-- Backup and Swap Files
vim.opt.backup = false         -- Don't keep a backup file
vim.opt.writebackup = false    -- Don't create a backup before overwriting a file
vim.opt.swapfile = false       -- Disable swap file

-- Show Whitespace
vim.opt.list = true            -- Show hidden characters (tabs, spaces, etc.)
vim.opt.listchars = { tab = ">-", trail = "~", extends = ">", precedes = "<" }

-- Status Line
vim.opt.laststatus = 2         -- Always show the status line
vim.opt.ruler = true           -- Show the cursor position all the time

-- Command Display
vim.opt.showcmd = true         -- Show partial command in the last line of the screen

-- Command Line Completion
vim.opt.wildmenu = true        -- Command-line completion enhanced

-- Redraw and Response
vim.opt.lazyredraw = true      -- Don't redraw while executing macros or commands
vim.opt.showmatch = true       -- Highlight matching parentheses, brackets, etc.
vim.opt.matchtime = 1          -- Delay for showing matching parentheses
vim.opt.ttyfast = true         -- Faster redrawing for slow terminals
vim.opt.updatetime = 300       -- Faster completion

-- Visual Bells
vim.opt.visualbell = true      -- No beep, but a visual flash

-- Auto Read File Changes
vim.opt.autoread = true        -- Reload files changed outside of Vim

-- Command History
vim.opt.history = 1000         -- Keep a longer command history

-- Make background transparent
vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]


-- ==============================
-- Keymaps 
-- ==============================
-- === Normal Mode Mappings
-- Files and buffers
vim.keymap.set('n', '<leader>f', ':files<CR>')
vim.keymap.set('n', '<leader>b', ':buffer ')        -- writes buffer in cli to tab can be used to navigate buffers

-- Tabs
vim.keymap.set('n', '<leader>t', ':tabnew<CR>')     -- New tab
vim.keymap.set('n', '<Tab>', ':tabnext<CR>')        -- Next tab
vim.keymap.set('n', '<S-Tab>', ':tabprevious<CR>')  -- Prev tab

-- Find and Replace
vim.keymap.set('n', '<leader>r', ':%s/ / /gc') 

-- Open file tree navigator
vim.cmd([[
    command! CustomLexplore execute 'Lexplore' | vertical resize 40
]])
vim.keymap.set('n', '<leader>e', ':CustomLexplore<CR>') 

-- Redo
vim.keymap.set('n', '<S-u>', ':redo<CR>') 

-- Spellcheck
vim.keymap.set('n', '<leader>s', ':spell!<CR>') 

-- Windows resizing
vim.keymap.set('n', '<C-k>', ':resize +5<CR>')
vim.keymap.set('n', '<C-j>', ':resize -5<CR>')
vim.keymap.set('n', '<C-h>', ':vertical resize +5<CR>')
vim.keymap.set('n', '<C-l>', ':vertical resize -5<CR>')
