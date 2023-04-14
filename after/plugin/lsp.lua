local lsp = require('lsp-zero').preset({})

lsp.ensure_installed({
  'awk_ls',
  'bashls',
  'clangd',
  'cmake',
  'lua_ls',
  'pylsp',
  'rust_analyzer',
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
