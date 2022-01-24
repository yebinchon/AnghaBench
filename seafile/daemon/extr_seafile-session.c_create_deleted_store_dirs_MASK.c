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

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static int
FUNC4 (const char *deleted_store)
{
    char *commits = NULL, *fs = NULL, *blocks = NULL;
    int ret = 0;

    if (FUNC0 (deleted_store) < 0) {
        FUNC3 ("Directory %s does not exist and is unable to create\n",
                      deleted_store);
        return -1;
    }

    commits = FUNC1 (deleted_store, "commits", NULL);
    if (FUNC0 (commits) < 0) {
        FUNC3 ("Directory %s does not exist and is unable to create\n",
                      commits);
        ret = -1;
        goto out;
    }

    fs = FUNC1 (deleted_store, "fs", NULL);
    if (FUNC0 (fs) < 0) {
        FUNC3 ("Directory %s does not exist and is unable to create\n",
                      fs);
        ret = -1;
        goto out;
    }

    blocks = FUNC1 (deleted_store, "blocks", NULL);
    if (FUNC0 (blocks) < 0) {
        FUNC3 ("Directory %s does not exist and is unable to create\n",
                      blocks);
        ret = -1;
        goto out;
    }

out:
    FUNC2 (commits);
    FUNC2 (fs);
    FUNC2 (blocks);
    return ret;
}