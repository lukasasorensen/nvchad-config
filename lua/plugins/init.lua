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
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css", "javascript", "typescript", "nvim", "LazyGit", "ale", "json", "tsx"
      },
      autotag = {
        enable = true,
      }
    },
  },
  {
    "https://github.com/tpope/vim-sleuth",
    event = "BufRead"
  }
}
