return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end
  },
  {
    "neoclide/coc.nvim",
    enabled = false,
    lazy = false,
    branch = "release",
    config = function()
      require("configs.coc").config()
    end
  },
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      require "transparent"
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "pangloss/vim-javascript",
    lazy = false,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server", "stylua",
        "html-lsp", "css-lsp", "prettier",
        "json-lsp", "eslint-lsp", "typescript-language-server"
      },
    },
  },
  {
    'dense-analysis/ale',
    lazy = false,
    config = function()
      -- Configuration goes here.
      local g = vim.g
      g.ale_linters = {
        javascript = { "eslint" },
        typescript = { "eslint" }
      }
    end
  }
  -- These are some examples, uncomment them if you want to see them work
  --
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
