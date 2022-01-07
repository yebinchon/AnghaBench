
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {int sk_km_lock; int sk_key_mappings; } ;
struct TYPE_10__ {TYPE_1__ spa_keystore; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_11__ {TYPE_4__* km_key; int km_dsobj; } ;
typedef TYPE_3__ dsl_key_mapping_t ;
struct TYPE_12__ {int dck_holds; } ;
typedef TYPE_4__ dsl_crypto_key_t ;


 int ASSERT (int) ;
 int ENOENT ;
 int RW_READER ;
 int SET_ERROR (int ) ;
 TYPE_3__* avl_find (int *,TYPE_3__*,int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int zfs_refcount_add (int *,void*) ;

int
spa_keystore_lookup_key(spa_t *spa, uint64_t dsobj, void *tag,
    dsl_crypto_key_t **dck_out)
{
 int ret;
 dsl_key_mapping_t search_km;
 dsl_key_mapping_t *found_km;

 ASSERT((tag != ((void*)0) && dck_out != ((void*)0)) ||
     (tag == ((void*)0) && dck_out == ((void*)0)));


 search_km.km_dsobj = dsobj;

 rw_enter(&spa->spa_keystore.sk_km_lock, RW_READER);


 found_km = avl_find(&spa->spa_keystore.sk_key_mappings, &search_km,
     ((void*)0));
 if (found_km == ((void*)0)) {
  ret = SET_ERROR(ENOENT);
  goto error_unlock;
 }

 if (found_km && tag)
  zfs_refcount_add(&found_km->km_key->dck_holds, tag);

 rw_exit(&spa->spa_keystore.sk_km_lock);

 if (dck_out != ((void*)0))
  *dck_out = found_km->km_key;
 return (0);

error_unlock:
 rw_exit(&spa->spa_keystore.sk_km_lock);

 if (dck_out != ((void*)0))
  *dck_out = ((void*)0);
 return (ret);
}
