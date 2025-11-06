-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Moves text
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<C-Up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-Down>", ":m '>+1<CR>gv=gv")

-- Stackoverflow special
vim.keymap.set("n", "<leader>p", ":set invpaste paste?<CR>", { noremap = true, silent = true })

-- Clipboard
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true })
vim.api.nvim_set_keymap("i", "<C-v>", '<Esc>"+pa', { noremap = true })
