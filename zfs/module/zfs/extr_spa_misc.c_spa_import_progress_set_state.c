
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int spa_load_state_t ;
struct TYPE_9__ {scalar_t__ pool_guid; int spa_load_state; } ;
typedef TYPE_2__ spa_import_progress_t ;
struct TYPE_8__ {int pl_lock; int pl_list; } ;
struct TYPE_10__ {scalar_t__ size; TYPE_1__ procfs_list; } ;
typedef TYPE_3__ spa_history_list_t ;


 int ENOENT ;
 TYPE_2__* list_prev (int *,TYPE_2__*) ;
 TYPE_2__* list_tail (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_3__* spa_import_progress_list ;

int
spa_import_progress_set_state(uint64_t pool_guid,
    spa_load_state_t load_state)
{
 spa_history_list_t *shl = spa_import_progress_list;
 spa_import_progress_t *sip;
 int error = ENOENT;

 if (shl->size == 0)
  return (0);

 mutex_enter(&shl->procfs_list.pl_lock);
 for (sip = list_tail(&shl->procfs_list.pl_list); sip != ((void*)0);
     sip = list_prev(&shl->procfs_list.pl_list, sip)) {
  if (sip->pool_guid == pool_guid) {
   sip->spa_load_state = load_state;
   error = 0;
   break;
  }
 }
 mutex_exit(&shl->procfs_list.pl_lock);

 return (error);
}
