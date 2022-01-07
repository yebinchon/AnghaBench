
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* filter ) (char const*) ;int input_file; } ;


 int PATH_MAX ;
 TYPE_1__ fc ;
 int fz_cleanname (char*) ;
 int fz_strlcpy (char*,char const*,int) ;
 int load_dir (char*) ;
 char* strrchr (char*,char) ;
 int ui_input_init (int *,char*) ;

void ui_init_save_file(const char *path, int (*filter)(const char *fn))
{
 char dir[PATH_MAX], *p;
 fc.filter = filter;
 fz_strlcpy(dir, path, sizeof dir);
 for (p=dir; *p; ++p)
  if (*p == '\\') *p = '/';
 fz_cleanname(dir);
 p = strrchr(dir, '/');
 if (p)
 {
  *p = 0;
  load_dir(dir);
  ui_input_init(&fc.input_file, p+1);
 }
 else
 {
  load_dir(".");
  ui_input_init(&fc.input_file, dir);
 }
}
