
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_11__ {size_t txg; int ndirty; int vs1; } ;
typedef TYPE_1__ txg_stat_t ;
struct TYPE_12__ {int spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_13__ {int * dp_dirty_pertxg; } ;
typedef TYPE_3__ dsl_pool_t ;


 int FTAG ;
 int KM_SLEEP ;
 int RW_READER ;
 int SCL_CONFIG ;
 size_t TXG_MASK ;
 int TXG_STATE_WAIT_FOR_SYNC ;
 int gethrtime () ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int spa_config_enter (TYPE_2__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_2__*,int ,int ) ;
 int spa_txg_history_set (TYPE_2__*,size_t,int ,int ) ;
 int vdev_get_stats (int ,int *) ;
 scalar_t__ zfs_txg_history ;

txg_stat_t *
spa_txg_history_init_io(spa_t *spa, uint64_t txg, dsl_pool_t *dp)
{
 txg_stat_t *ts;

 if (zfs_txg_history == 0)
  return (((void*)0));

 ts = kmem_alloc(sizeof (txg_stat_t), KM_SLEEP);

 spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);
 vdev_get_stats(spa->spa_root_vdev, &ts->vs1);
 spa_config_exit(spa, SCL_CONFIG, FTAG);

 ts->txg = txg;
 ts->ndirty = dp->dp_dirty_pertxg[txg & TXG_MASK];

 spa_txg_history_set(spa, txg, TXG_STATE_WAIT_FOR_SYNC, gethrtime());

 return (ts);
}
