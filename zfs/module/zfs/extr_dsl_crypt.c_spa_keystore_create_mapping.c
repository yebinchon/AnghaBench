
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int sk_km_lock; int sk_key_mappings; } ;
struct TYPE_18__ {TYPE_1__ spa_keystore; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_19__ {int km_refcnt; int km_key; int km_dsobj; } ;
typedef TYPE_3__ dsl_key_mapping_t ;
struct TYPE_20__ {int ds_object; int ds_dir; } ;
typedef TYPE_4__ dsl_dataset_t ;
typedef scalar_t__ boolean_t ;
typedef int avl_index_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int KM_SLEEP ;
 int RW_WRITER ;
 TYPE_3__* avl_find (int *,TYPE_3__*,int *) ;
 int avl_insert (int *,TYPE_3__*,int ) ;
 int kmem_free (TYPE_3__*,int) ;
 TYPE_3__* kmem_zalloc (int,int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int spa_keystore_dsl_key_hold_dd (TYPE_2__*,int ,TYPE_3__*,int *) ;
 int spa_keystore_dsl_key_rele (TYPE_2__*,int ,TYPE_3__*) ;
 int zfs_refcount_add (int *,void*) ;
 int zfs_refcount_create (int *) ;
 int zfs_refcount_destroy (int *) ;

int
spa_keystore_create_mapping(spa_t *spa, dsl_dataset_t *ds, void *tag,
    dsl_key_mapping_t **km_out)
{
 int ret;
 avl_index_t where;
 dsl_key_mapping_t *km, *found_km;
 boolean_t should_free = B_FALSE;


 km = kmem_zalloc(sizeof (dsl_key_mapping_t), KM_SLEEP);
 zfs_refcount_create(&km->km_refcnt);

 ret = spa_keystore_dsl_key_hold_dd(spa, ds->ds_dir, km, &km->km_key);
 if (ret != 0) {
  zfs_refcount_destroy(&km->km_refcnt);
  kmem_free(km, sizeof (dsl_key_mapping_t));

  if (km_out != ((void*)0))
   *km_out = ((void*)0);
  return (ret);
 }

 km->km_dsobj = ds->ds_object;

 rw_enter(&spa->spa_keystore.sk_km_lock, RW_WRITER);
 found_km = avl_find(&spa->spa_keystore.sk_key_mappings, km, &where);
 if (found_km != ((void*)0)) {
  should_free = B_TRUE;
  zfs_refcount_add(&found_km->km_refcnt, tag);
  if (km_out != ((void*)0))
   *km_out = found_km;
 } else {
  zfs_refcount_add(&km->km_refcnt, tag);
  avl_insert(&spa->spa_keystore.sk_key_mappings, km, where);
  if (km_out != ((void*)0))
   *km_out = km;
 }

 rw_exit(&spa->spa_keystore.sk_km_lock);

 if (should_free) {
  spa_keystore_dsl_key_rele(spa, km->km_key, km);
  zfs_refcount_destroy(&km->km_refcnt);
  kmem_free(km, sizeof (dsl_key_mapping_t));
 }

 return (0);
}
