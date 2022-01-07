
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int clone_mgr; } ;
struct TYPE_10__ {int worktree; int repo_name; int repo_id; int error; int state; } ;
struct TYPE_9__ {TYPE_2__* data; struct TYPE_9__* next; } ;
typedef int SeafileCloneTask ;
typedef TYPE_1__ GList ;
typedef int GError ;
typedef TYPE_2__ CloneTask ;


 int SEAFILE_TYPE_CLONE_TASK ;
 int clone_task_state_to_str (int ) ;
 int g_list_free (TYPE_1__*) ;
 TYPE_1__* g_list_prepend (TYPE_1__*,int *) ;
 int * g_object_new (int ,char*,int ,char*,int ,char*,int ,char*,int ,char*,int ,int *) ;
 TYPE_5__* seaf ;
 TYPE_1__* seaf_clone_manager_get_tasks (int ) ;

GList *
seafile_get_clone_tasks (GError **error)
{
    GList *tasks, *ptr;
    GList *ret = ((void*)0);
    CloneTask *task;
    SeafileCloneTask *t;

    tasks = seaf_clone_manager_get_tasks (seaf->clone_mgr);
    for (ptr = tasks; ptr != ((void*)0); ptr = ptr->next) {
        task = ptr->data;
        t = g_object_new (SEAFILE_TYPE_CLONE_TASK,
                          "state", clone_task_state_to_str(task->state),
                          "error", task->error,
                          "repo_id", task->repo_id,
                          "repo_name", task->repo_name,
                          "worktree", task->worktree,
                          ((void*)0));
        ret = g_list_prepend (ret, t);
    }

    g_list_free (tasks);
    return ret;
}
