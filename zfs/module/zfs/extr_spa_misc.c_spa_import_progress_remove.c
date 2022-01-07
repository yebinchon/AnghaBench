
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_11__ {scalar_t__ pool_guid; scalar_t__ pool_name; } ;
typedef TYPE_2__ spa_import_progress_t ;
struct TYPE_10__ {int pl_lock; int pl_list; } ;
struct TYPE_12__ {TYPE_1__ procfs_list; int size; } ;
typedef TYPE_3__ spa_history_list_t ;


 int kmem_free (TYPE_2__*,int) ;
 TYPE_2__* list_prev (int *,TYPE_2__*) ;
 int list_remove (int *,TYPE_2__*) ;
 TYPE_2__* list_tail (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_3__* spa_import_progress_list ;
 int spa_strfree (scalar_t__) ;

void
spa_import_progress_remove(uint64_t pool_guid)
{
 spa_history_list_t *shl = spa_import_progress_list;
 spa_import_progress_t *sip;

 mutex_enter(&shl->procfs_list.pl_lock);
 for (sip = list_tail(&shl->procfs_list.pl_list); sip != ((void*)0);
     sip = list_prev(&shl->procfs_list.pl_list, sip)) {
  if (sip->pool_guid == pool_guid) {
   if (sip->pool_name)
    spa_strfree(sip->pool_name);
   list_remove(&shl->procfs_list.pl_list, sip);
   shl->size--;
   kmem_free(sip, sizeof (spa_import_progress_t));
   break;
  }
 }
 mutex_exit(&shl->procfs_list.pl_lock);
}
