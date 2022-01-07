
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extensions ;


 int R_OK ;
 scalar_t__ access (char*,int ) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char*,char*,char*,char*,...) ;

__attribute__((used)) static char *find_icon_in_subdir(char *name, char *basedir, char *theme,
  char *subdir) {
 static const char *extensions[] = {



  "png",



 };

 size_t path_len = snprintf(((void*)0), 0, "%s/%s/%s/%s.EXT", basedir, theme,
   subdir, name) + 1;
 char *path = malloc(path_len);

 for (size_t i = 0; i < sizeof(extensions) / sizeof(*extensions); ++i) {
  snprintf(path, path_len, "%s/%s/%s/%s.%s", basedir, theme, subdir,
    name, extensions[i]);
  if (access(path, R_OK) == 0) {
   return path;
  }
 }

 free(path);
 return ((void*)0);
}
