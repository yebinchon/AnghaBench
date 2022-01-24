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
struct TYPE_3__ {scalar_t__ si_code; int si_status; } ;
typedef  TYPE_1__ siginfo_t ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CLD_EXITED ; 
 int FORK_CLOSE_ALL_FDS ; 
 int FORK_DEATHSIG ; 
 int FORK_NULL_STDIO ; 
 int FORK_REOPEN_LOG ; 
 int FORK_RESET_SIGNALS ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(void) {
        siginfo_t status;
        pid_t pid;
        int r;

        FUNC0(SIGCHLD);

        r = FUNC3("(test-child)", FORK_RESET_SIGNALS|FORK_CLOSE_ALL_FDS|FORK_DEATHSIG|FORK_NULL_STDIO|FORK_REOPEN_LOG, &pid);
        FUNC2(r >= 0);

        if (r == 0) {
                /* child */
                FUNC4(100 * USEC_PER_MSEC);

                FUNC1(88);
        }

        FUNC2(FUNC5(pid, &status) >= 0);
        FUNC2(status.si_code == CLD_EXITED);
        FUNC2(status.si_status == 88);
}