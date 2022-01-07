
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mod_hash_t ;


 int ASSERT (int *) ;
 int mod_hash_destroy_hash (int *) ;

void
mod_hash_destroy_ptrhash(mod_hash_t *hash)
{
 ASSERT(hash);
 mod_hash_destroy_hash(hash);
}
