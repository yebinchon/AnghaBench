
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t stbds_hash_seed ;

void stbds_rand_seed(size_t seed)
{
  stbds_hash_seed = seed;
}
