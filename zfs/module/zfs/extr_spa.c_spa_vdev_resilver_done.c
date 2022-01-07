
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ vdev_id; int vdev_children; scalar_t__ vdev_resilver_txg; TYPE_1__** vdev_child; int * vdev_ops; scalar_t__ vdev_guid; struct TYPE_11__* vdev_parent; } ;
typedef TYPE_2__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_12__ {int spa_root_vdev; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_10__ {scalar_t__ vdev_guid; } ;


 int ASSERT (int) ;
 int B_TRUE ;
 int FTAG ;
 int RW_WRITER ;
 int SCL_ALL ;
 int spa_config_enter (TYPE_3__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_3__*,int ,int ) ;
 scalar_t__ spa_vdev_detach (TYPE_3__*,scalar_t__,scalar_t__,int ) ;
 TYPE_2__* spa_vdev_resilver_done_hunt (int ) ;
 int vdev_dtl_required (TYPE_2__*) ;
 int vdev_replacing_ops ;
 int vdev_spare_ops ;

__attribute__((used)) static void
spa_vdev_resilver_done(spa_t *spa)
{
 vdev_t *vd, *pvd, *ppvd;
 uint64_t guid, sguid, pguid, ppguid;

 spa_config_enter(spa, SCL_ALL, FTAG, RW_WRITER);

 while ((vd = spa_vdev_resilver_done_hunt(spa->spa_root_vdev)) != ((void*)0)) {
  pvd = vd->vdev_parent;
  ppvd = pvd->vdev_parent;
  guid = vd->vdev_guid;
  pguid = pvd->vdev_guid;
  ppguid = ppvd->vdev_guid;
  sguid = 0;





  if (ppvd->vdev_ops == &vdev_spare_ops && pvd->vdev_id == 0 &&
      ppvd->vdev_children == 2) {
   ASSERT(pvd->vdev_ops == &vdev_replacing_ops);
   sguid = ppvd->vdev_child[1]->vdev_guid;
  }
  ASSERT(vd->vdev_resilver_txg == 0 || !vdev_dtl_required(vd));

  spa_config_exit(spa, SCL_ALL, FTAG);
  if (spa_vdev_detach(spa, guid, pguid, B_TRUE) != 0)
   return;
  if (sguid && spa_vdev_detach(spa, sguid, ppguid, B_TRUE) != 0)
   return;
  spa_config_enter(spa, SCL_ALL, FTAG, RW_WRITER);
 }

 spa_config_exit(spa, SCL_ALL, FTAG);
}
