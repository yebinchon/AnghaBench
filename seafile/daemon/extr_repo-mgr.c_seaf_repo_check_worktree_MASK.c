#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  id; int /*<<< orphan*/  name; int /*<<< orphan*/ * worktree; } ;
struct TYPE_5__ {int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_1__ SeafStat ;
typedef  TYPE_2__ SeafRepo ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int
FUNC4 (SeafRepo *repo)
{
    SeafStat st;

    if (repo->worktree == NULL) {
        FUNC3 ("Worktree for repo '%s'(%.8s) is not set.\n",
                      &repo->name, repo->id);
        return -1;
    }

    /* check repo worktree */
    if (FUNC1(repo->worktree, F_OK) < 0) {
        FUNC3 ("Failed to access worktree %s for repo '%s'(%.8s)\n",
                      repo->worktree, repo->name, repo->id);
        return -1;
    }
    if (FUNC2(repo->worktree, &st) < 0) {
        FUNC3 ("Failed to stat worktree %s for repo '%s'(%.8s)\n",
                      repo->worktree, repo->name, repo->id);
        return -1;
    }
    if (!FUNC0(st.st_mode)) {
        FUNC3 ("Worktree %s for repo '%s'(%.8s) is not a directory.\n",
                      repo->worktree, repo->name, repo->id);
        return -1;
    }

    return 0;
}