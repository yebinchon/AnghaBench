
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_mg; int vdev_ms_list; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
typedef int metaslab_t ;
typedef int boolean_t ;


 int ASSERT (int ) ;
 int TXG_CLEAN (int ) ;
 int metaslab_sync_done (int *,int ) ;
 int metaslab_sync_reassess (int ) ;
 int txg_list_empty (int *,int ) ;
 int * txg_list_remove (int *,int ) ;
 int vdev_is_concrete (TYPE_1__*) ;

void
vdev_sync_done(vdev_t *vd, uint64_t txg)
{
 metaslab_t *msp;
 boolean_t reassess = !txg_list_empty(&vd->vdev_ms_list, TXG_CLEAN(txg));

 ASSERT(vdev_is_concrete(vd));

 while ((msp = txg_list_remove(&vd->vdev_ms_list, TXG_CLEAN(txg)))
     != ((void*)0))
  metaslab_sync_done(msp, txg);

 if (reassess)
  metaslab_sync_reassess(vd->vdev_mg);
}
