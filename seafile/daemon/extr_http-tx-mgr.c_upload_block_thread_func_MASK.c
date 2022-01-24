#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* gpointer ;
struct TYPE_8__ {int /*<<< orphan*/  finished_tasks; int /*<<< orphan*/  cpool; TYPE_1__* http_task; } ;
struct TYPE_7__ {int result; int /*<<< orphan*/  block_size; int /*<<< orphan*/  block_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  error; int /*<<< orphan*/  host; } ;
typedef  TYPE_1__ HttpTxTask ;
typedef  int /*<<< orphan*/  Connection ;
typedef  TYPE_2__ BlockUploadTask ;
typedef  TYPE_3__ BlockUploadData ;

/* Variables and functions */
 int /*<<< orphan*/  SYNC_ERROR_ID_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5 (gpointer data, gpointer user_data)
{
    BlockUploadTask *task = data;
    BlockUploadData *tx_data = user_data;
    HttpTxTask *http_task = tx_data->http_task;
    Connection *conn;
    int ret = 0;

    conn = FUNC0 (tx_data->cpool);
    if (!conn) {
        FUNC3 ("Failed to get connection to host %s.\n", http_task->host);
        http_task->error = SYNC_ERROR_ID_NOT_ENOUGH_MEMORY;
        ret = -1;
        goto out;
    }

    ret = FUNC4 (http_task, conn, task->block_id, &task->block_size);

    FUNC1 (tx_data->cpool, conn);

out:
    task->result = ret;
    FUNC2 (tx_data->finished_tasks, task);
}