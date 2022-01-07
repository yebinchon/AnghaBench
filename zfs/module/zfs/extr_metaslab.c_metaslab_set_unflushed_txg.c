
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_8__ {int ms_unflushed_txg; TYPE_2__* ms_group; } ;
typedef TYPE_3__ metaslab_t ;
typedef int dmu_tx_t ;
struct TYPE_7__ {TYPE_1__* mg_vd; } ;
struct TYPE_6__ {int * vdev_spa; } ;


 int SPA_FEATURE_LOG_SPACEMAP ;
 int metaslab_update_ondisk_flush_data (TYPE_3__*,int *) ;
 int spa_feature_is_active (int *,int ) ;

void
metaslab_set_unflushed_txg(metaslab_t *ms, uint64_t txg, dmu_tx_t *tx)
{
 spa_t *spa = ms->ms_group->mg_vd->vdev_spa;

 if (!spa_feature_is_active(spa, SPA_FEATURE_LOG_SPACEMAP))
  return;

 ms->ms_unflushed_txg = txg;
 metaslab_update_ondisk_flush_data(ms, tx);
}
