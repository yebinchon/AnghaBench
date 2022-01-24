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
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static char *
FUNC5 (SeafCloneManager *mgr,
                            const char *wt_tmp,
                            GError **error)
{
    char *worktree;

    if (FUNC0 (wt_tmp, F_OK) == 0) {
        worktree = FUNC4 (wt_tmp);
    } else {
        worktree = FUNC2(wt_tmp);
    }

    if (!FUNC3 (mgr, worktree, error)) {
        FUNC1 (worktree);
        return NULL;
    }

    return worktree;
}