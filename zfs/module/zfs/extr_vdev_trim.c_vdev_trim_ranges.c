
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zfs_btree_t ;
typedef int zfs_btree_index_t ;
struct TYPE_7__ {int * vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
struct TYPE_8__ {int trim_extent_bytes_max; int trim_extent_bytes_min; TYPE_5__* trim_tree; int trim_type; scalar_t__ trim_bytes_done; int trim_start_time; TYPE_1__* trim_vdev; } ;
typedef TYPE_2__ trim_args_t ;
typedef int spa_t ;
typedef int range_seg_t ;
struct TYPE_9__ {int rt_root; } ;


 int MIN (int,int) ;
 int VDEV_LABEL_START_SIZE ;
 int gethrtime () ;
 int rs_get_end (int *,TYPE_5__*) ;
 int rs_get_start (int *,TYPE_5__*) ;
 int spa_iostats_trim_add (int *,int ,int ,int ,int,int,int ,int ) ;
 int vdev_trim_range (TYPE_2__*,int,int ) ;
 int * zfs_btree_first (int *,int *) ;
 int * zfs_btree_next (int *,int *,int *) ;

__attribute__((used)) static int
vdev_trim_ranges(trim_args_t *ta)
{
 vdev_t *vd = ta->trim_vdev;
 zfs_btree_t *t = &ta->trim_tree->rt_root;
 zfs_btree_index_t idx;
 uint64_t extent_bytes_max = ta->trim_extent_bytes_max;
 uint64_t extent_bytes_min = ta->trim_extent_bytes_min;
 spa_t *spa = vd->vdev_spa;

 ta->trim_start_time = gethrtime();
 ta->trim_bytes_done = 0;

 for (range_seg_t *rs = zfs_btree_first(t, &idx); rs != ((void*)0);
     rs = zfs_btree_next(t, &idx, &idx)) {
  uint64_t size = rs_get_end(rs, ta->trim_tree) - rs_get_start(rs,
      ta->trim_tree);

  if (extent_bytes_min && size < extent_bytes_min) {
   spa_iostats_trim_add(spa, ta->trim_type,
       0, 0, 1, size, 0, 0);
   continue;
  }


  uint64_t writes_required = ((size - 1) / extent_bytes_max) + 1;

  for (uint64_t w = 0; w < writes_required; w++) {
   int error;

   error = vdev_trim_range(ta, VDEV_LABEL_START_SIZE +
       rs_get_start(rs, ta->trim_tree) +
       (w *extent_bytes_max), MIN(size -
       (w * extent_bytes_max), extent_bytes_max));
   if (error != 0) {
    return (error);
   }
  }
 }

 return (0);
}
