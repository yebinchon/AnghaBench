
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ vs_aux; } ;
struct TYPE_11__ {TYPE_1__ vdev_stat; void* vdev_offline; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_12__ {int spa_root_vdev; } ;
typedef TYPE_3__ spa_t ;
typedef int nvlist_t ;
typedef void* boolean_t ;


 void* B_FALSE ;
 void* B_TRUE ;
 int KM_SLEEP ;
 scalar_t__ VDEV_AUX_SPLIT_POOL ;
 int ZPOOL_CONFIG_SPLIT ;
 int ZPOOL_CONFIG_SPLIT_LIST ;
 int kmem_free (TYPE_2__**,int) ;
 TYPE_2__** kmem_zalloc (int,int ) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_uint64_array (int *,int ,scalar_t__**,int*) ;
 TYPE_2__* spa_lookup_by_guid (TYPE_3__*,scalar_t__,void*) ;
 int vdev_reopen (int ) ;
 int vdev_split (TYPE_2__*) ;

__attribute__((used)) static void
spa_try_repair(spa_t *spa, nvlist_t *config)
{
 uint_t extracted;
 uint64_t *glist;
 uint_t i, gcount;
 nvlist_t *nvl;
 vdev_t **vd;
 boolean_t attempt_reopen;

 if (nvlist_lookup_nvlist(config, ZPOOL_CONFIG_SPLIT, &nvl) != 0)
  return;


 if (nvlist_lookup_uint64_array(nvl, ZPOOL_CONFIG_SPLIT_LIST,
     &glist, &gcount) != 0)
  return;

 vd = kmem_zalloc(gcount * sizeof (vdev_t *), KM_SLEEP);


 attempt_reopen = B_TRUE;
 for (i = 0; i < gcount; i++) {
  if (glist[i] == 0)
   continue;

  vd[i] = spa_lookup_by_guid(spa, glist[i], B_FALSE);
  if (vd[i] == ((void*)0)) {




   attempt_reopen = B_FALSE;
  } else {

   vd[i]->vdev_offline = B_FALSE;
  }
 }

 if (attempt_reopen) {
  vdev_reopen(spa->spa_root_vdev);


  for (extracted = 0, i = 0; i < gcount; i++) {
   if (vd[i] != ((void*)0) &&
       vd[i]->vdev_stat.vs_aux != VDEV_AUX_SPLIT_POOL)
    break;
   ++extracted;
  }
 }






 if (!attempt_reopen || gcount == extracted) {
  for (i = 0; i < gcount; i++)
   if (vd[i] != ((void*)0))
    vdev_split(vd[i]);
  vdev_reopen(spa->spa_root_vdev);
 }

 kmem_free(vd, gcount * sizeof (vdev_t *));
}
