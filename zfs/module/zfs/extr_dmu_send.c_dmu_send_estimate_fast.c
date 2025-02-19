
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int zfs_bookmark_phys_t ;
typedef int uint64_t ;
struct TYPE_14__ {int ds_is_snapshot; TYPE_1__* ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;
typedef int dmu_replay_record_t ;
typedef int boolean_t ;
struct TYPE_15__ {int ds_uncompressed_bytes; int ds_compressed_bytes; } ;
struct TYPE_13__ {int dd_pool; } ;


 int ASSERT (int) ;
 int EINVAL ;
 int EXDEV ;
 int SET_ERROR (int ) ;
 int dmu_adjust_send_estimate_for_indirects (TYPE_2__*,int,int,int ,int*) ;
 int dsl_dataset_is_before (TYPE_2__*,TYPE_2__*,int ) ;
 TYPE_6__* dsl_dataset_phys (TYPE_2__*) ;
 int dsl_dataset_space_written (TYPE_2__*,TYPE_2__*,int*,int*,int*) ;
 int dsl_dataset_space_written_bookmark (int *,TYPE_2__*,int*,int*,int*) ;
 int dsl_pool_config_held (int ) ;

int
dmu_send_estimate_fast(dsl_dataset_t *ds, dsl_dataset_t *fromds,
    zfs_bookmark_phys_t *frombook, boolean_t stream_compressed, uint64_t *sizep)
{
 int err;
 uint64_t uncomp, comp;

 ASSERT(dsl_pool_config_held(ds->ds_dir->dd_pool));
 ASSERT(fromds == ((void*)0) || frombook == ((void*)0));


 if (!ds->ds_is_snapshot)
  return (SET_ERROR(EINVAL));

 if (fromds != ((void*)0)) {
  uint64_t used;
  if (!fromds->ds_is_snapshot)
   return (SET_ERROR(EINVAL));

  if (!dsl_dataset_is_before(ds, fromds, 0))
   return (SET_ERROR(EXDEV));

  err = dsl_dataset_space_written(fromds, ds, &used, &comp,
      &uncomp);
  if (err != 0)
   return (err);
 } else if (frombook != ((void*)0)) {
  uint64_t used;
  err = dsl_dataset_space_written_bookmark(frombook, ds, &used,
      &comp, &uncomp);
  if (err != 0)
   return (err);
 } else {
  uncomp = dsl_dataset_phys(ds)->ds_uncompressed_bytes;
  comp = dsl_dataset_phys(ds)->ds_compressed_bytes;
 }

 err = dmu_adjust_send_estimate_for_indirects(ds, uncomp, comp,
     stream_compressed, sizep);



 *sizep += 2 * sizeof (dmu_replay_record_t);
 return (err);
}
