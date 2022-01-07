
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_22__ {int vdev_trim_lock; int vdev_initialize_lock; TYPE_1__* vdev_ops; int * vdev_dtl_sm; int vdev_detached; } ;
typedef TYPE_2__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_23__ {int spa_dsl_pool; int spa_config_generation; int spa_config_dirty_list; int spa_root_vdev; int * spa_pending_vdev; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_21__ {scalar_t__ vdev_op_leaf; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int MUTEX_HELD (int *) ;
 int RW_WRITER ;
 int SCL_ALL ;
 int VDEV_INITIALIZE_CANCELED ;
 int VDEV_TRIM_CANCELED ;
 int list_is_empty (int *) ;
 scalar_t__ metaslab_class_validate (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_config_enter (TYPE_3__*,int ,TYPE_3__*,int ) ;
 int spa_config_exit (TYPE_3__*,int ,TYPE_3__*) ;
 int spa_dedup_class (TYPE_3__*) ;
 scalar_t__ spa_last_synced_txg (TYPE_3__*) ;
 int spa_log_class (TYPE_3__*) ;
 int spa_namespace_lock ;
 int spa_normal_class (TYPE_3__*) ;
 int spa_special_class (TYPE_3__*) ;
 int spa_write_cachefile (TYPE_3__*,int,int) ;
 int txg_wait_synced (int ,scalar_t__) ;
 int vdev_autotrim_stop_wait (TYPE_2__*) ;
 int vdev_dtl_reassess (int ,int ,int ,int) ;
 int vdev_free (TYPE_2__*) ;
 int vdev_initialize_stop (TYPE_2__*,int ,int *) ;
 int vdev_trim_stop (TYPE_2__*,int ,int *) ;
 int zio_handle_panic_injection (TYPE_3__*,char*,int ) ;
 scalar_t__ zio_injection_enabled ;

void
spa_vdev_config_exit(spa_t *spa, vdev_t *vd, uint64_t txg, int error, char *tag)
{
 ASSERT(MUTEX_HELD(&spa_namespace_lock));

 int config_changed = B_FALSE;

 ASSERT(txg > spa_last_synced_txg(spa));

 spa->spa_pending_vdev = ((void*)0);




 vdev_dtl_reassess(spa->spa_root_vdev, 0, 0, B_FALSE);

 if (error == 0 && !list_is_empty(&spa->spa_config_dirty_list)) {
  config_changed = B_TRUE;
  spa->spa_config_generation++;
 }




 ASSERT(metaslab_class_validate(spa_normal_class(spa)) == 0);
 ASSERT(metaslab_class_validate(spa_log_class(spa)) == 0);
 ASSERT(metaslab_class_validate(spa_special_class(spa)) == 0);
 ASSERT(metaslab_class_validate(spa_dedup_class(spa)) == 0);

 spa_config_exit(spa, SCL_ALL, spa);






 if (zio_injection_enabled)
  zio_handle_panic_injection(spa, tag, 0);






 if (error == 0)
  txg_wait_synced(spa->spa_dsl_pool, txg);

 if (vd != ((void*)0)) {
  ASSERT(!vd->vdev_detached || vd->vdev_dtl_sm == ((void*)0));
  if (vd->vdev_ops->vdev_op_leaf) {
   mutex_enter(&vd->vdev_initialize_lock);
   vdev_initialize_stop(vd, VDEV_INITIALIZE_CANCELED,
       ((void*)0));
   mutex_exit(&vd->vdev_initialize_lock);

   mutex_enter(&vd->vdev_trim_lock);
   vdev_trim_stop(vd, VDEV_TRIM_CANCELED, ((void*)0));
   mutex_exit(&vd->vdev_trim_lock);
  }




  vdev_autotrim_stop_wait(vd);

  spa_config_enter(spa, SCL_ALL, spa, RW_WRITER);
  vdev_free(vd);
  spa_config_exit(spa, SCL_ALL, spa);
 }




 if (config_changed)
  spa_write_cachefile(spa, B_FALSE, B_TRUE);
}
