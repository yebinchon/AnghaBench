
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zprop_source_t ;
typedef int value ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
struct TYPE_9__ {TYPE_4__* ds_dir; int ds_lock; scalar_t__ ds_reserved; int ds_dbuf; } ;
typedef TYPE_1__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_11__ {scalar_t__ ds_unique_bytes; } ;
struct TYPE_10__ {int dd_lock; } ;


 int ASSERT (int ) ;
 int DD_USED_REFRSRV ;
 int DS_UNIQUE_IS_ACCURATE (TYPE_1__*) ;
 scalar_t__ MAX (int ,scalar_t__) ;
 int VERIFY0 (int ) ;
 int ZFS_PROP_REFRESERVATION ;
 int dmu_buf_will_dirty (int ,int *) ;
 TYPE_6__* dsl_dataset_phys (TYPE_1__*) ;
 int dsl_dir_diduse_space (TYPE_4__*,int ,scalar_t__,int ,int ,int *) ;
 int dsl_prop_get_int_ds (TYPE_1__*,int ,scalar_t__*) ;
 int dsl_prop_set_sync_impl (TYPE_1__*,int ,int ,int,int,scalar_t__*,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_prop_to_name (int ) ;

void
dsl_dataset_set_refreservation_sync_impl(dsl_dataset_t *ds,
    zprop_source_t source, uint64_t value, dmu_tx_t *tx)
{
 uint64_t newval;
 uint64_t unique;
 int64_t delta;

 dsl_prop_set_sync_impl(ds, zfs_prop_to_name(ZFS_PROP_REFRESERVATION),
     source, sizeof (value), 1, &value, tx);

 VERIFY0(dsl_prop_get_int_ds(ds,
     zfs_prop_to_name(ZFS_PROP_REFRESERVATION), &newval));

 dmu_buf_will_dirty(ds->ds_dbuf, tx);
 mutex_enter(&ds->ds_dir->dd_lock);
 mutex_enter(&ds->ds_lock);
 ASSERT(DS_UNIQUE_IS_ACCURATE(ds));
 unique = dsl_dataset_phys(ds)->ds_unique_bytes;
 delta = MAX(0, (int64_t)(newval - unique)) -
     MAX(0, (int64_t)(ds->ds_reserved - unique));
 ds->ds_reserved = newval;
 mutex_exit(&ds->ds_lock);

 dsl_dir_diduse_space(ds->ds_dir, DD_USED_REFRSRV, delta, 0, 0, tx);
 mutex_exit(&ds->ds_dir->dd_lock);
}
