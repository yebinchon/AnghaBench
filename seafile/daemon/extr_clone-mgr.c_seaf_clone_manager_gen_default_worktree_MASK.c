#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SeafCloneManager ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

char *
FUNC3 (SeafCloneManager *mgr,
                                         const char *worktree_parent,
                                         const char *repo_name)
{
    char *wt = FUNC0 (worktree_parent, repo_name, NULL);
    char *worktree;

    worktree = FUNC2 (mgr, wt, TRUE, NULL);
    if (!worktree)
        return wt;

    FUNC1 (wt);
    return worktree;
}