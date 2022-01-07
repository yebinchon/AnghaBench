
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int *) ;
 int * mh_e_cache ;
 int mh_head_lock ;
 int mutex_destroy (int *) ;

void
mod_hash_fini(void)
{
 mutex_destroy(&mh_head_lock);

 if (mh_e_cache) {
  kmem_cache_destroy(mh_e_cache);
  mh_e_cache = ((void*)0);
 }
}
