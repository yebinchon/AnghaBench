
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
xps_parse_digits(char *s, int *digit)
{
 *digit = 0;
 while (*s >= '0' && *s <= '9')
 {
  *digit = *digit * 10 + (*s - '0');
  s ++;
 }
 return s;
}
