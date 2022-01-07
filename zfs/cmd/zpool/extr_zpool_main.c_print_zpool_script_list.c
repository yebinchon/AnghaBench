
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* gettext (char*) ;
 int print_zpool_dir_scripts (char*) ;
 int printf (char*,char*) ;
 char* strtok (char*,char*) ;
 char* zpool_get_cmd_search_path () ;

__attribute__((used)) static void
print_zpool_script_list(char *subcommand)
{
 char *dir, *sp;

 printf(gettext("Available 'zpool %s -c' commands:\n"), subcommand);

 sp = zpool_get_cmd_search_path();
 if (sp == ((void*)0))
  return;

 dir = strtok(sp, ":");
 while (dir != ((void*)0)) {
  print_zpool_dir_scripts(dir);
  dir = strtok(((void*)0), ":");
 }

 free(sp);
}
