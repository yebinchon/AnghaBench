
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* stb_strichr (char*,char) ;
 scalar_t__ stb_strnicmp (char*,char*,size_t) ;
 size_t strlen (char*) ;

char *stb_stristr(char *s, char *t)
{
   size_t n = strlen(t);
   char *z;
   if (n==0) return s;
   while ((z = stb_strichr(s, *t)) != ((void*)0)) {
      if (0==stb_strnicmp(z, t, n))
         return z;
      s = z+1;
   }
   return ((void*)0);
}
