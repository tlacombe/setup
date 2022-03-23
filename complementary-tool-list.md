# System setup
## Typeahead in nautilus (ubuntu 18, 20)
A typeahead feature for faster browsing in repositories. 
Info found <a href='https://www.omgubuntu.co.uk/2018/05/enable-nautilus-type-ahead-search-ubuntu'>here</a>.
Use
```
sudo add-apt-repository ppa:lubomir-brindza/nautilus-typeahead
```
and then
```
sudo apt dist-upgrade
```
Finally, methods say to run `nautilus -r` but it doesn't work for me. So I just reboot the system and it seems fine.

## Wheel scrolling to switch files
This was a Unity setting (Ubuntu 16), removed in 18+, but I am super used to it. 
Info found <a href='https://askubuntu.com/questions/966887/switching-between-windows-with-scroll-wheel-on-ubuntu-dock'>here</a>.
 Simply run the following: 
```
gsettings set org.gnome.shell.extensions.dash-to-dock scroll-action 'cycle-windows'
```
but this may not work in some situation (no idea why). Using 
```
dconf write /org/gnome/shell/extensions/dash-to-dock/scroll-action "'cycle-windows'"
```
make it works then.

# Firefox extensions
## Markdown Viewer.
What: A markdown viewer to conviniently read .md files with Firefox on local.
HowTo: install the app from Firefox add-on manager. Then, one must create a file 
`~/.local/share/mime/packages/text-markdown.xml`
containing the following
```
<?xml version="1.0"?>
<mime-info xmlns='http://www.freedesktop.org/standards/shared-mime-info'>
  <mime-type type="text/plain">
    <glob pattern="*.md"/>
    <glob pattern="*.mkd"/>
    <glob pattern="*.markdown"/>
  </mime-type>
</mime-info>
```
and run
`update-mime-database ~/.local/share/mime`
Info found here: <https://superuser.com/questions/696361/how-to-get-the-markdown-viewer-addon-of-firefox-to-work-on-linux>


# Latex
## Editor: texmaker
Although `vim` might provide powerful editing for latex files, for now I am really used to texmaker which is fully satisfactory. Some nice configuration tricks:
- Can define the main document as `master`.
- TBC.

## Nice packages
- `cleverref` is super cool. Automatically detect the environment, so that one can type `In \cref{blabla}`, which will render "In Proposition X", if `blabla` is a label in a `Proposition` environment.
- TBC.

# Email client: Thunderbird
## Config
TBC.
## Add-on:
- Synchronization with Google Agenda is very useful. Details to be added.

# Text editor : Gedit
## Config : 
Solarized dark if the screen is anti-reflective, Classic otherwise (light reflects too much on dark background imho). 

# Bibliography manager : Zotero (with sync with Firefox). 

To install it properly on ubuntu, follow the instructions [there](https://www.zotero.org/support/installation). For small details: copy the repo that contains the `zotero` script doing
```
sudo cp -r Zotero_linux-x86_64 /opt/zotero   
```
then
```
cd /opt/zotero/
sudo ./set_launcher_icon
ln -s /opt/zotero/zotero.desktop ~/.local/share/applications/zotero.desktop
```

# Files sync manager : Dropbox

Todo.
