
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mod_hash_entry {struct mod_hash_entry* mhe_next; int mhe_val; int mhe_key; } ;
struct TYPE_6__ {scalar_t__ mhs_nelems; } ;
struct TYPE_7__ {int mh_nchains; TYPE_1__ mh_stat; struct mod_hash_entry** mh_entries; } ;
typedef TYPE_2__ mod_hash_t ;


 int MH_KEY_DESTROY (TYPE_2__*,int ) ;
 int MH_VAL_DESTROY (TYPE_2__*,int ) ;
 int kmem_cache_free (int ,struct mod_hash_entry*) ;
 int mh_e_cache ;

void
i_mod_hash_clear_nosync(mod_hash_t *hash)
{
 int i;
 struct mod_hash_entry *e, *old_e;

 for (i = 0; i < hash->mh_nchains; i++) {
  e = hash->mh_entries[i];
  while (e != ((void*)0)) {
   MH_KEY_DESTROY(hash, e->mhe_key);
   MH_VAL_DESTROY(hash, e->mhe_val);
   old_e = e;
   e = e->mhe_next;
   kmem_cache_free(mh_e_cache, old_e);
  }
  hash->mh_entries[i] = ((void*)0);
 }
 hash->mh_stat.mhs_nelems = 0;
}
