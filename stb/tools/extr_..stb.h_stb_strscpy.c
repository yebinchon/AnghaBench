
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb_p_strcpy_s (char*,size_t,char const*) ;
 size_t strlen (char const*) ;

size_t stb_strscpy(char *d, const char *s, size_t n)
{
   size_t len = strlen(s);
   if (len >= n) {
      if (n) d[0] = 0;
      return 0;
   }
   stb_p_strcpy_s(d,n+1,s);
   return len + 1;
}
