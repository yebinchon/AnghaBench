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
struct signalfd_siginfo {int dummy; } ;
struct TYPE_3__ {scalar_t__ si_pid; } ;
typedef  TYPE_1__ siginfo_t ;
typedef  struct signalfd_siginfo const sd_event_source ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  P_ALL ; 
 int /*<<< orphan*/  P_PID ; 
 int WEXITED ; 
 int WNOHANG ; 
 int WNOWAIT ; 
 int /*<<< orphan*/  FUNC1 (struct signalfd_siginfo const*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct signalfd_siginfo const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC6(sd_event_source *s, const struct signalfd_siginfo *ssi, void *userdata) {
        pid_t pid;

        FUNC1(s);
        FUNC1(ssi);

        pid = FUNC0(userdata);

        for (;;) {
                siginfo_t si = {};

                if (FUNC5(P_ALL, 0, &si, WNOHANG|WNOWAIT|WEXITED) < 0)
                        return FUNC2(errno, "Failed to waitid(): %m");
                if (si.si_pid == 0) /* No pending children. */
                        break;
                if (si.si_pid == pid) {
                        /* The main process we care for has exited. Return from
                         * signal handler but leave the zombie. */
                        FUNC3(FUNC4(s), 0);
                        break;
                }

                /* Reap all other children. */
                (void) FUNC5(P_PID, si.si_pid, &si, WNOHANG|WEXITED);
        }

        return 0;
}