
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ stb_is_pow2 (size_t) ;
 int stb_log2_floor (size_t) ;

int stb_log2_ceil(size_t n)
{
   if (stb_is_pow2(n)) return stb_log2_floor(n);
   else return 1 + stb_log2_floor(n);
}
