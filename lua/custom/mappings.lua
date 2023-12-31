local M = {}

M.general = {
  n = {
    -- tmux nav
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
    -- buffer keymaps
    ["]b"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },

    ["[b"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },
    -- telescope keymaps
    ["<leader><space>"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    ["<leader>sg"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },

    -- quality of life keymaps 
    ["n"] = {"nzzzv", "central search control downwards"},
    ["N"] = {"Nzzzv", "central search control upwarads"},
    ["<C-d>"] = {"<C-d>zz", "central half page down"},
    ["<C-u>"] = {"<C-u>zz", "central half page up"},

    -- lsp keymaps
    ["<space>li"] = {"<cmd> LspInfo<CR>", "LSP info"},
    ["<space>lp"] = {"<cmd> LspStop<CR>", "LSP stop"},
    ["<space>lo"] = {"<cmd> LspStart<CR>", "LSP start"},
    ["<space>lr"] = {"<cmd> LspRestart<CR>", "LSP restart"},
  },
  i = {
    ["jk"] = {"<ESC>", "escape insert mode"}
  },

  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "moving highlighted text downwards"},
    ["K"] = { ":m '<-2<CR>gv=gv", "moving highlighted text downwards"},
    [">"] = { ">gv", "maintain highlight after indent forward"},
    ["<"] = { "<gv", "maintain highlight after indent backward"},
  },

  x = {
    ["<leader>p"] = { "\"_dP"}
  }
}
M.dap = {
  plugin = true,
  n = {
    -- debugging shortcuts
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>", "toggle breakpoint"},
    ["<leader>dc"] = { function() require('dap').continue() end, "launch debugger" },
    ["<leader>dsi"] = { function() require('dap').step_into() end, "step into" },
    ["<leader>dso"] = { function() require('dap').step_over() end, "step over" },
    ["<leader>dr"] = { function() require('dap').repl_open() end, "open repl" },
    },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end, "testing python method"
    }
  }
}

M.lspconfig = {
  plugin = true,
  n = {
    -- lsp keymaps
    ["<space>li"] = {"<cmd> LspInfo<CR>", "LSP info"},
    ["<space>lp"] = {"<cmd> LspStop<CR>", "LSP stop"},
    ["<space>lo"] = {"<cmd> LspStart<CR>", "LSP start"},
    ["<space>lr"] = {"<cmd> LspRestart<CR>", "LSP restart"},
  }
}

return M
