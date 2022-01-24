#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gint ;
struct TYPE_8__ {TYPE_1__* sync_mgr; int /*<<< orphan*/  block_mgr; } ;
struct TYPE_7__ {scalar_t__ state; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  error; int /*<<< orphan*/  repo_id; scalar_t__ all_stop; } ;
struct TYPE_6__ {int /*<<< orphan*/  block_id; int /*<<< orphan*/  block; TYPE_3__* task; } ;
struct TYPE_5__ {scalar_t__ upload_limit; int /*<<< orphan*/  sent_bytes; } ;
typedef  TYPE_2__ SendBlockData ;
typedef  TYPE_3__ HttpTxTask ;

/* Variables and functions */
 size_t CURL_READFUNC_ABORT ; 
 scalar_t__ HTTP_TASK_STATE_CANCELED ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_LOCAL_DATA_CORRUPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_4__* seaf ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC5 (void *ptr, size_t size, size_t nmemb, void *userp)
{
    size_t realsize = size *nmemb;
    SendBlockData *data = userp;
    HttpTxTask *task = data->task;
    int n;

    if (task->state == HTTP_TASK_STATE_CANCELED || task->all_stop)
        return CURL_READFUNC_ABORT;

    n = FUNC3 (seaf->block_mgr,
                                       data->block,
                                       ptr, realsize);
    if (n < 0) {
        FUNC4 ("Failed to read block %s in repo %.8s.\n",
                      data->block_id, task->repo_id);
        task->error = SYNC_ERROR_ID_LOCAL_DATA_CORRUPT;
        return CURL_READFUNC_ABORT;
    }

    /* Update global transferred bytes. */
    FUNC0 (&(seaf->sync_mgr->sent_bytes), n);

    /* Update transferred bytes for this task */
    FUNC0 (&task->tx_bytes, n);

    /* If uploaded bytes exceeds the limit, wait until the counter
     * is reset. We check the counter every 100 milliseconds, so we
     * can waste up to 100 milliseconds without sending data after
     * the counter is reset.
     */
    while (1) {
        gint sent = FUNC1(&(seaf->sync_mgr->sent_bytes));
        if (seaf->sync_mgr->upload_limit > 0 &&
            sent > seaf->sync_mgr->upload_limit)
            /* 100 milliseconds */
            FUNC2 (100000);
        else
            break;
    }

    return n;
}