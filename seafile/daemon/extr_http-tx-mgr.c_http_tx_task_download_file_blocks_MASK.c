#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  fs_mgr; TYPE_1__* http_tx_mgr; } ;
struct TYPE_11__ {scalar_t__ state; void* error; int /*<<< orphan*/  host; int /*<<< orphan*/  repo_id; int /*<<< orphan*/  repo_version; } ;
struct TYPE_10__ {int n_blocks; char** blk_sha1s; } ;
struct TYPE_9__ {int /*<<< orphan*/ * priv; } ;
typedef  TYPE_2__ Seafile ;
typedef  TYPE_3__ HttpTxTask ;
typedef  int /*<<< orphan*/  HttpTxPriv ;
typedef  int /*<<< orphan*/  ConnectionPool ;
typedef  int /*<<< orphan*/  Connection ;

/* Variables and functions */
 scalar_t__ HTTP_TASK_STATE_CANCELED ; 
 void* SYNC_ERROR_ID_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,char*) ; 
 TYPE_6__* seaf ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

int
FUNC7 (HttpTxTask *task, const char *file_id)
{
    Seafile *file;
    HttpTxPriv *priv = seaf->http_tx_mgr->priv;
    ConnectionPool *pool;
    Connection *conn;
    int ret = 0;

    file = FUNC4 (seaf->fs_mgr,
                                        task->repo_id,
                                        task->repo_version,
                                        file_id);
    if (!file) {
        FUNC5 ("Failed to find seafile object %s in repo %.8s.\n",
                      file_id, task->repo_id);
        return -1;
    }

    pool = FUNC2 (priv, task->host);
    if (!pool) {
        FUNC5 ("Failed to create connection pool for host %s.\n", task->host);
        task->error = SYNC_ERROR_ID_NOT_ENOUGH_MEMORY;
        FUNC6 (file);
        return -1;
    }

    conn = FUNC0 (pool);
    if (!conn) {
        FUNC5 ("Failed to get connection to host %s.\n", task->host);
        task->error = SYNC_ERROR_ID_NOT_ENOUGH_MEMORY;
        FUNC6 (file);
        return -1;
    }

    int i;
    char *block_id;
    for (i = 0; i < file->n_blocks; ++i) {
        block_id = file->blk_sha1s[i];
        ret = FUNC3 (task, conn, block_id);
        if (ret < 0 || task->state == HTTP_TASK_STATE_CANCELED)
            break;
    }

    FUNC1 (pool, conn);

    FUNC6 (file);

    return ret;
}