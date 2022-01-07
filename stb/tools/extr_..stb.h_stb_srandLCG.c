
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int stb__rand_seed ;

unsigned int stb_srandLCG(unsigned int seed)
{
   unsigned int previous = stb__rand_seed;
   stb__rand_seed = seed;
   return previous;
}
