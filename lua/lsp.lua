local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local cmp = require("cmp")

mason.setup()
mason_lspconfig.setup({
  ensure_installed = { "lua_ls", "pyright", "tsserver", "rust_analyzer" }, -- LSPs hinzufügen
})

mason_lspconfig.setup_handlers({
  function(server)
    lspconfig[server].setup({
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
    })
  end,
})

-- Autocompletion
cmp.setup({
  mapping = {
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
  }),
})

