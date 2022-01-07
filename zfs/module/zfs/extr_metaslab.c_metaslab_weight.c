
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int * vdev_spa; } ;
typedef TYPE_4__ vdev_t ;
typedef int uint64_t ;
typedef int space_map_phys_t ;
typedef int spa_t ;
struct TYPE_16__ {TYPE_2__* ms_sm; int ms_max_size; scalar_t__ ms_loaded; int ms_lock; TYPE_3__* ms_group; } ;
typedef TYPE_5__ metaslab_t ;
typedef int boolean_t ;
struct TYPE_14__ {TYPE_4__* mg_vd; } ;
struct TYPE_13__ {TYPE_1__* sm_dbuf; } ;
struct TYPE_12__ {int db_size; } ;


 int ASSERT (int ) ;
 int MAX (int ,int ) ;
 int MUTEX_HELD (int *) ;
 int SPA_FEATURE_SPACEMAP_HISTOGRAM ;
 int metaslab_largest_allocatable (TYPE_5__*) ;
 int metaslab_largest_unflushed_free (TYPE_5__*) ;
 int metaslab_segment_weight (TYPE_5__*) ;
 int metaslab_set_fragmentation (TYPE_5__*,int ) ;
 int metaslab_space_weight (TYPE_5__*) ;
 scalar_t__ spa_feature_is_enabled (int *,int ) ;
 scalar_t__ zfs_metaslab_segment_weight_enabled ;

__attribute__((used)) static uint64_t
metaslab_weight(metaslab_t *msp, boolean_t nodirty)
{
 vdev_t *vd = msp->ms_group->mg_vd;
 spa_t *spa = vd->vdev_spa;
 uint64_t weight;

 ASSERT(MUTEX_HELD(&msp->ms_lock));

 metaslab_set_fragmentation(msp, nodirty);
 if (msp->ms_loaded) {
  msp->ms_max_size = metaslab_largest_allocatable(msp);
 } else {
  msp->ms_max_size = MAX(msp->ms_max_size,
      metaslab_largest_unflushed_free(msp));
 }




 if (zfs_metaslab_segment_weight_enabled &&
     spa_feature_is_enabled(spa, SPA_FEATURE_SPACEMAP_HISTOGRAM) &&
     (msp->ms_sm == ((void*)0) || msp->ms_sm->sm_dbuf->db_size ==
     sizeof (space_map_phys_t))) {
  weight = metaslab_segment_weight(msp);
 } else {
  weight = metaslab_space_weight(msp);
 }
 return (weight);
}
