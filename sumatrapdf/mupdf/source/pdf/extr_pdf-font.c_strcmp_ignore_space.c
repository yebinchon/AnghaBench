
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int strcmp_ignore_space(const char *a, const char *b)
{
 while (1)
 {
  while (*a == ' ')
   a++;
  while (*b == ' ')
   b++;
  if (*a != *b)
   return 1;
  if (*a == 0)
   return *a != *b;
  if (*b == 0)
   return *a != *b;
  a++;
  b++;
 }
}
