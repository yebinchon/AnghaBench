
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int stb_randLCG_explicit(unsigned int seed)
{
   return seed * 2147001325 + 715136305;
}
