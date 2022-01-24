#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  worktree_invalid; scalar_t__ worktree; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  SeafRepoManager ;
typedef  TYPE_1__ SeafRepo ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 

int
FUNC4 (SeafRepoManager *mgr,
                                     SeafRepo *repo,
                                     const char *worktree)
{
    if (FUNC0(worktree, F_OK) != 0)
        return -1;

    if (repo->worktree)
        FUNC1 (repo->worktree);
    repo->worktree = FUNC2(worktree);

    if (FUNC3 (mgr, repo->id,
                                             "worktree",
                                             repo->worktree) < 0)
        return -1;

    repo->worktree_invalid = FALSE;

    return 0;
}