https://dannyda.com/2020/08/16/how-to-create-shortcut-icon-for-jupyter-jupyterlab-jupyter-notebook-in-linux-debian-ubuntu-kali-linux-how-to-create-desktop-shortcuts-in-linux/

[Desktop Entry]
Name=Jupyter Lab
Comment=Start Jupyter Lab server
Exec=gnome-terminal --tab -- /bin/bash -c '/home/mis1/anaconda3/bin/jupyterlab;bash'
Icon=/home/mis1/anaconda3/lib/python3.9/site-packages/anaconda_navigator/static/images/jupyterlab-icon-1024x1024.png
Type=Application
StartupNotify=true
StartupWMClass=jupyter-lab
Actions=open-browser

[Desktop Action open-browser]
Name=Open in browser
Exec=xdg-open http://localhost:8888/lab

I believe the Gnome Terminal runs bash (the GNU Bourne Again SHell) by default.

Actually it probably runs whatever shell is specified for your account in /etc/passwd

On startup bash goes through ~/.profile and ~/.bash_profile, that's why those variables get set.

So to recap: when you start Gnome Terminal, it starts your shell, and your shell goes through these scripts setting the environment variables.
Icon=/home/mis1/anaconda3/lib/python3.9/site-packages/anaconda_navigator/app/icons/Icon1024.png


[Desktop Entry]
Encoding=UTF-8
Name=notebooks
Exec=gnome-terminal -x sh -c '/home/mis1/anaconda3/bin/notebooks'
Icon=/home/mis1/anaconda3/notebooks.jpg
Categories=Development;
Terminal=False
StartupNotify=True

#!/usr/bin/env xdg-open
[Desktop Entry]
Name=Jupyter-Lab
Version=2.0
Type=Application
Exec='jupyter lab --app_dir= /home/mis1/src/jupyter-notebooks --preferred_dir /home/mis1/src/jupyter-notebooks'
Icon=/home/mis1/anaconda3/lib/python3.9/site-packages/anaconda_navigator/static/images/jupyterlab-icon-1024x1024.png
Path=/home/mis1/src/jupyter-notebooks
Comment=Open Jupyter Lab
Terminal=false

#!/usr/bin/env xdg-open
[Desktop Entry]
Name=Jupyter-Lab
Version=2.0
Type=Application
Exec=/home/mis1/anaconda3/bin/jupyter-lab
Icon=/home/mis1/anaconda3/lib/python3.9/site-packages/anaconda_navigator/static/images/jupyterlab-icon-1024x1024.png
Path=/home/mis1/src/jupyter-notebooks
Comment=Open Jupyter Lab
Terminal=false


jupyter lab --app_dir= /home/mis1/src/jupyter-notebooks --preferred_dir /home/mis1/src/jupyter-notebooks

https://dannyda.com/2020/08/16/how-to-create-shortcut-icon-for-jupyter-jupyterlab-jupyter-notebook-in-linux-debian-ubuntu-kali-linux-how-to-create-desktop-shortcuts-in-linux/

https://www.joelotz.com/blog/2021/creating-a-launch-shortcut-for-anaconda-on-ubuntu.html

[Desktop Entry]
Version=1.0
Type=Application
Name=Anaconda
Exec=/home/mis1/anaconda3/bin/anaconda-navigator
Icon=/home/mis1/anaconda3/lib/python3.9/site-packages/anaconda_navigator/app/icons/Icon1024.png
Terminal=false

[Desktop Entry]
Version=1.0
Type=Application
Name=Notebooks
Exec=/home/mis1/anaconda3/bin/notebooks
Icon=/home/mis1/anaconda3/lib/python3.9/site-packages/anaconda_navigator/app/icons/Icon1024.png
Terminal=true


https://askubuntu.com/questions/1238375/in-ubuntu-20-04-gnome-how-can-we-view-edit-app-launcher-properties


This is a GUI way you can create and manage all your apps launchers, this utility is called "MenuLibre"

It is on Ubuntu Repos

sudo apt install menulibre

this app will appear under gnome apps once installed

MenuLibre Screenshot

Here is the Link to MenuLibre official Website


https://unix.stackexchange.com/questions/103213/how-can-i-add-an-application-to-the-gnome-application-menu
https://askubuntu.com/questions/1184733/gnome-desktop-item-edit-command-not-found-on-ubuntu-19-10-and-later-even-with-t
gnome-desktop-item-edit --create-new /home/[your user name]/.local/share/applications

gnome-desktop-item-edit --create-new /home/mis1/.local/share/applications

https://practicaldatascience.co.uk/data-science/how-to-create-an-ubuntu-desktop-entry-to-run-jupyter
https://practicaldatascience.co.uk/data-science/how-to-create-an-ubuntu-desktop-entry-to-run-jupyter

git@github.com:brentgroves/ubuntu-train.git

https://askubuntu.com/questions/1026528/adding-custom-programs-to-favourites-of-ubuntu-dock

https://askubuntu.com/questions/884109/how-do-i-create-a-new-application-icon

[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Name=dbeaver-ce
GenericName=Universal Database Manager
Comment=Universal Database Manager and SQL Client.
Path=/home/mis1/anaconda3/bin/
Exec=/home/mis1/anaconda3/bin/notebooks
Icon=/usr/share/dbeaver-ce/dbeaver.png
Categories=IDE;Development
StartupWMClass=DBeaver
StartupNotify=true
Keywords=Database;SQL;IDE;JDBC;ODBC;MySQL;PostgreSQL;Oracle;DB2;MariaDB
MimeType=application/sql

jupyter lab --app_dir= /home/mis1/src/jupyter-notebooks --preferred_dir /home/mis1/src/jupyter-notebooks

[Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Application
Terminal=true
Name=notebooks
GenericName=Jupyter Notebooks
Comment=Create and Share Mobex IS training notebooks.
Path=/home/mis1/anaconda3/bin/
Exec=/bin/bash -c 'jupyter lab --app_dir= /home/mis1/src/jupyter-notebooks --preferred_dir /home/mis1/src/jupyter-notebooks'
Icon=/home/mis1/anaconda3/notebooks.jpg
Categories=IDE;Development
StartupNotify=true
Keywords=Notebooks;


[Desktop Entry]
Encoding=UTF-8
Name=notebooks
Exec=gnome-terminal -x sh -c '/home/mis1/anaconda3/bin/notebooks'
Icon=/home/mis1/anaconda3/notebooks.jpg
Categories=Development;
Terminal=False
StartupNotify=True


[Desktop Entry]
Encoding=UTF-8
Name=Jupyter
Exec=gnome-terminal -x sh -c 'docker start tensorflow_notebook;google-chrome http://127.0.0.1:8888'
Icon=/usr/share/applications/jupyter.png
Type=Application
Categories=Development;
Terminal=False
StartupNotify=True


This is fairly easy. First, make a desktop application file that follows the freedesktop.org spec, e.g.

[Desktop Entry]
Type=Application
Encoding=UTF-8
Name=MyApplication
Comment=My fancy new application
Exec=my_application
Icon=my_application.png
Terminal=false

If you want this to be usable by anyone on your system, put it in /usr/share/applications. For personal use only, you can put it in ~/.local/share/applications. Look in /usr/share/applications for other examples. Add your icon image to the /usr/share/icons directory, or I assume the ~/.local/share/icons, although I have not tried that last location myself.

Then, you can search for the application by name and drag it to the launcher in the usual way!


