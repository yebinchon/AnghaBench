
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_18__ ;


struct TYPE_27__ {scalar_t__ vdev_children; scalar_t__ vdev_ashift; int vdev_id; struct TYPE_27__** vdev_child; TYPE_6__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef scalar_t__ uint_t ;
typedef size_t uint64_t ;
struct TYPE_25__ {void* sav_sync; } ;
struct TYPE_26__ {int sr_prev_indirect_vdev; } ;
struct TYPE_28__ {scalar_t__ spa_max_ashift; TYPE_18__ spa_l2cache; TYPE_18__ spa_spares; int * spa_vdev_removal; TYPE_1__ spa_removing_phys; TYPE_2__* spa_pending_vdev; TYPE_2__* spa_root_vdev; } ;
typedef TYPE_3__ spa_t ;
typedef int nvlist_t ;
struct TYPE_29__ {int vdev_op_leaf; } ;


 int ASSERT (int ) ;
 int B_FALSE ;
 void* B_TRUE ;
 int EINVAL ;
 int ESC_ZFS_VDEV_ADD ;
 int SPA_CONFIG_UPDATE_POOL ;
 int VDEV_ALLOC_ADD ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_SPARES ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,scalar_t__*) ;
 int spa_config_parse (TYPE_3__*,TYPE_2__**,int *,int *,int ,int ) ;
 int spa_config_update (TYPE_3__*,int ) ;
 int spa_event_notify (TYPE_3__*,int *,int *,int ) ;
 int spa_load_l2cache (TYPE_3__*) ;
 int spa_load_spares (TYPE_3__*) ;
 int spa_namespace_lock ;
 int spa_set_aux_vdevs (TYPE_18__*,int **,scalar_t__,int ) ;
 int spa_validate_aux (TYPE_3__*,int *,size_t,int ) ;
 size_t spa_vdev_enter (TYPE_3__*) ;
 int spa_vdev_exit (TYPE_3__*,TYPE_2__*,size_t,int) ;
 int spa_writeable (TYPE_3__*) ;
 int vdev_add_child (TYPE_2__*,TYPE_2__*) ;
 int vdev_config_dirty (TYPE_2__*) ;
 int vdev_create (TYPE_2__*,size_t,int ) ;
 TYPE_6__ vdev_mirror_ops ;
 TYPE_6__ vdev_raidz_ops ;
 int vdev_remove_child (TYPE_2__*,TYPE_2__*) ;

int
spa_vdev_add(spa_t *spa, nvlist_t *nvroot)
{
 uint64_t txg;
 int error;
 vdev_t *rvd = spa->spa_root_vdev;
 vdev_t *vd, *tvd;
 nvlist_t **spares, **l2cache;
 uint_t nspares, nl2cache;

 ASSERT(spa_writeable(spa));

 txg = spa_vdev_enter(spa);

 if ((error = spa_config_parse(spa, &vd, nvroot, ((void*)0), 0,
     VDEV_ALLOC_ADD)) != 0)
  return (spa_vdev_exit(spa, ((void*)0), txg, error));

 spa->spa_pending_vdev = vd;

 if (nvlist_lookup_nvlist_array(nvroot, ZPOOL_CONFIG_SPARES, &spares,
     &nspares) != 0)
  nspares = 0;

 if (nvlist_lookup_nvlist_array(nvroot, ZPOOL_CONFIG_L2CACHE, &l2cache,
     &nl2cache) != 0)
  nl2cache = 0;

 if (vd->vdev_children == 0 && nspares == 0 && nl2cache == 0)
  return (spa_vdev_exit(spa, vd, txg, EINVAL));

 if (vd->vdev_children != 0 &&
     (error = vdev_create(vd, txg, B_FALSE)) != 0)
  return (spa_vdev_exit(spa, vd, txg, error));





 if ((error = spa_validate_aux(spa, nvroot, txg, VDEV_ALLOC_ADD)) != 0)
  return (spa_vdev_exit(spa, vd, txg, error));







 if (spa->spa_vdev_removal != ((void*)0) ||
     spa->spa_removing_phys.sr_prev_indirect_vdev != -1) {
  for (int c = 0; c < vd->vdev_children; c++) {
   tvd = vd->vdev_child[c];
   if (spa->spa_vdev_removal != ((void*)0) &&
       tvd->vdev_ashift != spa->spa_max_ashift) {
    return (spa_vdev_exit(spa, vd, txg, EINVAL));
   }

   if (tvd->vdev_ops == &vdev_raidz_ops) {
    return (spa_vdev_exit(spa, vd, txg, EINVAL));
   }




   if (tvd->vdev_ops == &vdev_mirror_ops) {
    for (uint64_t cid = 0;
        cid < tvd->vdev_children; cid++) {
     vdev_t *cvd = tvd->vdev_child[cid];
     if (!cvd->vdev_ops->vdev_op_leaf) {
      return (spa_vdev_exit(spa, vd,
          txg, EINVAL));
     }
    }
   }
  }
 }

 for (int c = 0; c < vd->vdev_children; c++) {
  tvd = vd->vdev_child[c];
  vdev_remove_child(vd, tvd);
  tvd->vdev_id = rvd->vdev_children;
  vdev_add_child(rvd, tvd);
  vdev_config_dirty(tvd);
 }

 if (nspares != 0) {
  spa_set_aux_vdevs(&spa->spa_spares, spares, nspares,
      ZPOOL_CONFIG_SPARES);
  spa_load_spares(spa);
  spa->spa_spares.sav_sync = B_TRUE;
 }

 if (nl2cache != 0) {
  spa_set_aux_vdevs(&spa->spa_l2cache, l2cache, nl2cache,
      ZPOOL_CONFIG_L2CACHE);
  spa_load_l2cache(spa);
  spa->spa_l2cache.sav_sync = B_TRUE;
 }
 (void) spa_vdev_exit(spa, vd, txg, 0);

 mutex_enter(&spa_namespace_lock);
 spa_config_update(spa, SPA_CONFIG_UPDATE_POOL);
 spa_event_notify(spa, ((void*)0), ((void*)0), ESC_ZFS_VDEV_ADD);
 mutex_exit(&spa_namespace_lock);

 return (0);
}
