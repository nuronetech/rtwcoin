
Debian
====================
This directory contains files used to package ariad/aria-qt
for Debian-based Linux systems. If you compile ariad/aria-qt yourself, there are some useful files here.

## aria: URI support ##


aria-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install aria-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your ariaqt binary to `/usr/bin`
and the `../../share/pixmaps/aria128.png` to `/usr/share/pixmaps`

aria-qt.protocol (KDE)

