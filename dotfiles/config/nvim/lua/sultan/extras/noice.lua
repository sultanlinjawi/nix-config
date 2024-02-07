local M = {
    "folke/noice.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
}

function M.config()
    require("noice").setup({
        -- -- -- routes = {
        -- -- --     {
        -- -- --         filter = { event = "notify", find = "No information available" },
        -- -- --         opts = { skip = true },
        -- -- --     },
        -- -- -- },
        -- -- presets = {
        -- --     lsp_doc_border = true,
        -- -- },
        -- lsp = {
        --     -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        --     override = {
        --         -- ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        --         -- ["vim.lsp.util.stylize_markdown"] = true,
        --         -- ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        --     },
        -- },
        -- -- you can enable a preset for easier configuration
        -- presets = {
        --     bottom_search = true, -- use a classic bottom cmdline for search
        --     -- command_palette = true, -- position the cmdline and popupmenu together
        --     long_message_to_split = true, -- long messages will be sent to a split
        --     inc_rename = false, -- enables an input dialog for inc-rename.nvim
        --     lsp_doc_border = false, -- add a border to hover docs and signature help
        --     -- lsp_doc_border = true, -- add a border to hover docs and signature help
        -- },
        lsp = {
            -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true,
            },

            signature = {
                enabled = false,
                auto_open = {
                    enabled = false,
                    trigger = false, -- Automatically show signature help when typing a trigger character from the LSP
                    luasnip = false, -- Will open signature help when jumping to Luasnip insert nodes
                    throttle = 50, -- Debounce lsp signature help request by 50ms
                },
                view = nil, -- when nil, use defaults from documentation
                opts = {}, -- merged with defaults from documentation
            },
        },
        presets = {
            bottom_search = true, -- use a classic bottom cmdline for search
            command_palette = true, -- position the cmdline and popupmenu together
            long_message_to_split = true, -- long messages will be sent to a split
            inc_rename = false, -- enables an input dialog for inc-rename.nvim
            lsp_doc_border = true, -- add a border to hover docs and signature help
        },
    })
end

return M