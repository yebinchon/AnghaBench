#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* gpointer ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_13__ {int /*<<< orphan*/  sync_mgr; } ;
struct TYPE_12__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  name; int /*<<< orphan*/  sha1; } ;
struct TYPE_11__ {char* repo_id; TYPE_1__* http_task; int /*<<< orphan*/ * finished_tasks; } ;
struct TYPE_10__ {int result; scalar_t__ skip_fetch; TYPE_4__* de; } ;
struct TYPE_9__ {int /*<<< orphan*/  is_clone; } ;
typedef  int /*<<< orphan*/  GAsyncQueue ;
typedef  TYPE_2__ FileTxTask ;
typedef  TYPE_3__ FileTxData ;
typedef  TYPE_4__ DiffEntry ;

/* Variables and functions */
 int FETCH_CHECKOUT_CANCELED ; 
 int FETCH_CHECKOUT_SUCCESS ; 
 int FETCH_CHECKOUT_TRANSFER_ERROR ; 
 int /*<<< orphan*/  SYNC_STATUS_SYNCING ; 
 int FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_5__* seaf ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6 (gpointer data, gpointer user_data)
{
    FileTxTask *task = data;
    FileTxData *tx_data = user_data;
    GAsyncQueue *finished_tasks = tx_data->finished_tasks;
    DiffEntry *de = task->de;
    char *repo_id = tx_data->repo_id;
    char file_id[41];
    gboolean is_clone = tx_data->http_task->is_clone;
    int rc = FETCH_CHECKOUT_SUCCESS;

    if (task->skip_fetch)
        goto out;

    FUNC2 (de->sha1, file_id, 20);

    /* seaf_message ("Download file %s for repo %s\n", de->name, repo_id); */

    if (!is_clone)
        FUNC4 (seaf->sync_mgr,
                                              repo_id,
                                              de->name,
                                              de->mode,
                                              SYNC_STATUS_SYNCING);

    rc = FUNC0 (tx_data, task);

    /* Even if the file failed to check out, still need to update index.
     * But we have to stop after transfer errors.
     */
    if (rc == FETCH_CHECKOUT_CANCELED) {
        FUNC3 ("Transfer canceled.\n");
    } else if (rc == FETCH_CHECKOUT_TRANSFER_ERROR) {
        FUNC5 ("Transfer failed.\n");
    }

out:
    task->result = rc;
    FUNC1 (finished_tasks, task);
}