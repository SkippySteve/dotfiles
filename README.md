# dotfiles

Omarchy (Hyprland, scrolling layout) config, managed with [chezmoi](https://chezmoi.io).

Restore on a fresh Omarchy install:

    chezmoi init --apply SkippySteve/dotfiles

Third-party Omarchy themes and shell plugins are pulled from their upstream git
repos via `.chezmoiexternal.toml` rather than stored here.

Save changes after editing a tracked file:

    chezmoi re-add && chezmoi git -- add -A && chezmoi git -- commit -m "update" && chezmoi git -- push
