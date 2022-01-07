
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int vdev_ms_count; int vdev_nonrot; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
struct TYPE_7__ {int ms_size; int ms_fragmentation; int ms_id; int ms_weight; scalar_t__ ms_loaded; int ms_lock; TYPE_3__* ms_group; } ;
typedef TYPE_2__ metaslab_t ;
struct TYPE_8__ {TYPE_1__* mg_vd; } ;
typedef TYPE_3__ metaslab_group_t ;


 int ASSERT (int) ;
 int METASLAB_ACTIVE_MASK ;
 int MUTEX_HELD (int *) ;
 int SPA_MINBLOCKSIZE ;
 int WEIGHT_SET_SPACEBASED (int) ;
 int ZFS_FRAG_INVALID ;
 int metaslab_allocated_space (TYPE_2__*) ;
 scalar_t__ metaslab_fragmentation_factor_enabled ;
 scalar_t__ metaslab_lba_weighting_enabled ;
 int zfs_metaslab_fragmentation_threshold ;

__attribute__((used)) static uint64_t
metaslab_space_weight(metaslab_t *msp)
{
 metaslab_group_t *mg = msp->ms_group;
 vdev_t *vd = mg->mg_vd;
 uint64_t weight, space;

 ASSERT(MUTEX_HELD(&msp->ms_lock));




 space = msp->ms_size - metaslab_allocated_space(msp);

 if (metaslab_fragmentation_factor_enabled &&
     msp->ms_fragmentation != ZFS_FRAG_INVALID) {







  space = (space * (100 - (msp->ms_fragmentation - 1))) / 100;
  if (space > 0 && space < SPA_MINBLOCKSIZE)
   space = SPA_MINBLOCKSIZE;
 }
 weight = space;
 if (!vd->vdev_nonrot && metaslab_lba_weighting_enabled) {
  weight = 2 * weight - (msp->ms_id * weight) / vd->vdev_ms_count;
  ASSERT(weight >= space && weight <= 2 * space);
 }







 if (msp->ms_loaded && msp->ms_fragmentation != ZFS_FRAG_INVALID &&
     msp->ms_fragmentation <= zfs_metaslab_fragmentation_threshold) {
  weight |= (msp->ms_weight & METASLAB_ACTIVE_MASK);
 }

 WEIGHT_SET_SPACEBASED(weight);
 return (weight);
}
