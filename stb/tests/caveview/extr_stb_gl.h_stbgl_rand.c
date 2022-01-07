
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int stbgl_rand(void)
{
   static unsigned int stbgl__rand_seed = 3248980923;
   return stbgl__rand_seed = stbgl__rand_seed * 2147001325 + 715136305;
}
