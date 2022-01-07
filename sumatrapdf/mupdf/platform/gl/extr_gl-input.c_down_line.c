
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *down_line(char *p, char *end)
{
 while (p < end)
 {
  if (*p == '\n' || *p == '\r')
   return p+1;
  ++p;
 }
 return p;
}
