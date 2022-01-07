
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_11__ {int pl_lock; int pl_list; } ;
struct TYPE_14__ {scalar_t__ size; TYPE_2__ procfs_list; } ;
struct TYPE_10__ {TYPE_5__ mmp_history; } ;
struct TYPE_12__ {TYPE_1__ spa_stats; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_13__ {scalar_t__ mmp_node_id; int io_error; int duration; } ;
typedef TYPE_4__ spa_mmp_history_t ;
typedef TYPE_5__ spa_history_list_t ;
typedef int hrtime_t ;


 int ASSERT (int) ;
 int ENOENT ;
 TYPE_4__* list_prev (int *,TYPE_4__*) ;
 TYPE_4__* list_tail (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ zfs_multihost_history ;

int
spa_mmp_history_set(spa_t *spa, uint64_t mmp_node_id, int io_error,
    hrtime_t duration)
{
 spa_history_list_t *shl = &spa->spa_stats.mmp_history;
 spa_mmp_history_t *smh;
 int error = ENOENT;

 if (zfs_multihost_history == 0 && shl->size == 0)
  return (0);

 mutex_enter(&shl->procfs_list.pl_lock);
 for (smh = list_tail(&shl->procfs_list.pl_list); smh != ((void*)0);
     smh = list_prev(&shl->procfs_list.pl_list, smh)) {
  if (smh->mmp_node_id == mmp_node_id) {
   ASSERT(smh->io_error == 0);
   smh->io_error = io_error;
   smh->duration = duration;
   error = 0;
   break;
  }
 }
 mutex_exit(&shl->procfs_list.pl_lock);

 return (error);
}
