[//]: # ($FrauBSD: bhotkeys-xfce/README.md 2026-10-04 07:37:41 -0700 Devin Teske $)

# bhotkeys-xfce

Xfce's stock command shortcuts as rows in the bhotkeys chord list.

Xfce binds its own keys through xfconf: `Alt+F1` for the applications
menu, `Alt+F2` for the finder, `Ctrl+Alt+L` to lock, `Ctrl+Alt+T` for
a terminal, `Print`. This package ships one
[bhotkeys](https://github.com/FrauBSD/bhotkeys) plugin per shortcut,
each with `listen 0` and no command. bhotkeys does not listen for
them; Xfce still owns the key. The rows exist so the chord list under
Xfce shows every shortcut the session has, and so a user can turn one
off or move it from the same place as everything else.
`bhotkeys-xfce-apply` writes that choice to the xfconf property named
in each file, so Xfce's own keyboard settings agree.

The plugins are hidden (`session 0`) and off under every other
window manager.

Home: [FrauBSD/bhotkeys-xfce](https://github.com/FrauBSD/bhotkeys-xfce)

## Requirements

- `bhotkeys`
- Xfce (xfwm4, `xfconf-query`) at run time

## Build / install

```sh
make install    # PREFIX=/usr/local by default
```

Installs 16 plugin files into `${PREFIX}/share/bhotkeys/plugins.d`.

## Rows

| id | chord | Xfce action |
|---|---|---|
| xfce-apps | Alt+F1 | Applications menu |
| xfce-finder | Alt+F2 | Application finder |
| xfce-finder-full | Alt+F3 | Application finder window |
| xfce-run | Super+r | Run command |
| xfce-files | Super+e | File manager |
| xfce-files-alt | Ctrl+Alt+f | File manager |
| xfce-terminal | Ctrl+Alt+t | Terminal |
| xfce-lock | Ctrl+Alt+l | Lock screen |
| xfce-logout | Ctrl+Alt+Delete | Log out |
| xfce-menu | Ctrl+Escape | Desktop menu |
| xfce-display | Super+p | Display |
| xfce-taskmgr | Ctrl+Shift+Escape | Task manager |
| xfce-xkill | Ctrl+Alt+Escape | Kill window |
| xfce-shot | Print | Screenshot |
| xfce-shot-region | Shift+Print | Region screenshot |
| xfce-shot-window | Alt+Print | Window screenshot |

Each file carries a `# xfconf <property> <command>` comment that the
apply script reads; bhotkeys itself ignores it.
