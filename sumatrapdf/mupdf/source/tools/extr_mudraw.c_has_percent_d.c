
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int has_percent_d(char *s)
{

 while (*s)
 {
  if (*s++ == '%')
  {
   while (*s >= '0' && *s <= '9')
    ++s;
   if (*s == 'd')
    return 1;
  }
 }
 return 0;
}
