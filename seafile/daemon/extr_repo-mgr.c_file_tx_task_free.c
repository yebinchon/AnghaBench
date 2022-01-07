
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* path; } ;
typedef TYPE_1__ FileTxTask ;


 int g_free (TYPE_1__*) ;

__attribute__((used)) static void
file_tx_task_free (FileTxTask *task)
{
    if (!task)
        return;

    g_free (task->path);
    g_free (task);
}
