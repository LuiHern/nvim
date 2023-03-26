local opt = vim.opt

-- highlight on search
opt.hlsearch = false

-- make line numbers default
opt.number = true
opt.relativenumber = true

-- enable mouse mode
opt.mouse = "a"

-- clipboard
opt.clipboard = "unnamedplus"

-- enable break indent
opt.breakindent = true

-- tabs and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- save undo history
opt.undofile = true

-- case insentive searching
opt.ignorecase = true
opt.smartcase = true

-- keep signcolumn on by default
opt.signcolumn = "yes"

-- decrease update time
opt.updatetime = 250
opt.timeout = true
opt.timeoutlen = 500

-- better completion experience
opt.completeopt = "menuone,noselect"

-- line wrapping
opt.wrap = false

-- cursor line
opt.cursorline = false
