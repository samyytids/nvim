require 'nvim-treesitter.configs'.setup {
  ensure_installed = {'c', 'lua', 'rust', 'ruby', 'vim', 'python'},
  sync_installed = false, 
  auto_installed = true, 
  highlight = {
    enable = true,
  },
}
