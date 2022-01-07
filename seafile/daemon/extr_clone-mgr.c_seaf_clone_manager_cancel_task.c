
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int http_tx_mgr; int started; } ;
struct TYPE_8__ {int state; int repo_id; } ;
struct TYPE_7__ {int tasks; } ;
typedef TYPE_1__ SeafCloneManager ;
typedef TYPE_2__ CloneTask ;


 int CLONE_STATE_CANCELED ;
 int HTTP_TASK_TYPE_DOWNLOAD ;
 TYPE_2__* g_hash_table_lookup (int ,char const*) ;
 int http_tx_manager_cancel_task (int ,int ,int ) ;
 TYPE_5__* seaf ;
 int seaf_message (char*) ;
 int seaf_warning (char*) ;
 int transition_state (TYPE_2__*,int) ;

int
seaf_clone_manager_cancel_task (SeafCloneManager *mgr,
                                const char *repo_id)
{
    CloneTask *task;

    if (!seaf->started) {
        seaf_message ("System not started, skip canceling clone task.\n");
        return -1;
    }

    task = g_hash_table_lookup (mgr->tasks, repo_id);
    if (!task)
        return -1;

    switch (task->state) {
    case 129:
    case 133:
    case 132:
        transition_state (task, CLONE_STATE_CANCELED);
        break;
    case 134:
        transition_state (task, 137);
    case 131:
        http_tx_manager_cancel_task (seaf->http_tx_mgr,
                                     task->repo_id,
                                     HTTP_TASK_TYPE_DOWNLOAD);
        transition_state (task, 137);
        break;
    case 130:
    case 136:
    case 128:
    case 135:



        transition_state (task, 137);
        break;
    case 137:
        break;
    default:
        seaf_warning ("[Clone mgr] cannot cancel a not-running task.\n");
        return -1;
    }

    return 0;
}
