
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

char *stb_strip_final_slash_regardless(char *t)
{
   if (t[0]) {
      char *z = t + strlen(t) - 1;

      if (*z == '\\' || *z == '/')
         *z = 0;
      if (*z == '\\')
         *z = '/';
   }
   return t;
}
