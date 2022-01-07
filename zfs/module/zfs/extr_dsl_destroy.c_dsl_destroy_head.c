
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
typedef int objset_t ;
struct TYPE_4__ {char const* ddha_name; } ;
typedef TYPE_1__ dsl_destroy_head_arg_t ;
typedef int boolean_t ;
struct TYPE_5__ {int ds_prev_snap_txg; } ;


 int B_FALSE ;
 int B_TRUE ;
 int DMU_OST_ANY ;
 int FALSE ;
 int FTAG ;
 int SPA_FEATURE_ASYNC_DESTROY ;
 int ZFS_SPACE_CHECK_DESTROY ;
 int dmu_free_long_object (int *,int ) ;
 int dmu_object_next (int *,int *,int ,int ) ;
 int dmu_objset_disown (int *,int ,int ) ;
 int dmu_objset_ds (int *) ;
 int dmu_objset_own (char const*,int ,int ,int ,int ,int **) ;
 int dmu_objset_pool (int *) ;
 TYPE_3__* dsl_dataset_phys (int ) ;
 int dsl_destroy_head_begin_sync ;
 int dsl_destroy_head_check ;
 int dsl_destroy_head_sync ;
 int dsl_sync_task (char const*,int ,int ,TYPE_1__*,int ,int ) ;
 int spa_close (int *,int ) ;
 int spa_feature_is_enabled (int *,int ) ;
 int spa_open (char const*,int **,int ) ;
 int txg_wait_synced (int ,int ) ;
 int zfs_destroy_unmount_origin (char const*) ;

int
dsl_destroy_head(const char *name)
{
 dsl_destroy_head_arg_t ddha;
 int error;
 spa_t *spa;
 boolean_t isenabled;





 error = spa_open(name, &spa, FTAG);
 if (error != 0)
  return (error);
 isenabled = spa_feature_is_enabled(spa, SPA_FEATURE_ASYNC_DESTROY);
 spa_close(spa, FTAG);

 ddha.ddha_name = name;

 if (!isenabled) {
  objset_t *os;

  error = dsl_sync_task(name, dsl_destroy_head_check,
      dsl_destroy_head_begin_sync, &ddha,
      0, ZFS_SPACE_CHECK_DESTROY);
  if (error != 0)
   return (error);







  error = dmu_objset_own(name, DMU_OST_ANY, B_FALSE, B_TRUE,
      FTAG, &os);
  if (error == 0) {
   uint64_t prev_snap_txg =
       dsl_dataset_phys(dmu_objset_ds(os))->
       ds_prev_snap_txg;
   for (uint64_t obj = 0; error == 0;
       error = dmu_object_next(os, &obj, FALSE,
       prev_snap_txg))
    (void) dmu_free_long_object(os, obj);

   txg_wait_synced(dmu_objset_pool(os), 0);
   dmu_objset_disown(os, B_TRUE, FTAG);
  }
 }

 return (dsl_sync_task(name, dsl_destroy_head_check,
     dsl_destroy_head_sync, &ddha, 0, ZFS_SPACE_CHECK_DESTROY));
}
