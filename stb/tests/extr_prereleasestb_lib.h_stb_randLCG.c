
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb__rand_seed ;

unsigned long stb_randLCG(void)
{
   stb__rand_seed = stb__rand_seed * 2147001325 + 715136305;

   return 0x31415926 ^ ((stb__rand_seed >> 16) + (stb__rand_seed << 16));
}
