Setup
========

As with everything else, this requires git!

    git clone https://github.com/stevemacn/dotfiles

vim
---

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

    vim +BundleInstall +qall
    
zsh
---

To Do

app config
---

{appname} should be the name of your app (do not type brackets!)

    mv config /etc/init.d/{appname}
    chmod 700 /etc/init.d/{appname}
    vim /etc/init.d/appname  //change to your specific configuration
    
    service {appname} start 
    
Debugging
---

Make sure iterm 2 has solarized as it's default colors.
    

