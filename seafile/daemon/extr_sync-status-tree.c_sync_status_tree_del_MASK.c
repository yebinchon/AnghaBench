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
typedef  int /*<<< orphan*/  guint ;
struct TYPE_3__ {int /*<<< orphan*/  worktree; int /*<<< orphan*/ * root; } ;
typedef  TYPE_1__ SyncStatusTree ;
typedef  int /*<<< orphan*/  SyncStatusDir ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char** FUNC2 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 

void
FUNC4 (SyncStatusTree *tree,
                      const char *path)
{
    char **dnames = NULL;
    guint n;
    SyncStatusDir *dir = tree->root;

    dnames = FUNC2 (path, "/", 0);
    if (!dnames)
        return;
    n = FUNC3 (dnames);

    FUNC0 (dir, dnames, n, 0, tree->worktree);

    FUNC1 (dnames);
}