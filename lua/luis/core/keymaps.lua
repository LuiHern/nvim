-- must happpen before plugins are required
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local key = vim.keymap

---------------------
-- General Keymaps
---------------------

-- jk to exit insert mode
key.set("i", "jk", "<ESC>")

-- save current file
key.set("n", "<leader>w", ":w<CR>")

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
key.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
key.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
key.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- vertical movement
key.set("n", "<C-d>", "<C-d>zz")
key.set("n", "<C-u>", "<C-u>zz")

-- horizontal movement
key.set("n", "H", "^")
key.set("n", "L", "$")

-- window management
key.set("n", "<leader>sv", "<C-w>v", {desc = "Split window vertically"} ) -- split window vertically
key.set("n", "<leader>sh", "<C-w>s", {desc = "Split windows horizontally"}) -- split windows horizontally
key.set("n", "<leader>se", "<C-w>=", {desc = "Split windows equal length"}) -- make split windows equal width and height
key.set("n", "<leader>sx", ":close<CR>", {desc = "Close current split window"}) -- close current split windows

key.set("n", "<leader>to", ":tabnew<CR>", {desc = "Open new tab"}) -- open new tab
key.set("n", "<leader>tx", ":tabclose<CR>", {desc = "Close current tab"}) -- close current tab
key.set("n", "<leader>tn", ":tabn<CR>", {desc = "Go to next tab"}) -- go to next tab
key.set("n", "<leader>tp", ":tabp<CR>", {desc = "Go to previous tab"}) -- go to previous tab


----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
key.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
key.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
key.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
key.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
key.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
key.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
key.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
key.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
key.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
key.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
key.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
key.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

