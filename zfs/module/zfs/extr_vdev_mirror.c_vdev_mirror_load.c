
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ vdev_nonrot; TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_10__ {scalar_t__ mm_root; } ;
typedef TYPE_3__ mirror_map_t ;
typedef scalar_t__ int64_t ;
struct TYPE_8__ {scalar_t__ vdev_op_leaf; } ;


 scalar_t__ ABS (scalar_t__) ;
 int INT_MAX ;
 int MIRROR_BUMP (int ) ;
 scalar_t__ VDEV_LABEL_START_SIZE ;
 int vdev_mirror_stat_non_rotating_linear ;
 int vdev_mirror_stat_non_rotating_seek ;
 int vdev_mirror_stat_rotating_linear ;
 int vdev_mirror_stat_rotating_offset ;
 int vdev_mirror_stat_rotating_seek ;
 scalar_t__ vdev_queue_last_offset (TYPE_2__*) ;
 int vdev_queue_length (TYPE_2__*) ;
 int zfs_vdev_mirror_non_rotating_inc ;
 int zfs_vdev_mirror_non_rotating_seek_inc ;
 int zfs_vdev_mirror_rotating_inc ;
 int zfs_vdev_mirror_rotating_seek_inc ;
 scalar_t__ zfs_vdev_mirror_rotating_seek_offset ;

__attribute__((used)) static int
vdev_mirror_load(mirror_map_t *mm, vdev_t *vd, uint64_t zio_offset)
{
 uint64_t last_offset;
 int64_t offset_diff;
 int load;


 if (mm->mm_root)
  return (INT_MAX);
 if (vd->vdev_ops->vdev_op_leaf)
  zio_offset += VDEV_LABEL_START_SIZE;


 load = vdev_queue_length(vd);
 last_offset = vdev_queue_last_offset(vd);

 if (vd->vdev_nonrot) {

  if (last_offset == zio_offset) {
   MIRROR_BUMP(vdev_mirror_stat_non_rotating_linear);
   return (load + zfs_vdev_mirror_non_rotating_inc);
  }







  MIRROR_BUMP(vdev_mirror_stat_non_rotating_seek);
  return (load + zfs_vdev_mirror_non_rotating_seek_inc);
 }


 if (last_offset == zio_offset) {
  MIRROR_BUMP(vdev_mirror_stat_rotating_linear);
  return (load + zfs_vdev_mirror_rotating_inc);
 }






 offset_diff = (int64_t)(last_offset - zio_offset);
 if (ABS(offset_diff) < zfs_vdev_mirror_rotating_seek_offset) {
  MIRROR_BUMP(vdev_mirror_stat_rotating_offset);
  return (load + (zfs_vdev_mirror_rotating_seek_inc / 2));
 }


 MIRROR_BUMP(vdev_mirror_stat_rotating_seek);
 return (load + zfs_vdev_mirror_rotating_seek_inc);
}
