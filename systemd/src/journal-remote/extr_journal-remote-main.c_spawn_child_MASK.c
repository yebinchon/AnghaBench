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
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char const*,char**) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 int FUNC10 (char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(const char* child, char** argv) {
        pid_t child_pid;
        int fd[2], r;

        if (FUNC5(fd) < 0)
                return FUNC3(errno, "Failed to create pager pipe: %m");

        r = FUNC10("(remote)", FORK_RESET_SIGNALS|FORK_DEATHSIG|FORK_LOG, &child_pid);
        if (r < 0) {
                FUNC9(fd);
                return r;
        }

        /* In the child */
        if (r == 0) {
                FUNC8(fd[0]);

                r = FUNC6(STDIN_FILENO, fd[1], STDERR_FILENO);
                if (r < 0) {
                        FUNC3(r, "Failed to dup pipe to stdout: %m");
                        FUNC0(EXIT_FAILURE);
                }

                (void) FUNC7();

                FUNC1(child, argv);
                FUNC3(errno, "Failed to exec child %s: %m", child);
                FUNC0(EXIT_FAILURE);
        }

        FUNC8(fd[1]);

        r = FUNC2(fd[0], true);
        if (r < 0)
                FUNC4(errno, "Failed to set child pipe to non-blocking: %m");

        return fd[0];
}