
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xps_tolower (char) ;

int
xps_strcasecmp(char *a, char *b)
{
 while (xps_tolower(*a) == xps_tolower(*b))
 {
  if (*a++ == 0)
   return 0;
  b++;
 }
 return xps_tolower(*a) - xps_tolower(*b);
}
