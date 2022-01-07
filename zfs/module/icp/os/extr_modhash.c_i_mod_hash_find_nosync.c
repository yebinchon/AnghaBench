
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint_t ;
struct mod_hash_entry {int mhe_val; int mhe_key; struct mod_hash_entry* mhe_next; } ;
typedef int mod_hash_val_t ;
struct TYPE_6__ {int mhs_miss; int mhs_hit; } ;
struct TYPE_7__ {TYPE_1__ mh_stat; struct mod_hash_entry** mh_entries; } ;
typedef TYPE_2__ mod_hash_t ;
typedef int mod_hash_key_t ;


 int MH_ERR_NOTFOUND ;
 scalar_t__ MH_KEYCMP (TYPE_2__*,int ,int ) ;
 size_t i_mod_hash (TYPE_2__*,int ) ;

int
i_mod_hash_find_nosync(mod_hash_t *hash, mod_hash_key_t key,
    mod_hash_val_t *val)
{
 uint_t hashidx;
 struct mod_hash_entry *e;

 hashidx = i_mod_hash(hash, key);

 for (e = hash->mh_entries[hashidx]; e != ((void*)0); e = e->mhe_next) {
  if (MH_KEYCMP(hash, e->mhe_key, key) == 0) {
   *val = e->mhe_val;
   hash->mh_stat.mhs_hit++;
   return (0);
  }
 }
 hash->mh_stat.mhs_miss++;
 return (MH_ERR_NOTFOUND);
}
