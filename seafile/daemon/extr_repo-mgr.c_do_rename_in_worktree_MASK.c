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
struct TYPE_3__ {int /*<<< orphan*/  new_name; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  GHashTable ;
typedef  TYPE_1__ DiffEntry ;

/* Variables and functions */
 char* FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8 (DiffEntry *de, const char *worktree,
                       GHashTable *conflict_hash, GHashTable *no_conflict_hash)
{
    char *old_path, *new_path;
    int ret = 0;

    old_path = FUNC1 (worktree, de->name, NULL);

    if (FUNC3 (old_path)) {
        new_path = FUNC0 (worktree, de->new_name, FUNC7(de->new_name));
        if (!new_path) {
            ret = -1;
            goto out;
        }

        if (FUNC4 (old_path, new_path) < 0) {
            FUNC5 ("Failed to rename %s to %s: %s.\n",
                          old_path, new_path, FUNC6(errno));
            ret = -1;
        }

        FUNC2 (new_path);
    }

out:
    FUNC2 (old_path);
    return ret;
}