
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *home_line(char *p, char *start)
{
 while (p > start)
 {
  if (p[-1] == '\n' || p[-1] == '\r')
   return p;
  --p;
 }
 return p;
}
