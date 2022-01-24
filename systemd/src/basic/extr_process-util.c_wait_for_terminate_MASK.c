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
typedef  int /*<<< orphan*/  siginfo_t ;
typedef  int pid_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  P_PID ; 
 int /*<<< orphan*/  WEXITED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(pid_t pid, siginfo_t *status) {
        siginfo_t dummy;

        FUNC0(pid >= 1);

        if (!status)
                status = &dummy;

        for (;;) {
                FUNC3(*status);

                if (FUNC2(P_PID, pid, status, WEXITED) < 0) {

                        if (errno == EINTR)
                                continue;

                        return FUNC1();
                }

                return 0;
        }
}