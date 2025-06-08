# Scripts
This is where I am putting all of my bash scripts that I use often to keep them organized, I plan on updating this readme as I make new scripts. Along with this if i feel it is needed I will add usage tips.

## debtap-auto.sh
This scripts is mostly made to save time, as in my experience [debtap](https://github.com/helixarch/debtap) can take a minute to do I often found myself going to get a drink or just not paying attention to the window. This script was made to remove some of that waiting time. This script is disto-sensitive but by default it is make for arch linux so it uses the pacman package manager.
usage:
```bash
sudo ./debtap-auto.sh input.deb
```

also by default this updates deptap's database you can remove this from the code if you wish by deleting this line:
```bash
sudo debtap -u
```
