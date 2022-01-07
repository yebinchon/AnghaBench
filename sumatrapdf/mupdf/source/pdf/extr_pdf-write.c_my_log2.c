
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
my_log2(int x)
{
 int i = 0;

 if (x <= 0)
  return 0;

 while ((1<<i) <= x && (1<<i) > 0)
  i++;

 if ((1<<i) <= 0)
  return 0;

 return i;
}
