
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STB_FALSE ;
 int STB_TRUE ;

int stb_prefix(char *s, char *t)
{
   while (*t)
      if (*s++ != *t++)
         return STB_FALSE;
   return STB_TRUE;
}
