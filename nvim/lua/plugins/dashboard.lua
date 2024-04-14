return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            theme = 'doom',
            config = {
                header = {
                        '',
                        '',
                        '',
                        '',
                        '',
                        ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
                        ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
                        ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
                        ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
                        ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
                        ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
                        '',
                        '',
                }, --your header
                center = {
                        {
                            icon = ' ',
                            desc = 'New file             ',
                            key = 'a',
                            action = ':enew'
                        },
                        {
                            icon = ' ',
                            desc = 'Find a file          ',
                            key = 's',
                            action = ':Telescope find_files'
                        },
                        {
                            icon = '󰱼 ',
                            desc = 'Recently opened files',
                            key = 'd',
                            action = ':Telescope oldfiles'
                        },
                        {
                            icon = ' ',
                            desc = 'Edit config',
                            key = 'z',
                            action = ':e ~/.config/nvim/init.lua'
                        },
                        {
                            icon = '󰈆 ',
                            desc = 'Exit',
                            key = 'q',
                            action = ':e'
                        }
                    },
                footer = {}  --your footer
            }
        }
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
