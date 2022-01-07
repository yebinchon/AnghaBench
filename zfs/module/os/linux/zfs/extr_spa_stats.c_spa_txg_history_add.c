
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_11__ {int * times; int state; int txg; } ;
typedef TYPE_2__ spa_txg_history_t ;
struct TYPE_14__ {int pl_lock; } ;
struct TYPE_13__ {scalar_t__ size; TYPE_7__ procfs_list; } ;
struct TYPE_10__ {TYPE_4__ txg_history; } ;
struct TYPE_12__ {TYPE_1__ spa_stats; } ;
typedef TYPE_3__ spa_t ;
typedef TYPE_4__ spa_history_list_t ;
typedef int hrtime_t ;


 int KM_SLEEP ;
 size_t TXG_STATE_BIRTH ;
 int TXG_STATE_OPEN ;
 TYPE_2__* kmem_zalloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int procfs_list_add (TYPE_7__*,TYPE_2__*) ;
 int spa_txg_history_truncate (TYPE_4__*,scalar_t__) ;
 scalar_t__ zfs_txg_history ;

void
spa_txg_history_add(spa_t *spa, uint64_t txg, hrtime_t birth_time)
{
 spa_history_list_t *shl = &spa->spa_stats.txg_history;
 spa_txg_history_t *sth;

 if (zfs_txg_history == 0 && shl->size == 0)
  return;

 sth = kmem_zalloc(sizeof (spa_txg_history_t), KM_SLEEP);
 sth->txg = txg;
 sth->state = TXG_STATE_OPEN;
 sth->times[TXG_STATE_BIRTH] = birth_time;

 mutex_enter(&shl->procfs_list.pl_lock);
 procfs_list_add(&shl->procfs_list, sth);
 shl->size++;
 spa_txg_history_truncate(shl, zfs_txg_history);
 mutex_exit(&shl->procfs_list.pl_lock);
}
