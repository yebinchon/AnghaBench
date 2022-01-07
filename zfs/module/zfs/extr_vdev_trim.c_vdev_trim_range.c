
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ vdev_trim_rate; scalar_t__* vdev_trim_inflight; scalar_t__* vdev_trim_offset; size_t vdev_guid; int vdev_trim_lock; TYPE_3__* vdev_spa; int vdev_trim_io_lock; int vdev_top; int vdev_trim_io_cv; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_16__ {size_t trim_type; size_t trim_bytes_done; int trim_flags; TYPE_1__* trim_vdev; } ;
typedef TYPE_2__ trim_args_t ;
struct TYPE_17__ {int * spa_txg_zio; } ;
typedef TYPE_3__ spa_t ;
typedef int dmu_tx_t ;
struct TYPE_18__ {int dp_mos_dir; } ;


 int EINTR ;
 int KM_SLEEP ;
 scalar_t__ MSEC_TO_TICK (int) ;
 int RW_READER ;
 int SCL_STATE_ALL ;
 int SET_ERROR (int ) ;
 size_t TRIM_TYPE_AUTO ;
 size_t TRIM_TYPE_MANUAL ;
 size_t TXG_MASK ;
 int TXG_WAIT ;
 int VERIFY0 (int ) ;
 int ZFS_SPACE_CHECK_RESERVED ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_PRIORITY_TRIM ;
 int cv_timedwait_sig (int *,int *,scalar_t__) ;
 int cv_wait (int *,int *) ;
 scalar_t__ ddi_get_lbolt () ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create_dd (int ) ;
 size_t dmu_tx_get_txg (int *) ;
 int dsl_sync_task_nowait (TYPE_8__*,int ,size_t*,int,int ,int *) ;
 size_t* kmem_zalloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_config_enter (TYPE_3__*,int ,TYPE_1__*,int ) ;
 int spa_config_exit (TYPE_3__*,int ,TYPE_1__*) ;
 TYPE_8__* spa_get_dsl (TYPE_3__*) ;
 int vdev_autotrim_cb ;
 scalar_t__ vdev_autotrim_should_stop (int ) ;
 scalar_t__ vdev_trim_calculate_rate (TYPE_2__*) ;
 int vdev_trim_cb ;
 scalar_t__ vdev_trim_should_stop (TYPE_1__*) ;
 int vdev_trim_zap_update_sync ;
 scalar_t__ zfs_trim_queue_limit ;
 int zio_nowait (int ) ;
 int zio_trim (int ,TYPE_1__*,size_t,size_t,int ,int *,int ,int ,int ) ;

__attribute__((used)) static int
vdev_trim_range(trim_args_t *ta, uint64_t start, uint64_t size)
{
 vdev_t *vd = ta->trim_vdev;
 spa_t *spa = vd->vdev_spa;

 mutex_enter(&vd->vdev_trim_io_lock);





 if (ta->trim_type == TRIM_TYPE_MANUAL) {
  while (vd->vdev_trim_rate != 0 && !vdev_trim_should_stop(vd) &&
      vdev_trim_calculate_rate(ta) > vd->vdev_trim_rate) {
   cv_timedwait_sig(&vd->vdev_trim_io_cv,
       &vd->vdev_trim_io_lock, ddi_get_lbolt() +
       MSEC_TO_TICK(10));
  }
 }
 ta->trim_bytes_done += size;


 while (vd->vdev_trim_inflight[0] + vd->vdev_trim_inflight[1] >=
     zfs_trim_queue_limit) {
  cv_wait(&vd->vdev_trim_io_cv, &vd->vdev_trim_io_lock);
 }
 vd->vdev_trim_inflight[ta->trim_type]++;
 mutex_exit(&vd->vdev_trim_io_lock);

 dmu_tx_t *tx = dmu_tx_create_dd(spa_get_dsl(spa)->dp_mos_dir);
 VERIFY0(dmu_tx_assign(tx, TXG_WAIT));
 uint64_t txg = dmu_tx_get_txg(tx);

 spa_config_enter(spa, SCL_STATE_ALL, vd, RW_READER);
 mutex_enter(&vd->vdev_trim_lock);

 if (ta->trim_type == TRIM_TYPE_MANUAL &&
     vd->vdev_trim_offset[txg & TXG_MASK] == 0) {
  uint64_t *guid = kmem_zalloc(sizeof (uint64_t), KM_SLEEP);
  *guid = vd->vdev_guid;


  dsl_sync_task_nowait(spa_get_dsl(spa),
      vdev_trim_zap_update_sync, guid, 2,
      ZFS_SPACE_CHECK_RESERVED, tx);
 }





 if ((ta->trim_type == TRIM_TYPE_MANUAL &&
     vdev_trim_should_stop(vd)) ||
     (ta->trim_type == TRIM_TYPE_AUTO &&
     vdev_autotrim_should_stop(vd->vdev_top))) {
  mutex_enter(&vd->vdev_trim_io_lock);
  vd->vdev_trim_inflight[ta->trim_type]--;
  mutex_exit(&vd->vdev_trim_io_lock);
  spa_config_exit(vd->vdev_spa, SCL_STATE_ALL, vd);
  mutex_exit(&vd->vdev_trim_lock);
  dmu_tx_commit(tx);
  return (SET_ERROR(EINTR));
 }
 mutex_exit(&vd->vdev_trim_lock);

 if (ta->trim_type == TRIM_TYPE_MANUAL)
  vd->vdev_trim_offset[txg & TXG_MASK] = start + size;

 zio_nowait(zio_trim(spa->spa_txg_zio[txg & TXG_MASK], vd,
     start, size, ta->trim_type == TRIM_TYPE_MANUAL ?
     vdev_trim_cb : vdev_autotrim_cb, ((void*)0),
     ZIO_PRIORITY_TRIM, ZIO_FLAG_CANFAIL, ta->trim_flags));


 dmu_tx_commit(tx);

 return (0);
}
