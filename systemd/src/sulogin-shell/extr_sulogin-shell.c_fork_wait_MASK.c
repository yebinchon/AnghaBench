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
 int FORK_RESET_SIGNALS ; 
 int FORK_RLIMIT_NOFILE_SAFE ; 
 int /*<<< orphan*/  WAIT_LOG_ABNORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char const* const,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const* const) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (char const* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const char* const cmdline[]) {
        pid_t pid;
        int r;

        r = FUNC3("(sulogin)", FORK_RESET_SIGNALS|FORK_DEATHSIG|FORK_RLIMIT_NOFILE_SAFE|FORK_LOG, &pid);
        if (r < 0)
                return r;
        if (r == 0) {
                /* Child */
                FUNC1(cmdline[0], (char**) cmdline);
                FUNC2(errno, "Failed to execute %s: %m", cmdline[0]);
                FUNC0(EXIT_FAILURE); /* Operational error */
        }

        return FUNC4(cmdline[0], pid, WAIT_LOG_ABNORMAL);
}