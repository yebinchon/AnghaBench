#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gint64 ;
struct TYPE_23__ {scalar_t__ state; int /*<<< orphan*/  repo_id; int /*<<< orphan*/  host; int /*<<< orphan*/  n_blocks; int /*<<< orphan*/  use_fileserver_port; void* error; int /*<<< orphan*/  head; } ;
struct TYPE_22__ {int /*<<< orphan*/  commit_id; } ;
struct TYPE_21__ {int /*<<< orphan*/ * priv; } ;
struct TYPE_20__ {int /*<<< orphan*/  branch_mgr; TYPE_1__* http_tx_mgr; } ;
typedef  TYPE_2__ SeafBranch ;
typedef  TYPE_3__ HttpTxTask ;
typedef  int /*<<< orphan*/  HttpTxPriv ;
typedef  int /*<<< orphan*/  GList ;
typedef  int /*<<< orphan*/  GHashTable ;
typedef  int /*<<< orphan*/  ConnectionPool ;
typedef  int /*<<< orphan*/  Connection ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_TASK_RT_STATE_BLOCK ; 
 int /*<<< orphan*/  HTTP_TASK_RT_STATE_CHECK ; 
 int /*<<< orphan*/  HTTP_TASK_RT_STATE_COMMIT ; 
 int /*<<< orphan*/  HTTP_TASK_RT_STATE_FS ; 
 int /*<<< orphan*/  HTTP_TASK_RT_STATE_UPDATE_BRANCH ; 
 scalar_t__ HTTP_TASK_STATE_CANCELED ; 
 void* SYNC_ERROR_ID_LOCAL_DATA_CORRUPT ; 
 void* SYNC_ERROR_ID_NOT_ENOUGH_MEMORY ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (char*),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_str_equal ; 
 int /*<<< orphan*/  g_str_hash ; 
 char* FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_12__* seaf ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC20 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  set_path_status_synced ; 
 int /*<<< orphan*/  set_path_status_syncing ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*) ; 
 scalar_t__ FUNC26 (TYPE_3__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void *
FUNC27 (void *vdata)
{
    HttpTxTask *task = vdata;
    HttpTxPriv *priv = seaf->http_tx_mgr->priv;
    ConnectionPool *pool;
    Connection *conn = NULL;
    char *url = NULL;
    GList *send_fs_list = NULL, *needed_fs_list = NULL;
    GList *block_list = NULL, *needed_block_list = NULL;
    GHashTable *active_paths = NULL;

    SeafBranch *local = FUNC16 (seaf->branch_mgr,
                                                        task->repo_id, "local");
    if (!local) {
        FUNC19 ("Failed to get branch local of repo %.8s.\n", task->repo_id);
        task->error = SYNC_ERROR_ID_LOCAL_DATA_CORRUPT;
        return NULL;
    }
    FUNC14 (task->head, local->commit_id, 40);
    FUNC17 (local);

    pool = FUNC7 (priv, task->host);
    if (!pool) {
        FUNC19 ("Failed to create connection pool for host %s.\n", task->host);
        task->error = SYNC_ERROR_ID_NOT_ENOUGH_MEMORY;
        goto out;
    }

    conn = FUNC5 (pool);
    if (!conn) {
        FUNC19 ("Failed to get connection to host %s.\n", task->host);
        task->error = SYNC_ERROR_ID_NOT_ENOUGH_MEMORY;
        goto out;
    }

    /* seaf_message ("Upload with HTTP sync protocol version %d.\n", */
    /*               task->protocol_version); */

    FUNC23 (task, task->state, HTTP_TASK_RT_STATE_CHECK);

    gint64 delta = 0;
    active_paths = FUNC11 (g_str_hash, g_str_equal, g_free, NULL);

    if (FUNC2 (task, &delta, active_paths) < 0) {
        FUNC19 ("Failed to calculate upload size delta for repo %s.\n",
                      task->repo_id);
        task->error = SYNC_ERROR_ID_LOCAL_DATA_CORRUPT;
        goto out;
    }

    FUNC10 (active_paths, set_path_status_syncing, task);

    if (FUNC3 (task, conn) < 0) {
        FUNC19 ("Upload permission denied for repo %.8s on server %s.\n",
                      task->repo_id, task->host);
        goto out;
    }

    if (FUNC4 (task, conn, delta) < 0) {
        FUNC19 ("Not enough quota for repo %.8s on server %s.\n",
                      task->repo_id, task->host);
        goto out;
    }

    if (task->state == HTTP_TASK_STATE_CANCELED)
        goto out;

    FUNC23 (task, task->state, HTTP_TASK_RT_STATE_COMMIT);

    if (FUNC20 (task, conn) < 0) {
        FUNC19 ("Failed to send head commit for repo %.8s.\n", task->repo_id);
        goto out;
    }

    if (task->state == HTTP_TASK_STATE_CANCELED)
        goto out;

    FUNC23 (task, task->state, HTTP_TASK_RT_STATE_FS);

    send_fs_list = FUNC1 (task);
    if (!send_fs_list) {
        FUNC19 ("Failed to calculate fs object list for repo %.8s.\n",
                      task->repo_id);
        task->error = SYNC_ERROR_ID_LOCAL_DATA_CORRUPT;
        goto out;
    }

    if (!task->use_fileserver_port)
        url = FUNC13 ("%s/seafhttp/repo/%s/check-fs/",
                               task->host, task->repo_id);
    else
        url = FUNC13 ("%s/repo/%s/check-fs/",
                               task->host, task->repo_id);

    while (send_fs_list != NULL) {
        if (FUNC26 (task, conn, url,
                                          &send_fs_list, &needed_fs_list) < 0) {
            FUNC19 ("Failed to check fs list for repo %.8s.\n", task->repo_id);
            goto out;
        }

        if (task->state == HTTP_TASK_STATE_CANCELED)
            goto out;
    }
    FUNC8 (url);
    url = NULL;

    while (needed_fs_list != NULL) {
        if (FUNC21 (task, conn, &needed_fs_list) < 0) {
            FUNC19 ("Failed to send fs objects for repo %.8s.\n", task->repo_id);
            goto out;
        }

        if (task->state == HTTP_TASK_STATE_CANCELED)
            goto out;
    }

    FUNC23 (task, task->state, HTTP_TASK_RT_STATE_BLOCK);

    if (FUNC0 (task, &block_list) < 0) {
        FUNC19 ("Failed to calculate block list for repo %.8s.\n",
                      task->repo_id);
        task->error = SYNC_ERROR_ID_LOCAL_DATA_CORRUPT;
        goto out;
    }

    if (!task->use_fileserver_port)
        url = FUNC13 ("%s/seafhttp/repo/%s/check-blocks/",
                               task->host, task->repo_id);
    else
        url = FUNC13 ("%s/repo/%s/check-blocks/",
                               task->host, task->repo_id);

    while (block_list != NULL) {
        if (FUNC26 (task, conn, url,
                                          &block_list, &needed_block_list) < 0) {
            FUNC19 ("Failed to check block list for repo %.8s.\n",
                          task->repo_id);
            goto out;
        }

        if (task->state == HTTP_TASK_STATE_CANCELED)
            goto out;
    }
    FUNC8 (url);
    url = NULL;

    task->n_blocks = FUNC12 (needed_block_list);

    FUNC18 ("%d blocks to send for %s:%s.\n",
                task->n_blocks, task->host, task->repo_id);

    if (FUNC15(task, needed_block_list) < 0 ||
        task->state == HTTP_TASK_STATE_CANCELED)
        goto out;

    FUNC23 (task, task->state, HTTP_TASK_RT_STATE_UPDATE_BRANCH);

    if (FUNC24 (task, conn) < 0) {
        FUNC19 ("Failed to update branch of repo %.8s.\n", task->repo_id);
        goto out;
    }

    /* After successful upload, the cached 'master' branch should be updated to
     * the head commit of 'local' branch.
     */
    FUNC25 (task);

    if (active_paths != NULL)
        FUNC10 (active_paths, set_path_status_synced, task);

out:
    FUNC22 (send_fs_list);
    FUNC22 (needed_fs_list);
    FUNC22 (block_list);
    FUNC22 (needed_block_list);

    if (active_paths)
        FUNC9 (active_paths);

    FUNC8 (url);

    FUNC6 (pool, conn);

    return vdata;
}