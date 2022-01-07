
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct mod_hash_entry {int mhe_val; int mhe_key; struct mod_hash_entry* mhe_next; } ;
typedef int mod_hash_val_t ;
struct TYPE_7__ {int mhs_nelems; } ;
struct TYPE_8__ {TYPE_1__ mh_stat; struct mod_hash_entry** mh_entries; } ;
typedef TYPE_2__ mod_hash_t ;
typedef int mod_hash_key_t ;


 int MH_ERR_NOTFOUND ;
 scalar_t__ MH_KEYCMP (TYPE_2__*,int ,int ) ;
 int MH_KEY_DESTROY (TYPE_2__*,int ) ;
 int i_mod_hash (TYPE_2__*,int ) ;
 int kmem_cache_free (int ,struct mod_hash_entry*) ;
 int mh_e_cache ;

int
i_mod_hash_remove_nosync(mod_hash_t *hash, mod_hash_key_t key,
    mod_hash_val_t *val)
{
 int hashidx;
 struct mod_hash_entry *e, *ep;

 hashidx = i_mod_hash(hash, key);
 ep = ((void*)0);

 for (e = hash->mh_entries[hashidx]; e != ((void*)0); e = e->mhe_next) {
  if (MH_KEYCMP(hash, e->mhe_key, key) == 0)
   break;
  ep = e;
 }

 if (e == ((void*)0)) {
  return (MH_ERR_NOTFOUND);
 }

 if (ep == ((void*)0))
  hash->mh_entries[hashidx] = e->mhe_next;
 else
  ep->mhe_next = e->mhe_next;




 MH_KEY_DESTROY(hash, e->mhe_key);

 *val = e->mhe_val;
 kmem_cache_free(mh_e_cache, e);
 hash->mh_stat.mhs_nelems--;

 return (0);
}
