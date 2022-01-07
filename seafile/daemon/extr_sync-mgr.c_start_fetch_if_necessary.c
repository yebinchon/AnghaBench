
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int http_tx_mgr; } ;
struct TYPE_11__ {int message; } ;
struct TYPE_10__ {int id; int name; int use_fileserver_port; int email; int token; int effective_host; int version; } ;
struct TYPE_9__ {int tx_id; int http_version; TYPE_2__* repo; } ;
typedef TYPE_1__ SyncTask ;
typedef TYPE_2__ SeafRepo ;
typedef TYPE_3__ GError ;


 int FALSE ;
 int SYNC_ERROR_ID_NOT_ENOUGH_MEMORY ;
 int SYNC_STATE_FETCH ;
 int g_strdup (int ) ;
 scalar_t__ http_tx_manager_add_download (int ,int ,int ,int ,int ,char const*,int ,int *,int *,int ,int ,int ,int ,TYPE_3__**) ;
 TYPE_7__* seaf ;
 int seaf_warning (char*,int ) ;
 int set_task_error (TYPE_1__*,int ) ;
 int transition_sync_state (TYPE_1__*,int ) ;

__attribute__((used)) static void
start_fetch_if_necessary (SyncTask *task, const char *remote_head)
{
    GError *error = ((void*)0);
    SeafRepo *repo = task->repo;

    if (http_tx_manager_add_download (seaf->http_tx_mgr,
                                      repo->id,
                                      repo->version,
                                      repo->effective_host,
                                      repo->token,
                                      remote_head,
                                      FALSE,
                                      ((void*)0), ((void*)0),
                                      task->http_version,
                                      repo->email,
                                      repo->use_fileserver_port,
                                      repo->name,
                                      &error) < 0) {
        seaf_warning ("Failed to start http download: %s.\n", error->message);
        set_task_error (task, SYNC_ERROR_ID_NOT_ENOUGH_MEMORY);
        return;
    }
    task->tx_id = g_strdup(repo->id);

    transition_sync_state (task, SYNC_STATE_FETCH);
}
