
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *stb_strrchr2(char *s, char x, char y)
{
   char *r = ((void*)0);
   for(; *s; ++s)
      if (*s == x || *s == y)
         r = s;
   return r;
}
