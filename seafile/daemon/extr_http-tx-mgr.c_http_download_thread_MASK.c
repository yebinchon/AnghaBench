#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  repo_mgr; TYPE_1__* http_tx_mgr; } ;
struct TYPE_12__ {scalar_t__ state; void* error; int /*<<< orphan*/  head; int /*<<< orphan*/  repo_id; int /*<<< orphan*/  host; } ;
struct TYPE_11__ {int /*<<< orphan*/ * priv; } ;
typedef  TYPE_2__ HttpTxTask ;
typedef  int /*<<< orphan*/  HttpTxPriv ;
typedef  int /*<<< orphan*/  GList ;
typedef  int /*<<< orphan*/  ConnectionPool ;
typedef  int /*<<< orphan*/  Connection ;

/* Variables and functions */
#define  FETCH_CHECKOUT_CANCELED 132 
#define  FETCH_CHECKOUT_FAILED 131 
#define  FETCH_CHECKOUT_LOCKED 130 
#define  FETCH_CHECKOUT_SUCCESS 129 
#define  FETCH_CHECKOUT_TRANSFER_ERROR 128 
 int /*<<< orphan*/  HTTP_TASK_RT_STATE_BLOCK ; 
 int /*<<< orphan*/  HTTP_TASK_RT_STATE_CHECK ; 
 int /*<<< orphan*/  HTTP_TASK_RT_STATE_COMMIT ; 
 int /*<<< orphan*/  HTTP_TASK_RT_STATE_FS ; 
 scalar_t__ HTTP_TASK_STATE_CANCELED ; 
 int /*<<< orphan*/  REPO_PROP_DOWNLOAD_HEAD ; 
 void* SYNC_ERROR_ID_FILE_LOCKED_BY_APP ; 
 void* SYNC_ERROR_ID_NOT_ENOUGH_MEMORY ; 
 void* SYNC_ERROR_ID_WRITE_LOCAL_DATA ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 TYPE_6__* seaf ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

__attribute__((used)) static void *
FUNC13 (void *vdata)
{
    HttpTxTask *task = vdata;
    HttpTxPriv *priv = seaf->http_tx_mgr->priv;
    ConnectionPool *pool;
    Connection *conn = NULL;
    GList *fs_id_list = NULL;

    pool = FUNC3 (priv, task->host);
    if (!pool) {
        FUNC9 ("Failed to create connection pool for host %s.\n", task->host);
        task->error = SYNC_ERROR_ID_NOT_ENOUGH_MEMORY;
        goto out;
    }

    conn = FUNC1 (pool);
    if (!conn) {
        FUNC9 ("Failed to get connection to host %s.\n", task->host);
        task->error = SYNC_ERROR_ID_NOT_ENOUGH_MEMORY;
        goto out;
    }

    /* seaf_message ("Download with HTTP sync protocol version %d.\n", */
    /*               task->protocol_version); */

    FUNC11 (task, task->state, HTTP_TASK_RT_STATE_CHECK);

    if (FUNC0 (task, conn) < 0) {
        FUNC9 ("Download permission denied for repo %.8s on server %s.\n",
                      task->repo_id, task->host);
        goto out;
    }

    if (task->state == HTTP_TASK_STATE_CANCELED)
        goto out;

    FUNC11 (task, task->state, HTTP_TASK_RT_STATE_COMMIT);

    if (FUNC4 (task, conn) < 0) {
        FUNC9 ("Failed to get server head commit for repo %.8s on server %s.\n",
                      task->repo_id, task->host);
        goto out;
    }

    if (task->state == HTTP_TASK_STATE_CANCELED)
        goto out;

    FUNC11 (task, task->state, HTTP_TASK_RT_STATE_FS);

    if (FUNC6 (task, conn, &fs_id_list) < 0) {
        FUNC9 ("Failed to get fs id list for repo %.8s on server %s.\n",
                      task->repo_id, task->host);
        goto out;
    }

    if (task->state == HTTP_TASK_STATE_CANCELED)
        goto out;

    while (fs_id_list != NULL) {
        if (FUNC5 (task, conn, &fs_id_list) < 0) {
            FUNC9 ("Failed to get fs objects for repo %.8s on server %s.\n",
                          task->repo_id, task->host);
            goto out;
        }

        if (task->state == HTTP_TASK_STATE_CANCELED)
            goto out;
    }

    FUNC11 (task, task->state, HTTP_TASK_RT_STATE_BLOCK);

    /* Record download head commit id, so that we can resume download
     * if this download is interrupted.
     */
    FUNC8 (seaf->repo_mgr,
                                         task->repo_id,
                                         REPO_PROP_DOWNLOAD_HEAD,
                                         task->head);

    int rc = FUNC7 (task, task->head);
    switch (rc) {
    case FETCH_CHECKOUT_SUCCESS:
        break;
    case FETCH_CHECKOUT_CANCELED:
        goto out;
    case FETCH_CHECKOUT_FAILED:
        task->error = SYNC_ERROR_ID_WRITE_LOCAL_DATA;
        goto out;
    case FETCH_CHECKOUT_TRANSFER_ERROR:
        goto out;
    case FETCH_CHECKOUT_LOCKED:
        task->error = SYNC_ERROR_ID_FILE_LOCKED_BY_APP;
        goto out;
    }

    FUNC12 (task);

out:
    FUNC2 (pool, conn);
    FUNC10 (fs_id_list);
    return vdata;
}