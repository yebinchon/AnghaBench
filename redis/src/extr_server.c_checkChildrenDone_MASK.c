#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int pid_t ;
struct TYPE_2__ {int rdb_child_pid; int aof_child_pid; int module_child_pid; scalar_t__ rdb_pipe_conns; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int SERVER_CHILD_NOERROR_RETVAL ; 
 int SIGUSR1 ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  WNOHANG ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,long,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC13(void) {
    int statloc;
    pid_t pid;

    /* If we have a diskless rdb child (note that we support only one concurrent
     * child), we want to avoid collecting it's exit status and acting on it
     * as long as we didn't finish to drain the pipe, since then we're at risk
     * of starting a new fork and a new pipe before we're done with the previous
     * one. */
    if (server.rdb_child_pid != -1 && server.rdb_pipe_conns)
        return;

    if ((pid = FUNC12(&statloc,WNOHANG,NULL)) != 0) {
        int exitcode = FUNC1(statloc);
        int bysignal = 0;

        if (FUNC2(statloc)) bysignal = FUNC3(statloc);

        /* sigKillChildHandler catches the signal and calls exit(), but we
         * must make sure not to flag lastbgsave_status, etc incorrectly.
         * We could directly terminate the child process via SIGUSR1
         * without handling it, but in this case Valgrind will log an
         * annoying error. */
        if (exitcode == SERVER_CHILD_NOERROR_RETVAL) {
            bysignal = SIGUSR1;
            exitcode = 1;
        }

        if (pid == -1) {
            FUNC9(LL_WARNING,"wait3() returned an error: %s. "
                "rdb_child_pid = %d, aof_child_pid = %d, module_child_pid = %d",
                FUNC10(errno),
                (int) server.rdb_child_pid,
                (int) server.aof_child_pid,
                (int) server.module_child_pid);
        } else if (pid == server.rdb_child_pid) {
            FUNC5(exitcode,bysignal);
            if (!bysignal && exitcode == 0) FUNC8();
        } else if (pid == server.aof_child_pid) {
            FUNC4(exitcode,bysignal);
            if (!bysignal && exitcode == 0) FUNC8();
        } else if (pid == server.module_child_pid) {
            FUNC0(exitcode,bysignal);
            if (!bysignal && exitcode == 0) FUNC8();
        } else {
            if (!FUNC7(pid)) {
                FUNC9(LL_WARNING,
                    "Warning, detected child with unmatched pid: %ld",
                    (long)pid);
            }
        }
        FUNC11();
        FUNC6();
    }
}