
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int objset_t ;
struct TYPE_11__ {scalar_t__ ds_object; TYPE_8__* ds_prev; TYPE_4__* ds_dir; int ds_longholds; scalar_t__ ds_is_snapshot; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_15__ {scalar_t__ ds_userrefs; int ds_longholds; } ;
struct TYPE_14__ {scalar_t__ ds_next_snap_obj; int ds_num_children; } ;
struct TYPE_13__ {TYPE_1__* dd_pool; } ;
struct TYPE_12__ {int dd_child_dir_zapobj; } ;
struct TYPE_10__ {int * dp_meta_objset; } ;


 int ASSERT (int) ;
 scalar_t__ DS_IS_DEFER_DESTROY (TYPE_8__*) ;
 int EBUSY ;
 int EEXIST ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 TYPE_7__* dsl_dataset_phys (TYPE_8__*) ;
 scalar_t__ dsl_dir_is_clone (TYPE_4__*) ;
 TYPE_3__* dsl_dir_phys (TYPE_4__*) ;
 int zap_count (int *,int ,scalar_t__*) ;
 int zfs_refcount_count (int *) ;
 int zfs_refcount_is_zero (int *) ;

int
dsl_destroy_head_check_impl(dsl_dataset_t *ds, int expected_holds)
{
 int error;
 uint64_t count;
 objset_t *mos;

 ASSERT(!ds->ds_is_snapshot);
 if (ds->ds_is_snapshot)
  return (SET_ERROR(EINVAL));

 if (zfs_refcount_count(&ds->ds_longholds) != expected_holds)
  return (SET_ERROR(EBUSY));

 mos = ds->ds_dir->dd_pool->dp_meta_objset;






 if (ds->ds_prev != ((void*)0) &&
     dsl_dataset_phys(ds->ds_prev)->ds_next_snap_obj == ds->ds_object)
  return (SET_ERROR(EBUSY));




 error = zap_count(mos,
     dsl_dir_phys(ds->ds_dir)->dd_child_dir_zapobj, &count);
 if (error != 0)
  return (error);
 if (count != 0)
  return (SET_ERROR(EEXIST));

 if (dsl_dir_is_clone(ds->ds_dir) && DS_IS_DEFER_DESTROY(ds->ds_prev) &&
     dsl_dataset_phys(ds->ds_prev)->ds_num_children == 2 &&
     ds->ds_prev->ds_userrefs == 0) {

  if (!zfs_refcount_is_zero(&ds->ds_prev->ds_longholds))
   return (SET_ERROR(EBUSY));
 }
 return (0);
}
