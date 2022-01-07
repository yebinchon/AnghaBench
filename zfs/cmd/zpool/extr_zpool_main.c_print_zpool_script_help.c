
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_blank_str (char*) ;
 int libzfs_free_str_array (char**,int) ;
 int libzfs_run_process_get_stdout_nopath (char*,char**,int *,char***,int*) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static void
print_zpool_script_help(char *name, char *path)
{
 char *argv[] = {path, "-h", ((void*)0)};
 char **lines = ((void*)0);
 int lines_cnt = 0;
 int rc;

 rc = libzfs_run_process_get_stdout_nopath(path, argv, ((void*)0), &lines,
     &lines_cnt);
 if (rc != 0 || lines == ((void*)0) || lines_cnt <= 0) {
  if (lines != ((void*)0))
   libzfs_free_str_array(lines, lines_cnt);
  return;
 }

 for (int i = 0; i < lines_cnt; i++)
  if (!is_blank_str(lines[i]))
   printf("  %-14s  %s\n", name, lines[i]);

 libzfs_free_str_array(lines, lines_cnt);
}
