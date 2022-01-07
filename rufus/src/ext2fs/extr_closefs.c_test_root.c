
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int test_root(unsigned int a, unsigned int b)
{
 while (1) {
  if (a < b)
   return 0;
  if (a == b)
   return 1;
  if (a % b)
   return 0;
  a = a / b;
 }
}
