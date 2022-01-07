
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int stb_hashptr (void*) ;

unsigned int stb_rehash_improved(unsigned int v)
{
   return stb_hashptr((void *)(size_t) v);
}
