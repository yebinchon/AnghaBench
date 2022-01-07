
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef int space_map_t ;
typedef int spa_t ;
struct TYPE_7__ {int ms_synchist; int * ms_deferhist; int * ms_sm; TYPE_2__* ms_group; } ;
typedef TYPE_3__ metaslab_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {TYPE_1__* mg_vd; } ;
struct TYPE_5__ {int * vdev_spa; } ;


 size_t TXG_DEFER_SIZE ;
 int bcopy (int ,int ,int) ;
 int bzero (int ,int) ;
 size_t spa_syncing_txg (int *) ;

__attribute__((used)) static void
metaslab_aux_histograms_update_done(metaslab_t *msp, boolean_t defer_allowed)
{
 spa_t *spa = msp->ms_group->mg_vd->vdev_spa;
 space_map_t *sm = msp->ms_sm;

 if (sm == ((void*)0)) {





  return;
 }





 uint64_t hist_index = spa_syncing_txg(spa) % TXG_DEFER_SIZE;
 if (defer_allowed) {
  bcopy(msp->ms_synchist, msp->ms_deferhist[hist_index],
      sizeof (msp->ms_synchist));
 } else {
  bzero(msp->ms_deferhist[hist_index],
      sizeof (msp->ms_deferhist[hist_index]));
 }
 bzero(msp->ms_synchist, sizeof (msp->ms_synchist));
}
