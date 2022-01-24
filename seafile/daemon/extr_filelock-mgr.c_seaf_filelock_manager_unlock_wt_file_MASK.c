#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_4__ {int /*<<< orphan*/  worktree; } ;
typedef  TYPE_1__ SeafRepo ;
typedef  int /*<<< orphan*/  SeafFilelockManager ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEAF_PATH_PERM_RW ; 
 char* FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_3__* seaf ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 

void
FUNC6 (SeafFilelockManager *mgr,
                                      const char *repo_id,
                                      const char *path)
{
    SeafRepo *repo = FUNC2 (seaf->repo_mgr, repo_id);
    if (!repo)
        return;

    char *fullpath = FUNC0 (repo->worktree, path, NULL);

#ifdef WIN32
    if (seaf_util_exists (fullpath))
        seaf_unset_path_permission (fullpath, FALSE);
#else
    if (FUNC5 (fullpath))
        FUNC3 (fullpath, SEAF_PATH_PERM_RW, FALSE);
#endif
    FUNC1 (fullpath);
}