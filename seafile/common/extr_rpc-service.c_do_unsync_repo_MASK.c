#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  repo_mgr; int /*<<< orphan*/  sync_mgr; int /*<<< orphan*/  wt_monitor; int /*<<< orphan*/  started; } ;
struct TYPE_9__ {scalar_t__ sync_interval; int /*<<< orphan*/  worktree; int /*<<< orphan*/  id; scalar_t__ auto_sync; } ;
struct TYPE_8__ {scalar_t__ in_sync; } ;
typedef  TYPE_1__ SyncInfo ;
typedef  TYPE_2__ SeafRepo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_6__* seaf ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC8(SeafRepo *repo)
{
    if (!seaf->started) {
        FUNC2 ("System not started, skip removing repo.\n");
        return -1;
    }

    if (repo->auto_sync && (repo->sync_interval == 0))
        FUNC7 (seaf->wt_monitor, repo->id);

    FUNC5 (seaf->sync_mgr, repo->id);

    SyncInfo *info = FUNC6 (seaf->sync_mgr, repo->id);

    /* If we are syncing the repo,
     * we just mark the repo as deleted and let sync-mgr actually delete it.
     * Otherwise we are safe to delete the repo.
     */
    char *worktree = FUNC1 (repo->worktree);
    if (info != NULL && info->in_sync) {
        FUNC4 (seaf->repo_mgr, repo);
    } else {
        FUNC3 (seaf->repo_mgr, repo);
    }

    FUNC0 (worktree);

    return 0;
}