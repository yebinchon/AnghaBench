
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ spa_feature_t ;
struct TYPE_8__ {int ds_bp_rwlock; int ds_longholds; int ds_remap_deadlist_lock; int ds_sendstream_lock; int ds_opening_lock; int ds_lock; int ds_prop_cbs; int ds_synced_link; scalar_t__ ds_dir; int ds_remap_deadlist; int ds_deadlist; int ds_pending_deadlist; int * ds_prev; int * ds_objset; int * ds_dbuf; int * ds_owner; } ;
typedef TYPE_1__ dsl_dataset_t ;


 int ASSERT (int) ;
 scalar_t__ SPA_FEATURES ;
 int bplist_destroy (int *) ;
 int dmu_objset_evict (int *) ;
 int dsl_bookmark_fini_ds (TYPE_1__*) ;
 scalar_t__ dsl_dataset_feature_is_active (TYPE_1__*,scalar_t__) ;
 int dsl_dataset_rele (int *,TYPE_1__*) ;
 int dsl_deadlist_close (int *) ;
 scalar_t__ dsl_deadlist_is_open (int *) ;
 int dsl_dir_async_rele (scalar_t__,TYPE_1__*) ;
 int kmem_free (TYPE_1__*,int) ;
 int list_destroy (int *) ;
 int list_link_active (int *) ;
 int mutex_destroy (int *) ;
 int rrw_destroy (int *) ;
 int unload_zfeature (TYPE_1__*,scalar_t__) ;
 int zfs_refcount_destroy (int *) ;

__attribute__((used)) static void
dsl_dataset_evict_async(void *dbu)
{
 dsl_dataset_t *ds = dbu;

 ASSERT(ds->ds_owner == ((void*)0));

 ds->ds_dbuf = ((void*)0);

 if (ds->ds_objset != ((void*)0))
  dmu_objset_evict(ds->ds_objset);

 if (ds->ds_prev) {
  dsl_dataset_rele(ds->ds_prev, ds);
  ds->ds_prev = ((void*)0);
 }

 dsl_bookmark_fini_ds(ds);

 bplist_destroy(&ds->ds_pending_deadlist);
 if (dsl_deadlist_is_open(&ds->ds_deadlist))
  dsl_deadlist_close(&ds->ds_deadlist);
 if (dsl_deadlist_is_open(&ds->ds_remap_deadlist))
  dsl_deadlist_close(&ds->ds_remap_deadlist);
 if (ds->ds_dir)
  dsl_dir_async_rele(ds->ds_dir, ds);

 ASSERT(!list_link_active(&ds->ds_synced_link));

 for (spa_feature_t f = 0; f < SPA_FEATURES; f++) {
  if (dsl_dataset_feature_is_active(ds, f))
   unload_zfeature(ds, f);
 }

 list_destroy(&ds->ds_prop_cbs);
 mutex_destroy(&ds->ds_lock);
 mutex_destroy(&ds->ds_opening_lock);
 mutex_destroy(&ds->ds_sendstream_lock);
 mutex_destroy(&ds->ds_remap_deadlist_lock);
 zfs_refcount_destroy(&ds->ds_longholds);
 rrw_destroy(&ds->ds_bp_rwlock);

 kmem_free(ds, sizeof (dsl_dataset_t));
}
