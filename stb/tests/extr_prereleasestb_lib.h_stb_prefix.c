
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int stb_prefix(char *s, char *t)
{
   while (*t)
      if (*s++ != *t++)
         return 0;
   return 1;
}
