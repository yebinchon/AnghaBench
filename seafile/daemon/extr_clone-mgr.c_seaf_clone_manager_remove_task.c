
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int started; } ;
struct TYPE_7__ {scalar_t__ state; } ;
struct TYPE_6__ {int tasks; } ;
typedef TYPE_1__ SeafCloneManager ;
typedef TYPE_2__ CloneTask ;


 scalar_t__ CLONE_STATE_CANCELED ;
 scalar_t__ CLONE_STATE_DONE ;
 TYPE_2__* g_hash_table_lookup (int ,char const*) ;
 int g_hash_table_remove (int ,char const*) ;
 TYPE_4__* seaf ;
 int seaf_message (char*) ;
 int seaf_warning (char*) ;

int
seaf_clone_manager_remove_task (SeafCloneManager *mgr,
                                const char *repo_id)
{
    CloneTask *task;

    if (!seaf->started) {
        seaf_message ("System not started, skip removing clone task.\n");
        return -1;
    }

    task = g_hash_table_lookup (mgr->tasks, repo_id);
    if (!task)
        return -1;

    if (task->state != CLONE_STATE_DONE &&
        task->state != CLONE_STATE_CANCELED) {
        seaf_warning ("[Clone mgr] cannot remove running task.\n");
        return -1;
    }



    g_hash_table_remove (mgr->tasks, repo_id);

    return 0;
}
