require('lualine').setup {
  options = {
     hide_filename_extension = true,   -- Hide filename extension when set to true.
      show_modified_status = true, -- Shows indicator when the buffer is modified.

      theme = 'nord',
      mode = 0, -- 0: Shows buffer name
                -- 1: Shows buffer index
                -- 2: Shows buffer name + buffer index
                -- 3: Shows buffer number
                -- 4: Shows buffer name + buffer number

      max_length = vim.o.columns * 2 / 3, -- Maximum width of buffers component,
                                          -- it can also be a function that returns
                                          -- the value of `max_length` dynamically.
      filetype_names = {
        TelescopePrompt = 'Telescope',
        dashboard = 'Dashboard',
        packer = 'Packer',
        fzf = 'FZF',
        alpha = 'Alpha'
      }, -- Shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } )

      buffers_color = {
        -- Same values as the general color option can be used here.
        active = 'lualine_{section}_normal',     -- Color for active buffer.
        inactive = 'lualine_{section}_inactive', -- Color for inactive buffer.
      },

      symbols = {
        modified = ' ●',      -- Text to show when the buffer is modified
        alternate_file = '#', -- Text to show to identify the alternate file
        directory =  '',     -- Text to show when the buffer is a directory
      },
    }
  }
