
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__* vdev_trim_inflight; int vdev_trim_lock; int vdev_trim_cv; int * vdev_trim_thread; scalar_t__ vdev_trim_secure; scalar_t__ vdev_trim_partial; scalar_t__ vdev_trim_rate; int vdev_trim_exit_wanted; int vdev_trim_io_lock; int vdev_trim_io_cv; TYPE_1__* vdev_top; int vdev_detached; scalar_t__ vdev_trim_last_offset; int * vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_17__ {int trim_tree; TYPE_4__* trim_msp; int trim_extent_bytes_min; int trim_flags; int trim_type; int trim_extent_bytes_max; TYPE_2__* trim_vdev; } ;
typedef TYPE_3__ trim_args_t ;
typedef int spa_t ;
struct TYPE_18__ {int ms_lock; int ms_trim; int ms_allocatable; int * ms_sm; } ;
typedef TYPE_4__ metaslab_t ;
struct TYPE_15__ {size_t vdev_ms_count; TYPE_4__** vdev_ms; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int FTAG ;
 int RANGE_SEG64 ;
 int RW_READER ;
 int SCL_CONFIG ;
 int SPA_MINBLOCKSIZE ;
 int TRIM_TYPE_MANUAL ;
 int VDEV_TRIM_COMPLETE ;
 int VERIFY0 (int ) ;
 int ZIO_TRIM_SECURE ;
 int cv_broadcast (int *) ;
 int cv_wait (int *,int *) ;
 int metaslab_disable (TYPE_4__*) ;
 int metaslab_enable (TYPE_4__*,int ,int ) ;
 int metaslab_load (TYPE_4__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int range_tree_create (int *,int ,int *,int ,int ) ;
 int range_tree_destroy (int ) ;
 int range_tree_vacate (int ,int *,int *) ;
 int range_tree_walk (int ,int ,TYPE_3__*) ;
 int spa_config_enter (int *,int ,int ,int ) ;
 int spa_config_exit (int *,int ,int ) ;
 int spa_get_dsl (int *) ;
 int txg_wait_synced (int ,int ) ;
 int vdev_is_concrete (TYPE_2__*) ;
 int vdev_trim_calculate_progress (TYPE_2__*) ;
 int vdev_trim_change_state (TYPE_2__*,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int vdev_trim_load (TYPE_2__*) ;
 int vdev_trim_range_add ;
 int vdev_trim_ranges (TYPE_3__*) ;
 scalar_t__ vdev_writeable (TYPE_2__*) ;
 int zfs_trim_extent_bytes_max ;
 int zfs_trim_extent_bytes_min ;

__attribute__((used)) static void
vdev_trim_thread(void *arg)
{
 vdev_t *vd = arg;
 spa_t *spa = vd->vdev_spa;
 trim_args_t ta;
 int error = 0;






 txg_wait_synced(spa_get_dsl(vd->vdev_spa), 0);

 ASSERT(vdev_is_concrete(vd));
 spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);

 vd->vdev_trim_last_offset = 0;
 vd->vdev_trim_rate = 0;
 vd->vdev_trim_partial = 0;
 vd->vdev_trim_secure = 0;

 VERIFY0(vdev_trim_load(vd));

 ta.trim_vdev = vd;
 ta.trim_extent_bytes_max = zfs_trim_extent_bytes_max;
 ta.trim_extent_bytes_min = zfs_trim_extent_bytes_min;
 ta.trim_tree = range_tree_create(((void*)0), RANGE_SEG64, ((void*)0), 0, 0);
 ta.trim_type = TRIM_TYPE_MANUAL;
 ta.trim_flags = 0;






 if (vd->vdev_trim_secure) {
  ta.trim_flags |= ZIO_TRIM_SECURE;
  ta.trim_extent_bytes_min = SPA_MINBLOCKSIZE;
 }

 uint64_t ms_count = 0;
 for (uint64_t i = 0; !vd->vdev_detached &&
     i < vd->vdev_top->vdev_ms_count; i++) {
  metaslab_t *msp = vd->vdev_top->vdev_ms[i];





  if (vd->vdev_top->vdev_ms_count != ms_count) {
   vdev_trim_calculate_progress(vd);
   ms_count = vd->vdev_top->vdev_ms_count;
  }

  spa_config_exit(spa, SCL_CONFIG, FTAG);
  metaslab_disable(msp);
  mutex_enter(&msp->ms_lock);
  VERIFY0(metaslab_load(msp));





  if (msp->ms_sm == ((void*)0) && vd->vdev_trim_partial) {
   mutex_exit(&msp->ms_lock);
   metaslab_enable(msp, B_FALSE, B_FALSE);
   spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);
   vdev_trim_calculate_progress(vd);
   continue;
  }

  ta.trim_msp = msp;
  range_tree_walk(msp->ms_allocatable, vdev_trim_range_add, &ta);
  range_tree_vacate(msp->ms_trim, ((void*)0), ((void*)0));
  mutex_exit(&msp->ms_lock);

  error = vdev_trim_ranges(&ta);
  metaslab_enable(msp, B_TRUE, B_FALSE);
  spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);

  range_tree_vacate(ta.trim_tree, ((void*)0), ((void*)0));
  if (error != 0)
   break;
 }

 spa_config_exit(spa, SCL_CONFIG, FTAG);
 mutex_enter(&vd->vdev_trim_io_lock);
 while (vd->vdev_trim_inflight[0] > 0) {
  cv_wait(&vd->vdev_trim_io_cv, &vd->vdev_trim_io_lock);
 }
 mutex_exit(&vd->vdev_trim_io_lock);

 range_tree_destroy(ta.trim_tree);

 mutex_enter(&vd->vdev_trim_lock);
 if (!vd->vdev_trim_exit_wanted && vdev_writeable(vd)) {
  vdev_trim_change_state(vd, VDEV_TRIM_COMPLETE,
      vd->vdev_trim_rate, vd->vdev_trim_partial,
      vd->vdev_trim_secure);
 }
 ASSERT(vd->vdev_trim_thread != ((void*)0) || vd->vdev_trim_inflight[0] == 0);
 mutex_exit(&vd->vdev_trim_lock);
 txg_wait_synced(spa_get_dsl(spa), 0);
 mutex_enter(&vd->vdev_trim_lock);

 vd->vdev_trim_thread = ((void*)0);
 cv_broadcast(&vd->vdev_trim_cv);
 mutex_exit(&vd->vdev_trim_lock);
}
