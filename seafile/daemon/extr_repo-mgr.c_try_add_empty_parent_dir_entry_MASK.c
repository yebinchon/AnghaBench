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
struct index_state {int dummy; } ;
typedef  int /*<<< orphan*/  SeafStat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct index_state*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (struct index_state*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static void
FUNC8 (const char *worktree,
                                struct index_state *istate,
                                const char *path)
{
    if (FUNC4 (istate, path, FUNC7(path), 0) != NULL)
        return;

    char *parent_dir = FUNC3 (path);

    /* Parent dir is the worktree dir. */
    if (FUNC6 (parent_dir, ".") == 0) {
        FUNC2 (parent_dir);
        return;
    }

    char *full_dir = FUNC1 (worktree, parent_dir, NULL);
    SeafStat st;
    if (FUNC5 (full_dir, &st) < 0) {
        goto out;
    }

    FUNC0 (istate, parent_dir, &st);

out:
    FUNC2 (parent_dir);
    FUNC2 (full_dir);
}