
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fz_tolower (char const) ;

int
fz_strcasecmp(const char *a, const char *b)
{
 while (fz_tolower(*a) == fz_tolower(*b))
 {
  if (*a++ == 0)
   return 0;
  b++;
 }
 return fz_tolower(*a) - fz_tolower(*b);
}
