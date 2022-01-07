
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int gcd(int u, int v)
{
 int r;

 do
 {
  if (v == 0)
   return u;
  r = u % v;
  u = v;
  v = r;
 }
 while (1);
}
