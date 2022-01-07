
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fz_tolower (char const) ;

int
fz_strncasecmp(const char *a, const char *b, int n)
{
 if (!n--)
  return 0;
 for (; *a && *b && n && (*a == *b || fz_tolower(*a) == fz_tolower(*b)); a++, b++, n--)
  ;
 return fz_tolower(*a) - fz_tolower(*b);
}
