
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int clone_mgr; } ;
struct TYPE_7__ {int repo_id; int email; int peer_addr; } ;
struct TYPE_6__ {TYPE_2__* data; struct TYPE_6__* next; } ;
typedef TYPE_1__ GList ;
typedef TYPE_2__ CloneTask ;


 int g_list_free (TYPE_1__*) ;
 scalar_t__ g_strcmp0 (char const*,int ) ;
 TYPE_4__* seaf ;
 int seaf_clone_manager_cancel_task (int ,int ) ;
 TYPE_1__* seaf_clone_manager_get_tasks (int ) ;

__attribute__((used)) static void
cancel_clone_tasks_by_account (const char *account_server, const char *account_email)
{
    GList *ptr, *tasks;
    CloneTask *task;

    tasks = seaf_clone_manager_get_tasks (seaf->clone_mgr);
    for (ptr = tasks; ptr != ((void*)0); ptr = ptr->next) {
        task = ptr->data;

        if (g_strcmp0(account_server, task->peer_addr) == 0
            && g_strcmp0(account_email, task->email) == 0) {
            seaf_clone_manager_cancel_task (seaf->clone_mgr, task->repo_id);
        }
    }

    g_list_free (tasks);
}
