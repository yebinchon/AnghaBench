
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;


struct TYPE_36__ {int vdev_children; TYPE_1__* vdev_mg; struct TYPE_36__** vdev_child; } ;
typedef TYPE_5__ vdev_t ;
struct TYPE_35__ {int sav_count; int * sav_config; TYPE_5__** sav_vdevs; } ;
struct TYPE_34__ {int sav_count; int * sav_config; TYPE_5__** sav_vdevs; } ;
struct TYPE_33__ {scalar_t__ mmp_thread; } ;
struct TYPE_37__ {int * spa_comment; void* spa_indirect_vdevs_loaded; scalar_t__ spa_async_suspended; TYPE_4__ spa_l2cache; TYPE_3__ spa_spares; int * spa_meta_objset; int * spa_dsl_pool; TYPE_5__* spa_root_vdev; int spa_deferred_bpobj; int * spa_vdev_removal; TYPE_5__** spa_async_zio_root; TYPE_2__ spa_mmp; void* spa_sync_on; } ;
typedef TYPE_6__ spa_t ;
struct TYPE_32__ {int mg_taskq; } ;


 int ASSERT (int) ;
 void* B_FALSE ;
 int MUTEX_HELD (int *) ;
 scalar_t__ POOL_STATE_UNINITIALIZED ;
 int RW_WRITER ;
 int SCL_ALL ;
 int VDEV_INITIALIZE_ACTIVE ;
 int VDEV_TRIM_ACTIVE ;
 int bpobj_close (int *) ;
 int ddt_unload (TYPE_6__*) ;
 int dsl_pool_close (int *) ;
 int kmem_free (TYPE_5__**,int) ;
 int max_ncpus ;
 int mmp_thread_stop (TYPE_6__*) ;
 int nvlist_free (int *) ;
 int spa_async_suspend (TYPE_6__*) ;
 int spa_condense_fini (TYPE_6__*) ;
 int spa_config_enter (TYPE_6__*,int ,TYPE_6__*,int ) ;
 int spa_config_exit (TYPE_6__*,int ,TYPE_6__*) ;
 int spa_destroy_aux_threads (TYPE_6__*) ;
 int spa_guid (TYPE_6__*) ;
 int spa_import_progress_remove (int ) ;
 int spa_l2cache_drop (TYPE_6__*) ;
 int spa_load_note (TYPE_6__*,char*) ;
 int spa_namespace_lock ;
 scalar_t__ spa_should_flush_logs_on_unload (TYPE_6__*) ;
 scalar_t__ spa_state (TYPE_6__*) ;
 int spa_strfree (int *) ;
 int spa_unload_log_sm_flush_all (TYPE_6__*) ;
 int spa_unload_log_sm_metadata (TYPE_6__*) ;
 int spa_vdev_removal_destroy (int *) ;
 int spa_wake_waiters (TYPE_6__*) ;
 int taskq_wait (int ) ;
 int txg_sync_stop (int *) ;
 int vdev_autotrim_stop_all (TYPE_6__*) ;
 int vdev_clear_stats (TYPE_5__*) ;
 int vdev_free (TYPE_5__*) ;
 int vdev_initialize_stop_all (TYPE_5__*,int ) ;
 int vdev_trim_stop_all (TYPE_5__*,int ) ;
 int zio_wait (TYPE_5__*) ;

