return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    opts = { log_level = "DEBUG" },
    adapters = {
      acp = {
        codex = function()
          return require("codecompanion.adapters").extend("codex", {
            defaults = {
              auth_method = "chatgpt", -- "openai-api-key"|"codex-api-key"|"chatgpt"
            },
          })
        end,
      },
    },
  },
}
