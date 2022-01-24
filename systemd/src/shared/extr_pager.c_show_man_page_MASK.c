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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int FORK_DEATHSIG ; 
 int FORK_LOG ; 
 int FORK_NULL_STDIO ; 
 int FORK_RESET_SIGNALS ; 
 int FORK_RLIMIT_NOFILE_SAFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (char const*) ; 
 char* FUNC5 (char const*,int) ; 
 char* FUNC6 (char const*,char) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(const char *desc, bool null_stdio) {
        const char *args[4] = { "man", NULL, NULL, NULL };
        char *e = NULL;
        pid_t pid;
        size_t k;
        int r;

        k = FUNC4(desc);

        if (desc[k-1] == ')')
                e = FUNC6(desc, '(');

        if (e) {
                char *page = NULL, *section = NULL;

                page = FUNC5(desc, e - desc);
                section = FUNC5(e + 1, desc + k - e - 2);

                args[1] = section;
                args[2] = page;
        } else
                args[1] = desc;

        r = FUNC3("(man)", FORK_RESET_SIGNALS|FORK_DEATHSIG|(null_stdio ? FORK_NULL_STDIO : 0)|FORK_RLIMIT_NOFILE_SAFE|FORK_LOG, &pid);
        if (r < 0)
                return r;
        if (r == 0) {
                /* Child */
                FUNC1(args[0], (char**) args);
                FUNC2(errno, "Failed to execute man: %m");
                FUNC0(EXIT_FAILURE);
        }

        return FUNC7(NULL, pid, 0);
}