#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  worktree; int /*<<< orphan*/  name; } ;
struct TYPE_13__ {int /*<<< orphan*/  sync_mgr; } ;
struct TYPE_12__ {scalar_t__ uploaded_bytes; scalar_t__ total_bytes; void* end_multipart_upload; void* multipart_upload; void* in_sync; } ;
struct TYPE_11__ {int state; scalar_t__ error; TYPE_7__* repo; TYPE_1__* mgr; scalar_t__ uploaded; TYPE_3__* info; } ;
struct TYPE_10__ {int /*<<< orphan*/  n_running_tasks; } ;
typedef  TYPE_2__ SyncTask ;
typedef  TYPE_3__ SyncInfo ;

/* Variables and functions */
 void* FALSE ; 
 scalar_t__ SYNC_ERROR_ID_NO_ERROR ; 
 int SYNC_STATE_CANCELED ; 
 int SYNC_STATE_DONE ; 
 int SYNC_STATE_ERROR ; 
 int SYNC_STATE_FETCH ; 
 int SYNC_STATE_INIT ; 
 int SYNC_STATE_NUM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int) ; 
 TYPE_6__* seaf ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/ * sync_state_str ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC8 (SyncTask *task, int new_state)
{
    FUNC1 (new_state >= 0 && new_state < SYNC_STATE_NUM);

    SyncInfo *info = task->info;

    if (task->state != new_state) {
        if (((task->state == SYNC_STATE_INIT && task->uploaded) ||
             task->state == SYNC_STATE_FETCH) &&
            new_state == SYNC_STATE_DONE &&
            FUNC2(task->repo))
            FUNC3 (task->repo, (info->multipart_upload && !info->end_multipart_upload));

        /* If we're in the process of uploading large set of files, they'll be splitted
         * into multiple batches for upload. We want to immediately start the next batch
         * after previous one is done.
         */
        if (new_state == SYNC_STATE_DONE &&
            info->multipart_upload &&
            !info->end_multipart_upload) {
            FUNC0 (task);
            return;
        }

        /* If file error levels occured during sync, the whole sync process can still finish
         * with DONE state. But we need to notify the user about this error in the interface.
         * Such file level errors are set with seaf_sync_manager_set_task_error_code().
         */
        if (new_state != SYNC_STATE_ERROR && task->error != SYNC_ERROR_ID_NO_ERROR) {
            new_state = SYNC_STATE_ERROR;
            FUNC4 ("Repo '%s' sync is finished but with error: %s\n",
                          task->repo->name,
                          FUNC6(task->error));
        }

        if (!(task->state == SYNC_STATE_DONE && new_state == SYNC_STATE_INIT) &&
            !(task->state == SYNC_STATE_INIT && new_state == SYNC_STATE_DONE)) {
            FUNC4 ("Repo '%s' sync state transition from '%s' to '%s'.\n",
                          task->repo->name,
                          sync_state_str[task->state],
                          sync_state_str[new_state]);
        }

        task->state = new_state;
        if (new_state == SYNC_STATE_DONE || 
            new_state == SYNC_STATE_CANCELED ||
            new_state == SYNC_STATE_ERROR) {
            info->in_sync = FALSE;
            --(task->mgr->n_running_tasks);
            FUNC7 (task, new_state);

            /* Keep previous upload progress if sync task is canceled or failed. */
            if (new_state == SYNC_STATE_DONE) {
                info->multipart_upload = FALSE;
                info->end_multipart_upload = FALSE;
                info->total_bytes = 0;
                info->uploaded_bytes = 0;
            }
        }

#ifdef WIN32
        seaf_sync_manager_add_refresh_path (seaf->sync_mgr, task->repo->worktree);
#endif
    }
}