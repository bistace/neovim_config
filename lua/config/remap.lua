-- Change leader character to space
vim.g.mapleader = " "

-- Vim file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move things around when highlighted
vim.keymap.set("v", "?", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "J", ":m '<-2<CR>gv=gv")

-- Keep highlighted searched words in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Disable "Q"
vim.keymap.set("n", "Q", "<nop>")

-- Easy replacement of the current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
