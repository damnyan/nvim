return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        builtin = require('telescope.builtin')
    end,

    keys = {
        {
            "<leader>pf",
            function ()
                builtin.find_files()
            end
        },
        {
            "<C-p>",
            function ()
                builtin.git_files()
            end
        },
        {
            "<leader>ps",
            function ()
                builtin.grep_string({ search = vim.fn.input("Grep > ") })
            end
        },
    }
}
