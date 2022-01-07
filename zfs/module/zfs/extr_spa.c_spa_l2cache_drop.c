
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int vdev_guid; } ;
typedef TYPE_1__ vdev_t ;
typedef unsigned long long uint64_t ;
struct TYPE_9__ {int sav_count; TYPE_1__** sav_vdevs; } ;
struct TYPE_8__ {TYPE_3__ spa_l2cache; } ;
typedef TYPE_2__ spa_t ;
typedef TYPE_3__ spa_aux_vdev_t ;


 int ASSERT (int ) ;
 int l2arc_remove_vdev (TYPE_1__*) ;
 scalar_t__ l2arc_vdev_present (TYPE_1__*) ;
 scalar_t__ spa_l2cache_exists (int ,unsigned long long*) ;

void
spa_l2cache_drop(spa_t *spa)
{
 vdev_t *vd;
 int i;
 spa_aux_vdev_t *sav = &spa->spa_l2cache;

 for (i = 0; i < sav->sav_count; i++) {
  uint64_t pool;

  vd = sav->sav_vdevs[i];
  ASSERT(vd != ((void*)0));

  if (spa_l2cache_exists(vd->vdev_guid, &pool) &&
      pool != 0ULL && l2arc_vdev_present(vd))
   l2arc_remove_vdev(vd);
 }
}
