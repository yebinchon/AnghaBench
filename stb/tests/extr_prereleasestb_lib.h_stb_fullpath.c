
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _fullpath (char*,char*,int) ;
 int getcwd (char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

int stb_fullpath(char *abs, int abs_size, char *rel)
{



   if (rel[0] == '/' || rel[0] == '~') {
      if ((int) strlen(rel) >= abs_size)
         return 0;
      strcpy(abs,rel);
      return 1;
   } else {
      int n;
      getcwd(abs, abs_size);
      n = strlen(abs);
      if (n+(int) strlen(rel)+2 <= abs_size) {
         abs[n] = '/';
         strcpy(abs+n+1, rel);
         return 1;
      } else {
         return 0;
      }
   }

}
