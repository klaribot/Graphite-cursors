# Graphite cursors
This is a fork of an x-cursor theme originally made by [vinceliuice](https://github.com/vinceliuice), and inspired by [Graphite gtk theme](https://github.com/vinceliuice/Graphite-gtk-theme).
A couple years ago, I added a new theme to this cursor pack to complement my Gruvbox-themed Pop!_OS rice. Uploading my work here to this fork so I don't lose it.

## Installation
To install the cursor theme simply copy the compiled theme to your icons
directory. For local user installation:

```
./install.sh
```

For system-wide installation for all users:

```
sudo ./install.sh
```

Then set the theme with your preferred desktop tools.

## Building from source
You'll find everything you need to build and modify this cursor set in
the `src/` directory. To build the xcursor theme from the SVG source
run:

```
./build.sh
```

This will generate the pixmaps and appropriate aliases.
The freshly compiled cursor theme will be located in `dist/`

## Preview
![normal](preview-normal.png)
![nord](preview-nord.png)
