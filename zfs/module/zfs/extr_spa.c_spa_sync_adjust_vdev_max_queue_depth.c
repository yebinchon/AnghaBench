
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int vdev_children; TYPE_3__* vdev_mg; struct TYPE_14__** vdev_child; } ;
typedef TYPE_1__ vdev_t ;
typedef void* uint64_t ;
typedef int uint32_t ;
struct TYPE_15__ {int spa_alloc_count; TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_16__ {int mg_max_alloc_queue_depth; scalar_t__* mg_cur_max_alloc_queue_depth; int * mg_alloc_queue_depth; TYPE_4__* mg_class; } ;
typedef TYPE_3__ metaslab_group_t ;
struct TYPE_17__ {void* mc_alloc_throttle_enabled; void** mc_alloc_max_slots; int * mc_alloc_slots; } ;
typedef TYPE_4__ metaslab_class_t ;


 int ASSERT (int ) ;
 int ASSERT0 (int ) ;
 int metaslab_group_initialized (TYPE_3__*) ;
 TYPE_4__* spa_dedup_class (TYPE_2__*) ;
 TYPE_4__* spa_normal_class (TYPE_2__*) ;
 TYPE_4__* spa_special_class (TYPE_2__*) ;
 int spa_writeable (TYPE_2__*) ;
 int zfs_refcount_count (int *) ;
 int zfs_vdev_async_write_max_active ;
 scalar_t__ zfs_vdev_def_queue_depth ;
 int zfs_vdev_queue_depth_pct ;
 void* zio_dva_throttle_enabled ;

__attribute__((used)) static void
spa_sync_adjust_vdev_max_queue_depth(spa_t *spa)
{
 ASSERT(spa_writeable(spa));

 vdev_t *rvd = spa->spa_root_vdev;
 uint32_t max_queue_depth = zfs_vdev_async_write_max_active *
     zfs_vdev_queue_depth_pct / 100;
 metaslab_class_t *normal = spa_normal_class(spa);
 metaslab_class_t *special = spa_special_class(spa);
 metaslab_class_t *dedup = spa_dedup_class(spa);

 uint64_t slots_per_allocator = 0;
 for (int c = 0; c < rvd->vdev_children; c++) {
  vdev_t *tvd = rvd->vdev_child[c];

  metaslab_group_t *mg = tvd->vdev_mg;
  if (mg == ((void*)0) || !metaslab_group_initialized(mg))
   continue;

  metaslab_class_t *mc = mg->mg_class;
  if (mc != normal && mc != special && mc != dedup)
   continue;






  for (int i = 0; i < spa->spa_alloc_count; i++)
   ASSERT0(zfs_refcount_count(
       &(mg->mg_alloc_queue_depth[i])));
  mg->mg_max_alloc_queue_depth = max_queue_depth;

  for (int i = 0; i < spa->spa_alloc_count; i++) {
   mg->mg_cur_max_alloc_queue_depth[i] =
       zfs_vdev_def_queue_depth;
  }
  slots_per_allocator += zfs_vdev_def_queue_depth;
 }

 for (int i = 0; i < spa->spa_alloc_count; i++) {
  ASSERT0(zfs_refcount_count(&normal->mc_alloc_slots[i]));
  ASSERT0(zfs_refcount_count(&special->mc_alloc_slots[i]));
  ASSERT0(zfs_refcount_count(&dedup->mc_alloc_slots[i]));
  normal->mc_alloc_max_slots[i] = slots_per_allocator;
  special->mc_alloc_max_slots[i] = slots_per_allocator;
  dedup->mc_alloc_max_slots[i] = slots_per_allocator;
 }
 normal->mc_alloc_throttle_enabled = zio_dva_throttle_enabled;
 special->mc_alloc_throttle_enabled = zio_dva_throttle_enabled;
 dedup->mc_alloc_throttle_enabled = zio_dva_throttle_enabled;
}
