-- ==============================
-- General Settings
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

-- Windows resizing
vim.keymap.set('n', '<C-k>', ':resize +5<CR>')
vim.keymap.set('n', '<C-j>', ':resize -5<CR>')
vim.keymap.set('n', '<C-h>', ':vertical resize +5<CR>')
vim.keymap.set('n', '<C-l>', ':vertical resize -5<CR>')
