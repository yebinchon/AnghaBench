
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* KEYMAP_PATH ;
 int * fopen (char*,char*) ;
 char* getenv (char*) ;
 char* pathjoin (char*,char const*) ;
 int xfree (char*) ;

FILE *
xkeymap_open(const char *filename)
{
 char *path1, *path2;
 char *home;
 FILE *fp;


 home = getenv("HOME");
 if (home)
 {
  path1 = pathjoin(home, ".rdesktop/keymaps");
  path2 = pathjoin(path1, filename);
  xfree(path1);
  fp = fopen(path2, "r");
  xfree(path2);
  if (fp)
   return fp;
 }


 path1 = pathjoin(KEYMAP_PATH, filename);
 fp = fopen(path1, "r");
 xfree(path1);
 if (fp)
  return fp;



 path1 = pathjoin("keymaps", filename);
 fp = fopen(path1, "r");
 xfree(path1);
 if (fp)
  return fp;

 return ((void*)0);
}
