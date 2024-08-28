-- return {
--   {
--     "s1n7ax/nvim-terminal",
--     config = function()
--       vim.o.hidden = true
--       require("nvim-terminal").setup()
--     end,
--   },
-- }
--
--
return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      {
        "<leader>td",
        function()
          local Terminal = require("toggleterm.terminal").Terminal
          local term = Terminal:new({
            direction = "horizontal",
            size = 40,
            dir = "~/Documents",
            hidden = true,
          })
          term:toggle()
        end,
        desc = "Open a horizontal terminal at the Desktop directory",
      },
    },
    opts = {
      -- Configurações adicionais do toggleterm podem ser adicionadas aqui
    },
  },
}
