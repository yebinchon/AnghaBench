
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mhs_nomem; } ;
struct TYPE_5__ {TYPE_1__ mh_stat; } ;
typedef TYPE_2__ mod_hash_t ;
typedef int * mod_hash_hndl_t ;


 int KM_NOSLEEP ;
 int MH_ERR_NOMEM ;
 int * kmem_cache_alloc (int ,int ) ;
 int mh_e_cache ;

int
mod_hash_reserve_nosleep(mod_hash_t *hash, mod_hash_hndl_t *handlep)
{
 *handlep = kmem_cache_alloc(mh_e_cache, KM_NOSLEEP);
 if (*handlep == ((void*)0)) {
  hash->mh_stat.mhs_nomem++;
  return (MH_ERR_NOMEM);
 }

 return (0);

}
