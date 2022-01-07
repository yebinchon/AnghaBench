
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zfs_all_blkstats_t ;
struct TYPE_9__ {TYPE_2__* dp_blkstats; int dp_iput_taskq; int dp_unlinked_drain_taskq; int dp_spaceavail_cv; int dp_lock; int dp_config_rwlock; int dp_spa; int dp_sync_taskq; int dp_zil_clean_taskq; int dp_dirty_dirs; int dp_early_sync_tasks; int dp_sync_tasks; int dp_dirty_zilogs; int dp_dirty_datasets; int * dp_meta_objset; int dp_obsolete_bpobj; int dp_free_bpobj; int * dp_root_dir; int * dp_leak_dir; int * dp_free_dir; int * dp_mos_dir; int * dp_origin_snap; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_10__ {int zab_lock; } ;


 int FALSE ;
 int arc_flush (int ,int ) ;
 int bpobj_close (int *) ;
 int cv_destroy (int *) ;
 int dmu_buf_user_evict_wait () ;
 int dmu_objset_evict (int *) ;
 int dsl_dataset_rele (int *,TYPE_1__*) ;
 int dsl_dir_rele (int *,TYPE_1__*) ;
 int dsl_scan_fini (TYPE_1__*) ;
 int kmem_free (TYPE_1__*,int) ;
 int mmp_fini (int ) ;
 int mutex_destroy (int *) ;
 int rrw_destroy (int *) ;
 int taskq_destroy (int ) ;
 int txg_fini (TYPE_1__*) ;
 int txg_list_destroy (int *) ;
 int vmem_free (TYPE_2__*,int) ;

void
dsl_pool_close(dsl_pool_t *dp)
{







 if (dp->dp_origin_snap != ((void*)0))
  dsl_dataset_rele(dp->dp_origin_snap, dp);
 if (dp->dp_mos_dir != ((void*)0))
  dsl_dir_rele(dp->dp_mos_dir, dp);
 if (dp->dp_free_dir != ((void*)0))
  dsl_dir_rele(dp->dp_free_dir, dp);
 if (dp->dp_leak_dir != ((void*)0))
  dsl_dir_rele(dp->dp_leak_dir, dp);
 if (dp->dp_root_dir != ((void*)0))
  dsl_dir_rele(dp->dp_root_dir, dp);

 bpobj_close(&dp->dp_free_bpobj);
 bpobj_close(&dp->dp_obsolete_bpobj);


 if (dp->dp_meta_objset != ((void*)0))
  dmu_objset_evict(dp->dp_meta_objset);

 txg_list_destroy(&dp->dp_dirty_datasets);
 txg_list_destroy(&dp->dp_dirty_zilogs);
 txg_list_destroy(&dp->dp_sync_tasks);
 txg_list_destroy(&dp->dp_early_sync_tasks);
 txg_list_destroy(&dp->dp_dirty_dirs);

 taskq_destroy(dp->dp_zil_clean_taskq);
 taskq_destroy(dp->dp_sync_taskq);







 arc_flush(dp->dp_spa, FALSE);

 mmp_fini(dp->dp_spa);
 txg_fini(dp);
 dsl_scan_fini(dp);
 dmu_buf_user_evict_wait();

 rrw_destroy(&dp->dp_config_rwlock);
 mutex_destroy(&dp->dp_lock);
 cv_destroy(&dp->dp_spaceavail_cv);
 taskq_destroy(dp->dp_unlinked_drain_taskq);
 taskq_destroy(dp->dp_iput_taskq);
 if (dp->dp_blkstats != ((void*)0)) {
  mutex_destroy(&dp->dp_blkstats->zab_lock);
  vmem_free(dp->dp_blkstats, sizeof (zfs_all_blkstats_t));
 }
 kmem_free(dp, sizeof (dsl_pool_t));
}
