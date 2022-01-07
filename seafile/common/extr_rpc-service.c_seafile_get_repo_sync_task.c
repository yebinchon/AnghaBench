
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int sync_mgr; int repo_mgr; } ;
struct TYPE_6__ {int repo_id; int head_commit; int in_sync; TYPE_1__* current_task; } ;
struct TYPE_5__ {int error; int is_manual_sync; int state; } ;
typedef TYPE_1__ SyncTask ;
typedef TYPE_2__ SyncInfo ;
typedef int SeafileSyncTask ;
typedef int SeafRepo ;
typedef int GObject ;
typedef int GError ;


 int SEAFILE_TYPE_SYNC_TASK ;
 int * g_object_new (int ,char*,int ,char*,char const*,char*,int ,char*,int ,int *) ;
 scalar_t__ memcmp (char*,int ,int) ;
 TYPE_4__* seaf ;
 int * seaf_repo_manager_get_repo (int ,char const*) ;
 TYPE_2__* seaf_sync_manager_get_sync_info (int ,char const*) ;
 char* sync_state_to_str (int ) ;

GObject *
seafile_get_repo_sync_task (const char *repo_id, GError **error)
{
    SeafRepo *repo;
    repo = seaf_repo_manager_get_repo (seaf->repo_mgr, repo_id);

    if (!repo) {
        return ((void*)0);
    }

    SyncInfo *info = seaf_sync_manager_get_sync_info (seaf->sync_mgr, repo_id);
    if (!info || !info->current_task)
        return ((void*)0);

    SyncTask *task = info->current_task;
    const char *sync_state;
    char allzeros[41] = {0};

    if (!info->in_sync && memcmp(allzeros, info->head_commit, 41) == 0) {
        sync_state = "waiting for sync";
    } else {
        sync_state = sync_state_to_str(task->state);
    }

    SeafileSyncTask *s_task;
    s_task = g_object_new (SEAFILE_TYPE_SYNC_TASK,
                           "force_upload", task->is_manual_sync,
                           "state", sync_state,
                           "error", task->error,
                           "repo_id", info->repo_id,
                           ((void*)0));

    return (GObject *)s_task;
}
