return {{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate",

 config = function()
require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "xml", "json", "yaml", "html", "c", "lua", "vim", "vimdoc", "query", "ruby", "css", "javascript", "typescript" },

    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,

        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
    },
}

vim.treesitter.language.register('xml', { 'svg', 'xslt' })

 end

},
  {
    "nvim-treesitter/playground"}}
