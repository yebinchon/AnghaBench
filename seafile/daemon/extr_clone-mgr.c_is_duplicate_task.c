
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {int tasks; } ;
typedef TYPE_1__ SeafCloneManager ;
typedef TYPE_2__ CloneTask ;


 scalar_t__ CLONE_STATE_CANCELED ;
 scalar_t__ CLONE_STATE_DONE ;
 int FALSE ;
 int TRUE ;
 TYPE_2__* g_hash_table_lookup (int ,char const*) ;

__attribute__((used)) static gboolean
is_duplicate_task (SeafCloneManager *mgr, const char *repo_id)
{
    CloneTask *task = g_hash_table_lookup (mgr->tasks, repo_id);
    if (task != ((void*)0) &&
        task->state != CLONE_STATE_DONE &&
        task->state != CLONE_STATE_CANCELED)
        return TRUE;
    return FALSE;
}
