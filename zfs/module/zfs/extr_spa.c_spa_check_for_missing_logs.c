
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int vdev_children; scalar_t__ vdev_state; scalar_t__ vdev_islog; struct TYPE_10__** vdev_child; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_11__ {int spa_import_flags; int spa_load_info; TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
typedef int nvlist_t ;


 int B_FALSE ;
 int ENXIO ;
 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int SET_ERROR (int ) ;
 int SPA_LOG_CLEAR ;
 int VDEV_CONFIG_MISSING ;
 scalar_t__ VDEV_STATE_CANT_OPEN ;
 int VERIFY (int) ;
 int ZFS_IMPORT_MISSING_LOG ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_MISSING_DEVICES ;
 int fnvlist_add_nvlist (int ,int ,int *) ;
 int fnvlist_add_nvlist_array (int *,int ,int **,size_t) ;
 int ** kmem_alloc (int,int ) ;
 int kmem_free (int **,int) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int spa_load_failed (TYPE_2__*,char*) ;
 int spa_load_note (TYPE_2__*,char*) ;
 int spa_set_log_state (TYPE_2__*,int ) ;
 int * vdev_config_generate (TYPE_2__*,TYPE_1__*,int ,int ) ;
 int vdev_dbgmsg_print_tree (TYPE_1__*,int) ;

__attribute__((used)) static int
spa_check_for_missing_logs(spa_t *spa)
{
 vdev_t *rvd = spa->spa_root_vdev;






 if (!(spa->spa_import_flags & ZFS_IMPORT_MISSING_LOG)) {
  nvlist_t **child, *nv;
  uint64_t idx = 0;

  child = kmem_alloc(rvd->vdev_children * sizeof (nvlist_t *),
      KM_SLEEP);
  VERIFY(nvlist_alloc(&nv, NV_UNIQUE_NAME, KM_SLEEP) == 0);

  for (uint64_t c = 0; c < rvd->vdev_children; c++) {
   vdev_t *tvd = rvd->vdev_child[c];






   if (tvd->vdev_islog &&
       tvd->vdev_state == VDEV_STATE_CANT_OPEN) {
    child[idx++] = vdev_config_generate(spa, tvd,
        B_FALSE, VDEV_CONFIG_MISSING);
   }
  }

  if (idx > 0) {
   fnvlist_add_nvlist_array(nv,
       ZPOOL_CONFIG_CHILDREN, child, idx);
   fnvlist_add_nvlist(spa->spa_load_info,
       ZPOOL_CONFIG_MISSING_DEVICES, nv);

   for (uint64_t i = 0; i < idx; i++)
    nvlist_free(child[i]);
  }
  nvlist_free(nv);
  kmem_free(child, rvd->vdev_children * sizeof (char **));

  if (idx > 0) {
   spa_load_failed(spa, "some log devices are missing");
   vdev_dbgmsg_print_tree(rvd, 2);
   return (SET_ERROR(ENXIO));
  }
 } else {
  for (uint64_t c = 0; c < rvd->vdev_children; c++) {
   vdev_t *tvd = rvd->vdev_child[c];

   if (tvd->vdev_islog &&
       tvd->vdev_state == VDEV_STATE_CANT_OPEN) {
    spa_set_log_state(spa, SPA_LOG_CLEAR);
    spa_load_note(spa, "some log devices are "
        "missing, ZIL is dropped.");
    vdev_dbgmsg_print_tree(rvd, 2);
    break;
   }
  }
 }

 return (0);
}
