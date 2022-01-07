
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* token; struct TYPE_4__* dest_id; struct TYPE_4__* tx_id; } ;
typedef TYPE_1__ SyncTask ;


 int g_free (TYPE_1__*) ;

__attribute__((used)) static void
sync_task_free (SyncTask *task)
{
    g_free (task->tx_id);
    g_free (task->dest_id);
    g_free (task->token);
    g_free (task);
}
