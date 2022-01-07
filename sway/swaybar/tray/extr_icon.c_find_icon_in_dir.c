
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* find_icon_in_subdir (char*,char*,char*,char*) ;

char *find_icon_in_dir(char *name, char *dir, int *min_size, int *max_size) {
 char *icon = find_icon_in_subdir(name, dir, "", "");
 if (icon) {
  *min_size = 1;
  *max_size = 512;
 }
 return icon;

}
