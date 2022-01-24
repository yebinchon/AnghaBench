#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct CommitResult {TYPE_2__* task; scalar_t__ changed; int /*<<< orphan*/  success; } ;
struct TYPE_13__ {int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_12__ {scalar_t__ delete_pending; } ;
struct TYPE_11__ {scalar_t__ state; scalar_t__ is_initial_commit; scalar_t__ is_manual_sync; TYPE_1__* mgr; TYPE_3__* repo; } ;
struct TYPE_10__ {int /*<<< orphan*/  commit_job_running; } ;
typedef  TYPE_2__ SyncTask ;
typedef  TYPE_3__ SeafRepo ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_INDEX_ERROR ; 
 int /*<<< orphan*/  SYNC_STATE_CANCELED ; 
 scalar_t__ SYNC_STATE_CANCEL_PENDING ; 
 int /*<<< orphan*/  SYNC_STATE_DONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct CommitResult*) ; 
 TYPE_8__* seaf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (void *vres)
{
    struct CommitResult *res = vres;
    SeafRepo *repo = res->task->repo;
    SyncTask *task = res->task;

    res->task->mgr->commit_job_running = FALSE;

    if (repo->delete_pending) {
        FUNC5 (res->task, SYNC_STATE_CANCELED);
        FUNC2 (seaf->repo_mgr, repo);
        FUNC1 (res);
        return;
    }

    if (res->task->state == SYNC_STATE_CANCEL_PENDING) {
        FUNC5 (res->task, SYNC_STATE_CANCELED);
        FUNC1 (res);
        return;
    }

    if (!res->success) {
        FUNC3 (res->task, SYNC_ERROR_ID_INDEX_ERROR);
        FUNC1 (res);
        return;
    }

    if (res->changed)
        FUNC4 (res->task);
    else if (task->is_manual_sync || task->is_initial_commit)
        FUNC0 (task);
    else
        FUNC5 (task, SYNC_STATE_DONE);

    FUNC1 (res);
}