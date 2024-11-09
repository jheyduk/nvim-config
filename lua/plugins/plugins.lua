return {
  -- Treesitter für Syntax-Highlighting
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- LSP-Integration
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim", build = ":MasonUpdate" },
  { "williamboman/mason-lspconfig.nvim" },

  -- Autocompletion
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "L3MON4D3/LuaSnip" },

  -- ChatGPT-Integration
  { "jackMort/ChatGPT.nvim", dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" }, build = "make" },

  -- Allgemein nützliche Plugins
  { "nvim-lua/plenary.nvim" },
  { "nvim-lualine/lualine.nvim" },
}

