
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icon_theme {int dummy; } ;
struct dirent {char* d_name; } ;
typedef int list_t ;
typedef int DIR ;


 int closedir (int *) ;
 int * create_list () ;
 int list_add (int *,struct icon_theme*) ;
 int * opendir (char*) ;
 struct icon_theme* read_theme_file (char*,char*) ;
 struct dirent* readdir (int *) ;

__attribute__((used)) static list_t *load_themes_in_dir(char *basedir) {
 DIR *dir;
 if (!(dir = opendir(basedir))) {
  return ((void*)0);
 }

 list_t *themes = create_list();
 struct dirent *entry;
 while ((entry = readdir(dir))) {
  if (entry->d_name[0] == '.') continue;

  struct icon_theme *theme = read_theme_file(basedir, entry->d_name);
  if (theme) {
   list_add(themes, theme);
  }
 }
 closedir(dir);
 return themes;
}
