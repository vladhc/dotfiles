local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'MonokaiPro (Gogh)'

config.ssh_domains = {
  {
    name = 'dl',
    remote_address = 'dl',
  },
}
return config
