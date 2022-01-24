#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  started; int /*<<< orphan*/  filelock_mgr; int /*<<< orphan*/  clone_mgr; int /*<<< orphan*/  repo_mgr; int /*<<< orphan*/  wt_monitor; int /*<<< orphan*/  sync_mgr; int /*<<< orphan*/  http_tx_mgr; int /*<<< orphan*/  ev_mgr; } ;
typedef  TYPE_1__ SeafileSession ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (void *vdata)
{
    SeafileSession *session = vdata;

    if (FUNC0 (session->ev_mgr) < 0) {
        FUNC1 ("Failed to start event manager.\n");
        return;
    }

    if (FUNC2 (session->http_tx_mgr) < 0) {
        FUNC1 ("Failed to start http transfer manager.\n");
        return;
    }

    if (FUNC6 (session->sync_mgr) < 0) {
        FUNC1 ("Failed to start sync manager.\n");
        return;
    }

    if (FUNC7 (session->wt_monitor) < 0) {
        FUNC1 ("Failed to start worktree monitor.\n");
        return;
    }

    /* Must be after wt monitor, since we may add watch to repo worktree. */
    if (FUNC5 (session->repo_mgr) < 0) {
        FUNC1 ("Failed to start repo manager.\n");
        return;
    }

    if (FUNC3 (session->clone_mgr) < 0) {
        FUNC1 ("Failed to start clone manager.\n");
        return;
    }

    if (FUNC4 (session->filelock_mgr) < 0) {
        FUNC1 ("Failed to start filelock manager.\n");
        return;
    }

    /* The system is up and running. */
    session->started = TRUE;
}