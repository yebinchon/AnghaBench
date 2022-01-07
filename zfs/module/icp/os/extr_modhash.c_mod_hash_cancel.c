
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mod_hash_t ;
typedef scalar_t__ mod_hash_hndl_t ;


 int kmem_cache_free (int ,scalar_t__) ;
 int mh_e_cache ;

void
mod_hash_cancel(mod_hash_t *hash, mod_hash_hndl_t *handlep)
{
 kmem_cache_free(mh_e_cache, *handlep);
 *handlep = (mod_hash_hndl_t)0;
}
