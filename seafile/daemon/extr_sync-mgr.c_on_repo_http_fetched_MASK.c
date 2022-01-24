#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ delete_pending; } ;
struct TYPE_16__ {scalar_t__ state; int /*<<< orphan*/  error; int /*<<< orphan*/  head; scalar_t__ is_clone; int /*<<< orphan*/  repo_id; } ;
struct TYPE_15__ {int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_14__ {int /*<<< orphan*/  head_commit; TYPE_1__* current_task; } ;
struct TYPE_13__ {TYPE_7__* repo; } ;
typedef  TYPE_1__ SyncTask ;
typedef  TYPE_2__ SyncInfo ;
typedef  TYPE_3__ SeafileSession ;
typedef  int /*<<< orphan*/  SeafSyncManager ;
typedef  TYPE_4__ HttpTxTask ;

/* Variables and functions */
 scalar_t__ HTTP_TASK_STATE_CANCELED ; 
 scalar_t__ HTTP_TASK_STATE_ERROR ; 
 scalar_t__ HTTP_TASK_STATE_FINISHED ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_SERVER_REPO_DELETED ; 
 int /*<<< orphan*/  SYNC_STATE_CANCELED ; 
 int /*<<< orphan*/  SYNC_STATE_DONE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (SeafileSession *seaf,
                      HttpTxTask *tx_task,
                      SeafSyncManager *manager)
{
    SyncInfo *info = FUNC0 (manager, tx_task->repo_id);
    SyncTask *task = info->current_task;

    /* Clone tasks are handled by clone manager. */
    if (tx_task->is_clone)
        return;

    if (task->repo->delete_pending) {
        FUNC5 (task, SYNC_STATE_CANCELED);
        FUNC3 (seaf->repo_mgr, task->repo);
        return;
    }

    if (tx_task->state == HTTP_TASK_STATE_FINISHED) {
        FUNC1 (info->head_commit, tx_task->head, 41);
        FUNC5 (task, SYNC_STATE_DONE);
    } else if (tx_task->state == HTTP_TASK_STATE_CANCELED) {
        FUNC5 (task, SYNC_STATE_CANCELED);
    } else if (tx_task->state == HTTP_TASK_STATE_ERROR) {
        if (tx_task->error == SYNC_ERROR_ID_SERVER_REPO_DELETED) {
            FUNC2 (task, task->repo);
        } else {
            FUNC4 (task, tx_task->error);
        }
    }
}