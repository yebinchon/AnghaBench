
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dir_exists (char*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char*,char*) ;

__attribute__((used)) static bool theme_exists_in_basedir(char *theme, char *basedir) {
 size_t path_len = snprintf(((void*)0), 0, "%s/%s", basedir, theme) + 1;
 char *path = malloc(path_len);
 snprintf(path, path_len, "%s/%s", basedir, theme);
 bool ret = dir_exists(path);
 free(path);
 return ret;
}
