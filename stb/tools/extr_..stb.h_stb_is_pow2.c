
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int stb_is_pow2(size_t n)
{
   return (n & (n-1)) == 0;
}