__attribute__((used)) static void
spa_unload(spa_t *spa)
{
 ASSERT(MUTEX_HELD(&spa_namespace_lock));
 ASSERT(spa_state(spa) != POOL_STATE_UNINITIALIZED);

 spa_import_progress_remove(spa_guid(spa));
 spa_load_note(spa, "UNLOADING");

 spa_wake_waiters(spa);







 if (spa_should_flush_logs_on_unload(spa))
  spa_unload_log_sm_flush_all(spa);




 spa_async_suspend(spa);

 if (spa->spa_root_vdev) {
  vdev_t *root_vdev = spa->spa_root_vdev;
  vdev_initialize_stop_all(root_vdev, VDEV_INITIALIZE_ACTIVE);
  vdev_trim_stop_all(root_vdev, VDEV_TRIM_ACTIVE);
  vdev_autotrim_stop_all(spa);
 }




 if (spa->spa_sync_on) {
  txg_sync_stop(spa->spa_dsl_pool);
  spa->spa_sync_on = B_FALSE;
 }





 if (spa->spa_root_vdev != ((void*)0)) {
  for (int c = 0; c < spa->spa_root_vdev->vdev_children; c++) {
   vdev_t *vc = spa->spa_root_vdev->vdev_child[c];
   if (vc->vdev_mg != ((void*)0))
    taskq_wait(vc->vdev_mg->mg_taskq);
  }
 }

 if (spa->spa_mmp.mmp_thread)
  mmp_thread_stop(spa);




 if (spa->spa_async_zio_root != ((void*)0)) {
  for (int i = 0; i < max_ncpus; i++)
   (void) zio_wait(spa->spa_async_zio_root[i]);
  kmem_free(spa->spa_async_zio_root, max_ncpus * sizeof (void *));
  spa->spa_async_zio_root = ((void*)0);
 }

 if (spa->spa_vdev_removal != ((void*)0)) {
  spa_vdev_removal_destroy(spa->spa_vdev_removal);
  spa->spa_vdev_removal = ((void*)0);
 }

 spa_destroy_aux_threads(spa);

 spa_condense_fini(spa);

 bpobj_close(&spa->spa_deferred_bpobj);

 spa_config_enter(spa, SCL_ALL, spa, RW_WRITER);




 if (spa->spa_root_vdev)
  vdev_free(spa->spa_root_vdev);
 ASSERT(spa->spa_root_vdev == ((void*)0));




 if (spa->spa_dsl_pool) {
  dsl_pool_close(spa->spa_dsl_pool);
  spa->spa_dsl_pool = ((void*)0);
  spa->spa_meta_objset = ((void*)0);
 }

 ddt_unload(spa);
 spa_unload_log_sm_metadata(spa);




 spa_l2cache_drop(spa);

 for (int i = 0; i < spa->spa_spares.sav_count; i++)
  vdev_free(spa->spa_spares.sav_vdevs[i]);
 if (spa->spa_spares.sav_vdevs) {
  kmem_free(spa->spa_spares.sav_vdevs,
      spa->spa_spares.sav_count * sizeof (void *));
  spa->spa_spares.sav_vdevs = ((void*)0);
 }
 if (spa->spa_spares.sav_config) {
  nvlist_free(spa->spa_spares.sav_config);
  spa->spa_spares.sav_config = ((void*)0);
 }
 spa->spa_spares.sav_count = 0;

 for (int i = 0; i < spa->spa_l2cache.sav_count; i++) {
  vdev_clear_stats(spa->spa_l2cache.sav_vdevs[i]);
  vdev_free(spa->spa_l2cache.sav_vdevs[i]);
 }
 if (spa->spa_l2cache.sav_vdevs) {
  kmem_free(spa->spa_l2cache.sav_vdevs,
      spa->spa_l2cache.sav_count * sizeof (void *));
  spa->spa_l2cache.sav_vdevs = ((void*)0);
 }
 if (spa->spa_l2cache.sav_config) {
  nvlist_free(spa->spa_l2cache.sav_config);
  spa->spa_l2cache.sav_config = ((void*)0);
 }
 spa->spa_l2cache.sav_count = 0;

 spa->spa_async_suspended = 0;

 spa->spa_indirect_vdevs_loaded = B_FALSE;

 if (spa->spa_comment != ((void*)0)) {
  spa_strfree(spa->spa_comment);
  spa->spa_comment = ((void*)0);
 }

 spa_config_exit(spa, SCL_ALL, spa);
}
