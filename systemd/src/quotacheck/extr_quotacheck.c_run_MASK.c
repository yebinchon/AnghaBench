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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int FORK_DEATHSIG ; 
 int FORK_LOG ; 
 int FORK_RESET_SIGNALS ; 
 int FORK_RLIMIT_NOFILE_SAFE ; 
 int FORK_WAIT ; 
 int /*<<< orphan*/  F_OK ; 
#define  QUOTACHECK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg_force ; 
 scalar_t__ arg_skip ; 
 int /*<<< orphan*/  FUNC3 (char const* const,char**) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  parse_proc_cmdline_item ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(int argc, char *argv[]) {
        int r;

        FUNC5();

        if (argc > 1)
                return FUNC4(FUNC0(EINVAL),
                                       "This program takes no arguments.");

        FUNC10(0022);

        r = FUNC7(parse_proc_cmdline_item, NULL, 0);
        if (r < 0)
                FUNC6(r, "Failed to parse kernel command line, ignoring: %m");

        FUNC9();

        if (!arg_force) {
                if (arg_skip)
                        return 0;

                if (FUNC2("/run/systemd/quotacheck", F_OK) < 0)
                        return 0;
        }

        r = FUNC8("(quotacheck)", FORK_RESET_SIGNALS|FORK_DEATHSIG|FORK_RLIMIT_NOFILE_SAFE|FORK_WAIT|FORK_LOG, NULL);
        if (r < 0)
                return r;
        if (r == 0) {
                static const char * const cmdline[] = {
                        QUOTACHECK,
                        "-anug",
                        NULL
                };

                /* Child */

                FUNC3(cmdline[0], (char**) cmdline);
                FUNC1(EXIT_FAILURE); /* Operational error */
        }

        return 0;
}