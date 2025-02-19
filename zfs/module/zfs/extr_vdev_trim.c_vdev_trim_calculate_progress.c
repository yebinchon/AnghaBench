
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int zfs_btree_t ;
typedef int zfs_btree_index_t ;
struct TYPE_15__ {scalar_t__ vdev_leaf_zap; size_t vdev_trim_bytes_est; size_t vdev_trim_bytes_done; scalar_t__ vdev_trim_last_offset; TYPE_1__* vdev_top; int vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_16__ {int rt_root; } ;
typedef TYPE_3__ range_tree_t ;
typedef int range_seg_t ;
struct TYPE_17__ {scalar_t__ rs_start; scalar_t__ rs_end; } ;
typedef TYPE_4__ range_seg64_t ;
struct TYPE_18__ {size_t ms_size; scalar_t__ ms_start; int ms_lock; TYPE_3__* ms_allocatable; } ;
typedef TYPE_5__ metaslab_t ;
struct TYPE_14__ {size_t vdev_ms_count; size_t vdev_children; int * vdev_ops; TYPE_5__** vdev_ms; } ;


 int ASSERT (int) ;
 int RW_READER ;
 int RW_WRITER ;
 int SCL_CONFIG ;
 int VERIFY0 (int ) ;
 size_t metaslab_allocated_space (TYPE_5__*) ;
 int metaslab_load (TYPE_5__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ rs_get_end (int *,TYPE_3__*) ;
 scalar_t__ rs_get_start (int *,TYPE_3__*) ;
 scalar_t__ spa_config_held (int ,int ,int ) ;
 int vdev_raidz_ops ;
 int vdev_xlate (TYPE_2__*,TYPE_4__*,TYPE_4__*) ;
 int * zfs_btree_first (int *,int *) ;
 int * zfs_btree_next (int *,int *,int *) ;

__attribute__((used)) static void
vdev_trim_calculate_progress(vdev_t *vd)
{
 ASSERT(spa_config_held(vd->vdev_spa, SCL_CONFIG, RW_READER) ||
     spa_config_held(vd->vdev_spa, SCL_CONFIG, RW_WRITER));
 ASSERT(vd->vdev_leaf_zap != 0);

 vd->vdev_trim_bytes_est = 0;
 vd->vdev_trim_bytes_done = 0;

 for (uint64_t i = 0; i < vd->vdev_top->vdev_ms_count; i++) {
  metaslab_t *msp = vd->vdev_top->vdev_ms[i];
  mutex_enter(&msp->ms_lock);

  uint64_t ms_free = msp->ms_size -
      metaslab_allocated_space(msp);

  if (vd->vdev_top->vdev_ops == &vdev_raidz_ops)
   ms_free /= vd->vdev_top->vdev_children;






  range_seg64_t logical_rs, physical_rs;
  logical_rs.rs_start = msp->ms_start;
  logical_rs.rs_end = msp->ms_start + msp->ms_size;
  vdev_xlate(vd, &logical_rs, &physical_rs);

  if (vd->vdev_trim_last_offset <= physical_rs.rs_start) {
   vd->vdev_trim_bytes_est += ms_free;
   mutex_exit(&msp->ms_lock);
   continue;
  } else if (vd->vdev_trim_last_offset > physical_rs.rs_end) {
   vd->vdev_trim_bytes_done += ms_free;
   vd->vdev_trim_bytes_est += ms_free;
   mutex_exit(&msp->ms_lock);
   continue;
  }






  VERIFY0(metaslab_load(msp));

  range_tree_t *rt = msp->ms_allocatable;
  zfs_btree_t *bt = &rt->rt_root;
  zfs_btree_index_t idx;
  for (range_seg_t *rs = zfs_btree_first(bt, &idx);
      rs != ((void*)0); rs = zfs_btree_next(bt, &idx, &idx)) {
   logical_rs.rs_start = rs_get_start(rs, rt);
   logical_rs.rs_end = rs_get_end(rs, rt);
   vdev_xlate(vd, &logical_rs, &physical_rs);

   uint64_t size = physical_rs.rs_end -
       physical_rs.rs_start;
   vd->vdev_trim_bytes_est += size;
   if (vd->vdev_trim_last_offset >= physical_rs.rs_end) {
    vd->vdev_trim_bytes_done += size;
   } else if (vd->vdev_trim_last_offset >
       physical_rs.rs_start &&
       vd->vdev_trim_last_offset <=
       physical_rs.rs_end) {
    vd->vdev_trim_bytes_done +=
        vd->vdev_trim_last_offset -
        physical_rs.rs_start;
   }
  }
  mutex_exit(&msp->ms_lock);
 }
}
