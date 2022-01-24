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
 int /*<<< orphan*/  WAIT_LOG ; 
 int /*<<< orphan*/  X_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char const*,char**) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 char* FUNC6 (char*,char const*) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const char *type, const char *device) {
        const char *mkfs;
        pid_t pid;
        int r;

        if (FUNC5(type, "swap"))
                mkfs = "/sbin/mkswap";
        else
                mkfs = FUNC6("/sbin/mkfs.", type);
        if (FUNC1(mkfs, X_OK) != 0)
                return FUNC3(errno, "%s is not executable: %m", mkfs);

        r = FUNC4("(mkfs)", FORK_RESET_SIGNALS|FORK_DEATHSIG|FORK_RLIMIT_NOFILE_SAFE|FORK_LOG, &pid);
        if (r < 0)
                return r;
        if (r == 0) {
                const char *cmdline[3] = { mkfs, device, NULL };

                /* Child */

                FUNC2(cmdline[0], (char**) cmdline);
                FUNC0(EXIT_FAILURE);
        }

        return FUNC7(mkfs, pid, WAIT_LOG);
}