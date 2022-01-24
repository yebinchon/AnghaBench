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
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC3 (const char *worktree)
{
    char *tmp;
    unsigned int cnt;

    /* There is a repo name conflict, so we try to add a postfix */
    cnt = 1;
    while (1) {
        tmp = FUNC2("%s-%d", worktree, cnt++);
        if (FUNC0(tmp, F_OK) < 0) {
            return tmp;
        }

        if (cnt == -1U) {
            /* we have tried too much times, so give up */
            FUNC1(tmp);
            return NULL;
        }

        FUNC1(tmp);
    }

    /* XXX: never reach here */
}