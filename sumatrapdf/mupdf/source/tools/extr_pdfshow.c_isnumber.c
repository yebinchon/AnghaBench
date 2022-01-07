
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int isnumber(char *s)
{
 while (*s)
 {
  if (*s < '0' || *s > '9')
   return 0;
  ++s;
 }
 return 1;
}
