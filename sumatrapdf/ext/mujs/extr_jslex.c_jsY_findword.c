
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

int jsY_findword(const char *s, const char **list, int num)
{
 int l = 0;
 int r = num - 1;
 while (l <= r) {
  int m = (l + r) >> 1;
  int c = strcmp(s, list[m]);
  if (c < 0)
   r = m - 1;
  else if (c > 0)
   l = m + 1;
  else
   return m;
 }
 return -1;
}
