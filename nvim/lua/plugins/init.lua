return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
      },
    },
  },

  {
    'mrcjkb/rustaceanvim',
    version='^5',
    lazy=false,
  },
  {
    'rust-lang/rust.vim',
    ft="rust",
    init = function ()
      vim.g.rustfmt_autosave=1
    end
  },
  {
    'saecki/crates.nvim',
    ft={"toml"},
    config=function ()
      require("crates").setup{
        completion={

          cmp={
            enabled=true
          },
        },
      }
      require('cmp').setup.buffer({
        source={{name="crates"}}
      })
    end
  },
  {
    "shellRaining/hlchunk.nvim",
    event={"BufReadPre","BufNewFile"},
    config = function ()
      require "configs.chunk"
    end
  },
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy", -- Or `LspAttach`
    priority = 1000, -- needs to be loaded in first
    config = function()
        require "configs.inline-diagnostic"
    end
},
{
  "nvchad/minty",
  lazy = true,
  config = function()
    require "configs.minty"
  end,
},
{ "nvchad/menu",     lazy = true },

{ "nvchad/showkeys", cmd = "ShowkeysToggle", opts = { position = "top-center" } },

{ "nvchad/timerly",  cmd = "TimerlyToggle" }
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
