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
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(const char *path, char *argv[], int stdout_fd, pid_t *pid) {

        pid_t _pid;
        int r;

        if (FUNC4(path)) {
                FUNC2("%s is empty (a mask).", path);
                return 0;
        }

        r = FUNC7("(direxec)", FORK_DEATHSIG|FORK_LOG, &_pid);
        if (r < 0)
                return r;
        if (r == 0) {
                char *_argv[2];

                if (stdout_fd >= 0) {
                        r = FUNC5(STDIN_FILENO, stdout_fd, STDERR_FILENO);
                        if (r < 0)
                                FUNC0(EXIT_FAILURE);
                }

                (void) FUNC6();

                if (!argv) {
                        _argv[0] = (char*) path;
                        _argv[1] = NULL;
                        argv = _argv;
                } else
                        argv[0] = (char*) path;

                FUNC1(path, argv);
                FUNC3(errno, "Failed to execute %s: %m", path);
                FUNC0(EXIT_FAILURE);
        }

        *pid = _pid;
        return 1;
}