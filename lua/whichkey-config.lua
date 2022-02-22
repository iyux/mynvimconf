local wk = require("which-key")

wk.setup({
 plugins = {
    marks = false, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
  }
})

wk.register({
  -- search
  ["<leader>"] = {
    h = { "<cmd>Telescope help_tags<cr>", "search vim manual" },
    m = { "<cmd>Telescope keymaps<cr>", "list keymaps" },

    -- " 使用 <leader> [number] 切换到第 [number] 个 buffer
    ["1"] = { "<cmd>BufferLineGoToBuffer 1<CR>",  "jump to buffer 1"},
    ["2"] = { "<cmd>BufferLineGoToBuffer 2<CR>",  "jump to buffer 2"},
    ["3"] = { "<cmd>BufferLineGoToBuffer 3<CR>",  "jump to buffer 3"},
    ["4"] = { "<cmd>BufferLineGoToBuffer 4<CR>",  "jump to buffer 4"},
    ["5"] = { "<cmd>BufferLineGoToBuffer 5<CR>",  "jump to buffer 5"},
    ["6"] = { "<cmd>BufferLineGoToBuffer 6<CR>",  "jump to buffer 6"},
    ["7"] = { "<cmd>BufferLineGoToBuffer 7<CR>",  "jump to buffer 7"},
    ["8"] = { "<cmd>BufferLineGoToBuffer 8<CR>",  "jump to buffer 8"},
    ["9"] = { "<cmd>BufferLineGoToBuffer 9<CR>",  "jump to buffer 9"},
    ["0"] = { "<cmd>BufferLineGoToBuffer 10<CR>", "jump to buffer 10"},

    -- 窗口相关
    w = {name="+windns",
      ["1"] = { "<cmd>1wincmd  w <cr>", "jump to window 1"},
      ["2"] = { "<cmd>2wincmd  w <cr>", "jump to window 2"},
      ["3"] = { "<cmd>3wincmd  w <cr>", "jump to window 3"},
      ["4"] = { "<cmd>4wincmd  w <cr>", "jump to window 4"},
      ["5"] = { "<cmd>5wincmd  w <cr>", "jump to window 5"},
      ["6"] = { "<cmd>6wincmd  w <cr>", "jump to window 6"},
      ["7"] = { "<cmd>7wincmd  w <cr>", "jump to window 7"},
      ["8"] = { "<cmd>8wincmd  w <cr>", "jump to window 8"},
      ["9"] = { "<cmd>9wincmd  w <cr>", "jump to window 9"},
      ["0"] = { "<cmd>10wincmd w <cr>", "jump to window 0"},
      g = { "<cmd>vsp<cr>", "vertical split window"},
      v = { "<cmd>sp<cr>", "horizontal split window"},
      m = { "<cmd>only<cr>", "maximize current window"},
      u = { "<cmd>UndotreeToggle<cr>", "undo tree"},
      n = {":Vista!!<cr>", "toggle vista navigator"},
      ["<"] = {"<cmd>vertical resize -3<cr>", "vertical resize -3"},
      [">"] = {"<cmd>vertical resize +3<cr>", "vertical resize +3"},
      ["-"] = {"<cmd>resize -3<cr>", "resize -3"},
      ["+"] = {"<cmd>resize +3<cr>", "resize +3"},

      },

    -- 搜索相关
    s = {name = "+search",
       a = { "<cmd>Telescope coc code_actions<cr>", "search coc code action"},
       b = { "<cmd>Telescope buffers<cr>", "search buffers" },
       c = { "<cmd>Telescope colorscheme<cr>", "search colorscheme" },
       d = { "<cmd>Telescope coc workspace_diagnostics<cr>", "show coc diagnostics" },
       e = { "<cmd>Telescope bookmarks<cr>", "searcher browser bookmarks" },
       f = { "<cmd>Telescope find_files<cr>", "search File" },
       g = { "<cmd>Telescope live_grep<cr>", "live grep" },
       G = { "<cmd>Telescope grep_string<cr>", "live grep cursor word" },
       o = { "<cmd>call Outline()<cr>", "search symbols in file" },
       s = { "<cmd>Telescope coc workspace_symbols<cr>", "search symbols in project" },
       P = {"<cmd>lua require('spectre').open_visual({select_word=true})<CR>",
         "search cursor word in project"},
       p = {"<cmd>lua require('spectre').open()<CR>", "search in project"}
    },

    S = { ":lua require('spectre').open_visual()<cr>", "search"},


    ['a'] = {
      name = "+misc",
      s = { "<cmd>SourcetrailStartServer<cr>", "start sourcetrail server"},
      a = { "<cmd>SourcetrailActivateToken<cr>", "activate sourcetrail server"},
      r = { "<cmd>SourcetrailRefresh<cr>", "sourcetrail refresh"},
      t = { "<Plug>(coc-translator-p)", "translate current word"},
    },
    ['b'] = {
      name = "+buffer",
      ["c"] = { "<cmd>BWipeout other<cr>", "clear other buffers"},
      ["d"] = { "<cmd>bdelete %<cr>", "clear current buffers"},
    },
    ['l'] = {
      name = "+language",
      c = { "<cmd>Commentary<cr>", "comment code"},
      r = { "<cmd>call QuickRun()<cr>", "run code"},
      f = { "<Cmd>call CocAction('format')<CR>", "format current buffer"},
      n = { "<Plug>(coc-rename)", "rename"},
    },
    ["q"] = { "<cmd>xa<cr>", "save all buffer and close vim"},
    ["x"] = { "<Cmd>FloatermNew ipython<CR>", "calculated"},
    ["g"] = {
      name = "+git",
      m = { "<cmd>GitMessenger<cr>", "show git blame of current line"},
      s = { "<cmd>FloatermNew tig status<cr>", "git status"},
      b = { "<cmd>Git blame<cr>", "git blame"},
      c = { "<cmd>Git commit<cr>", "git commit"},
      l = { "<cmd>FloatermNew tig %<cr>", "log of file"},
      L = { "<cmd>FloatermNew tig<cr>", "log of project"},
      p = { "<cmd>Git push<cr>", "git push"},
      a = { "<cmd>Git add -A<cr>", "git stage all changes"},
      i = { "<cmd>Octo issue list<cr>", "list github issue" },
    },
    ["t"] = {
      name = "+toggle",
      ["8"] = {"<cmd>:let &cc = &cc == '' ? '80' : ''<cr>", "80 line"},
      ["s"] = {"<cmd>:set spell!<cr>", "spell check"},
      ["w"] = {"<cmd>:set wrap!<cr>", "wrap line"},
      ["h"] = {"<cmd>noh<cr>", "Stop the highlighting"},
      ["M"] = {"<cmd>TableModeToggle<cr>", "markdown table edit mode"},
    },
    ["f"] = {
      name = "+file",
      o = {"<cmd>NvimTreeFindFile<cr>", "open file in dir"},
      s = {"<cmd>w<cr>", "save file"},
      t = {"<cmd>NvimTreeToggle<cr>", "toggle file tree"}
    },
  },


  q = { "<cmd>q<cr>", "close window"},
  ["<tab>"] = {":wincmd w<cr>", "switch window"},
})
