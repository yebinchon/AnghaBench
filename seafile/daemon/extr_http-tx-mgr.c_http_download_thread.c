
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int repo_mgr; TYPE_1__* http_tx_mgr; } ;
struct TYPE_12__ {scalar_t__ state; void* error; int head; int repo_id; int host; } ;
struct TYPE_11__ {int * priv; } ;
typedef TYPE_2__ HttpTxTask ;
typedef int HttpTxPriv ;
typedef int GList ;
typedef int ConnectionPool ;
typedef int Connection ;







 int HTTP_TASK_RT_STATE_BLOCK ;
 int HTTP_TASK_RT_STATE_CHECK ;
 int HTTP_TASK_RT_STATE_COMMIT ;
 int HTTP_TASK_RT_STATE_FS ;
 scalar_t__ HTTP_TASK_STATE_CANCELED ;
 int REPO_PROP_DOWNLOAD_HEAD ;
 void* SYNC_ERROR_ID_FILE_LOCKED_BY_APP ;
 void* SYNC_ERROR_ID_NOT_ENOUGH_MEMORY ;
 void* SYNC_ERROR_ID_WRITE_LOCAL_DATA ;
 scalar_t__ check_permission (TYPE_2__*,int *) ;
 int * connection_pool_get_connection (int *) ;
 int connection_pool_return_connection (int *,int *) ;
 int * find_connection_pool (int *,int ) ;
 scalar_t__ get_commit_object (TYPE_2__*,int *) ;
 scalar_t__ get_fs_objects (TYPE_2__*,int *,int **) ;
 scalar_t__ get_needed_fs_id_list (TYPE_2__*,int *,int **) ;
 TYPE_6__* seaf ;
 int seaf_repo_fetch_and_checkout (TYPE_2__*,int ) ;
 int seaf_repo_manager_set_repo_property (int ,int ,int ,int ) ;
 int seaf_warning (char*,int ,...) ;
 int string_list_free (int *) ;
 int transition_state (TYPE_2__*,scalar_t__,int ) ;
 int update_local_repo (TYPE_2__*) ;

__attribute__((used)) static void *
http_download_thread (void *vdata)
{
    HttpTxTask *task = vdata;
    HttpTxPriv *priv = seaf->http_tx_mgr->priv;
    ConnectionPool *pool;
    Connection *conn = ((void*)0);
    GList *fs_id_list = ((void*)0);

    pool = find_connection_pool (priv, task->host);
    if (!pool) {
        seaf_warning ("Failed to create connection pool for host %s.\n", task->host);
        task->error = SYNC_ERROR_ID_NOT_ENOUGH_MEMORY;
        goto out;
    }

    conn = connection_pool_get_connection (pool);
    if (!conn) {
        seaf_warning ("Failed to get connection to host %s.\n", task->host);
        task->error = SYNC_ERROR_ID_NOT_ENOUGH_MEMORY;
        goto out;
    }




    transition_state (task, task->state, HTTP_TASK_RT_STATE_CHECK);

    if (check_permission (task, conn) < 0) {
        seaf_warning ("Download permission denied for repo %.8s on server %s.\n",
                      task->repo_id, task->host);
        goto out;
    }

    if (task->state == HTTP_TASK_STATE_CANCELED)
        goto out;

    transition_state (task, task->state, HTTP_TASK_RT_STATE_COMMIT);

    if (get_commit_object (task, conn) < 0) {
        seaf_warning ("Failed to get server head commit for repo %.8s on server %s.\n",
                      task->repo_id, task->host);
        goto out;
    }

    if (task->state == HTTP_TASK_STATE_CANCELED)
        goto out;

    transition_state (task, task->state, HTTP_TASK_RT_STATE_FS);

    if (get_needed_fs_id_list (task, conn, &fs_id_list) < 0) {
        seaf_warning ("Failed to get fs id list for repo %.8s on server %s.\n",
                      task->repo_id, task->host);
        goto out;
    }

    if (task->state == HTTP_TASK_STATE_CANCELED)
        goto out;

    while (fs_id_list != ((void*)0)) {
        if (get_fs_objects (task, conn, &fs_id_list) < 0) {
            seaf_warning ("Failed to get fs objects for repo %.8s on server %s.\n",
                          task->repo_id, task->host);
            goto out;
        }

        if (task->state == HTTP_TASK_STATE_CANCELED)
            goto out;
    }

    transition_state (task, task->state, HTTP_TASK_RT_STATE_BLOCK);




    seaf_repo_manager_set_repo_property (seaf->repo_mgr,
                                         task->repo_id,
                                         REPO_PROP_DOWNLOAD_HEAD,
                                         task->head);

    int rc = seaf_repo_fetch_and_checkout (task, task->head);
    switch (rc) {
    case 129:
        break;
    case 132:
        goto out;
    case 131:
        task->error = SYNC_ERROR_ID_WRITE_LOCAL_DATA;
        goto out;
    case 128:
        goto out;
    case 130:
        task->error = SYNC_ERROR_ID_FILE_LOCKED_BY_APP;
        goto out;
    }

    update_local_repo (task);

out:
    connection_pool_return_connection (pool, conn);
    string_list_free (fs_id_list);
    return vdata;
}
