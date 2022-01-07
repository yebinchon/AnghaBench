
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int count_commas(char *s)
{
 int n = 0;
 while (*s)
 {
  if (*s == ',')
   n ++;
  s ++;
 }
 return n;
}
