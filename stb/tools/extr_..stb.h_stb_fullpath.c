
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STB_FALSE ;
 int STB_TRUE ;
 int * _fullpath (char*,char*,int) ;
 int getcwd (char*,int) ;
 int stb_p_strcpy_s (char*,int,char*) ;
 int strlen (char*) ;

int stb_fullpath(char *abs, int abs_size, char *rel)
{



   if (rel[0] == '/' || rel[0] == '~') {
      if ((int) strlen(rel) >= abs_size)
         return 0;
      stb_p_strcpy_s(abs,65536,rel);
      return STB_TRUE;
   } else {
      int n;
      getcwd(abs, abs_size);
      n = strlen(abs);
      if (n+(int) strlen(rel)+2 <= abs_size) {
         abs[n] = '/';
         stb_p_strcpy_s(abs+n+1, 65536,rel);
         return STB_TRUE;
      } else {
         return STB_FALSE;
      }
   }

}
