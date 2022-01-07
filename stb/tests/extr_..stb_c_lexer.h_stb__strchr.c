
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *stb__strchr(const char *str, int ch)
{
   for (; *str; ++str)
      if (*str == ch)
         return str;
   return 0;
}
