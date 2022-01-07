
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
starts_with(const char **s, const char *string)
{
 const char *x = *s, *y = string;
 while (*x && *y && (*x == *y || *x == *y + 32))
  ++x, ++y;
 if (*y == 0)
 {

  *s = x;
  return 1;
 }
 else
  return 0;
}
