require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pylyzer", "rust-analyzer" }
})


local on_attach = function(_, _)
  vim.keymap.set('n', '<leaader>rm', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.bug.hover, {})
end


require("lspconfig").pylyzer.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").lua_ls.setup {
  on_attach = on_attach
}
