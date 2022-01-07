
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int spa_history_list_t ;
struct TYPE_3__ {int pl_lock; int * pl_private; } ;
typedef TYPE_1__ procfs_list_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_txg_history_truncate (int *,int ) ;

__attribute__((used)) static int
spa_txg_history_clear(procfs_list_t *procfs_list)
{
 spa_history_list_t *shl = procfs_list->pl_private;
 mutex_enter(&procfs_list->pl_lock);
 spa_txg_history_truncate(shl, 0);
 mutex_exit(&procfs_list->pl_lock);
 return (0);
}
