#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gboolean ;
struct TYPE_6__ {int /*<<< orphan*/  wt_monitor; int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; int /*<<< orphan*/  worktree; } ;
typedef  TYPE_1__ SeafRepo ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 char* FUNC0 (char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 TYPE_4__* seaf ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (SeafRepo *repo, const char *new_name, gboolean rewatch)
{
    char *dirname = NULL, *basename = NULL;
    char *new_worktree = NULL;

    FUNC5 ("Update worktree folder name of repo %s to %s.\n",
                  repo->id, new_name);

    dirname = FUNC3 (repo->worktree);
    if (FUNC4 (dirname, ".") == 0)
        return;
    basename = FUNC2 (repo->worktree);

    new_worktree = FUNC0 (dirname, new_name, NULL);

    /* This can possibly fail on Windows if some files are opened under the worktree.
     * The rename operation will be retried on next restart.
     */
    if (FUNC7 (repo->worktree, new_worktree) < 0) {
        FUNC8 ("Failed to rename worktree from %s to %s: %s.\n",
                      repo->worktree, new_worktree, FUNC11(errno));
        goto out;
    }

    if (FUNC6 (seaf->repo_mgr, repo, new_worktree) < 0) {
        goto out;
    }

    if (rewatch) {
        if (FUNC9 (seaf->wt_monitor, repo->id) < 0) {
            FUNC8 ("Failed to unwatch repo %s old worktree.\n", repo->id);
            goto out;
        }

        if (FUNC10 (seaf->wt_monitor, repo->id, repo->worktree) < 0) {
            FUNC8 ("Failed to watch repo %s new worktree.\n", repo->id);
        }
    }

out:
    FUNC1 (dirname);
    FUNC1 (basename);
    FUNC1 (new_worktree);
}