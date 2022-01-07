
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *end_line(char *p, char *end)
{
 while (p < end)
 {
  if (p[0] == '\n' || p[0] == '\r')
   return p;
  ++p;
 }
 return p;
}
