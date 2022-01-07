
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *up_line(char *p, char *start)
{
 while (p > start)
 {
  --p;
  if (*p == '\n' || *p == '\r')
   return p;
 }
 return p;
}
