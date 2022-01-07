
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__* vs_ops; scalar_t__* vs_bytes; } ;
struct TYPE_15__ {scalar_t__* vs_ops; scalar_t__* vs_bytes; } ;
struct TYPE_13__ {int ndirty; TYPE_1__ vs1; TYPE_4__ vs2; int txg; } ;
typedef TYPE_2__ txg_stat_t ;
struct TYPE_14__ {int spa_root_vdev; } ;
typedef TYPE_3__ spa_t ;


 int FTAG ;
 int RW_READER ;
 int SCL_CONFIG ;
 int TXG_STATE_SYNCED ;
 size_t ZIO_TYPE_READ ;
 size_t ZIO_TYPE_WRITE ;
 int gethrtime () ;
 int kmem_free (TYPE_2__*,int) ;
 int spa_config_enter (TYPE_3__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_3__*,int ,int ) ;
 int spa_txg_history_set (TYPE_3__*,int ,int ,int ) ;
 int spa_txg_history_set_io (TYPE_3__*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int vdev_get_stats (int ,TYPE_4__*) ;
 scalar_t__ zfs_txg_history ;

void
spa_txg_history_fini_io(spa_t *spa, txg_stat_t *ts)
{
 if (ts == ((void*)0))
  return;

 if (zfs_txg_history == 0) {
  kmem_free(ts, sizeof (txg_stat_t));
  return;
 }

 spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);
 vdev_get_stats(spa->spa_root_vdev, &ts->vs2);
 spa_config_exit(spa, SCL_CONFIG, FTAG);

 spa_txg_history_set(spa, ts->txg, TXG_STATE_SYNCED, gethrtime());
 spa_txg_history_set_io(spa, ts->txg,
     ts->vs2.vs_bytes[ZIO_TYPE_READ] - ts->vs1.vs_bytes[ZIO_TYPE_READ],
     ts->vs2.vs_bytes[ZIO_TYPE_WRITE] - ts->vs1.vs_bytes[ZIO_TYPE_WRITE],
     ts->vs2.vs_ops[ZIO_TYPE_READ] - ts->vs1.vs_ops[ZIO_TYPE_READ],
     ts->vs2.vs_ops[ZIO_TYPE_WRITE] - ts->vs1.vs_ops[ZIO_TYPE_WRITE],
     ts->ndirty);

 kmem_free(ts, sizeof (txg_stat_t));
}
