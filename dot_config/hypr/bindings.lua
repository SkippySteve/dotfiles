-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")
hl.unbind("SUPER + SHIFT + S")
o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- Scrolling layout: resize columns with colresize instead of window resize.
-- The default resize can't grow a column past the screen's right edge, so the
-- rightmost window could never be widened. Widths are fractions of the screen.
for _, key in ipairs({ "SUPER + code:20", "SUPER + code:21", "SUPER + ALT + code:20", "SUPER + ALT + code:21", "SUPER + CTRL + code:20", "SUPER + CTRL + code:21" }) do
  hl.unbind(key)
end
o.bind("SUPER + code:21", "Widen column", hl.dsp.layout("colresize +0.05"))
o.bind("SUPER + code:20", "Narrow column", hl.dsp.layout("colresize -0.05"))
o.bind("SUPER + ALT + code:21", "Widen column a little", hl.dsp.layout("colresize +0.015"))
o.bind("SUPER + ALT + code:20", "Narrow column a little", hl.dsp.layout("colresize -0.015"))
o.bind("SUPER + CTRL + code:21", "Widen column a lot", hl.dsp.layout("colresize +0.15"))
o.bind("SUPER + CTRL + code:20", "Narrow column a lot", hl.dsp.layout("colresize -0.15"))

-- Per-monitor workspaces (mmsbrggr.per-monitor-workspaces): SUPER+N acts on the focused screen
pcall(dofile, os.getenv("HOME") .. "/.config/omarchy/plugins/mmsbrggr.per-monitor-workspaces/hypr/init.lua")
