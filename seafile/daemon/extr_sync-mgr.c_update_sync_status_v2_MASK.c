#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_12__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  commit_id; } ;
struct TYPE_19__ {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct TYPE_18__ {int /*<<< orphan*/  head_commit; scalar_t__ deleted_on_relay; scalar_t__ repo_corrupted; int /*<<< orphan*/  repo_id; } ;
struct TYPE_17__ {TYPE_2__* info; TYPE_3__* repo; } ;
struct TYPE_16__ {int /*<<< orphan*/  job_mgr; int /*<<< orphan*/  branch_mgr; } ;
typedef  TYPE_1__ SyncTask ;
typedef  TYPE_2__ SyncInfo ;
typedef  TYPE_3__ SeafRepo ;
typedef  TYPE_4__ SeafBranch ;

/* Variables and functions */
 int /*<<< orphan*/  SYNC_ERROR_ID_LOCAL_DATA_CORRUPT ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_SERVER_REPO_CORRUPT ; 
 int /*<<< orphan*/  SYNC_STATE_DONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  remove_blocks_done ; 
 int /*<<< orphan*/  remove_repo_blocks ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 TYPE_12__* seaf ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (SyncTask *task)
{
    SyncInfo *info = task->info;
    SeafRepo *repo = task->repo;
    SeafBranch *master = NULL, *local = NULL;

    local = FUNC2 (
        seaf->branch_mgr, info->repo_id, "local");
    if (!local) {
        FUNC6 ("[sync-mgr] Branch local not found for repo %s(%.8s).\n",
                   repo->name, repo->id);
        FUNC7 (task, SYNC_ERROR_ID_LOCAL_DATA_CORRUPT);
        return;
    }

    master = FUNC2 (
        seaf->branch_mgr, info->repo_id, "master");
    if (!master) {
        FUNC6 ("[sync-mgr] Branch master not found for repo %s(%.8s).\n",
                   repo->name, repo->id);
        FUNC7 (task, SYNC_ERROR_ID_LOCAL_DATA_CORRUPT);
        return;
    }

    if (info->repo_corrupted) {
        FUNC7 (task, SYNC_ERROR_ID_SERVER_REPO_CORRUPT);
    } else if (info->deleted_on_relay) {
        FUNC0 (task, repo);
    } else {
        /* If local head is the same as remote head, already in sync. */
        if (FUNC9 (local->commit_id, info->head_commit) == 0) {
            /* As long as the repo is synced with the server. All the local
             * blocks are not useful any more.
             */
            if (FUNC1 (repo)) {
                FUNC5 ("Removing blocks for repo %s(%.8s).\n",
                              repo->name, repo->id);
                FUNC4 (seaf->job_mgr,
                                               remove_repo_blocks,
                                               remove_blocks_done,
                                               task);
            } else
                FUNC10 (task, SYNC_STATE_DONE);
        } else
            FUNC8 (task, task->info->head_commit);
    }

    FUNC3 (local);
    FUNC3 (master);
}