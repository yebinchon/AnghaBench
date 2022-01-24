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
struct TYPE_3__ {int si_code; int si_status; } ;
typedef  TYPE_1__ siginfo_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  ContainerStatus ;

/* Variables and functions */
#define  CLD_DUMPED 130 
#define  CLD_EXITED 129 
#define  CLD_KILLED 128 
 int /*<<< orphan*/  CONTAINER_REBOOTED ; 
 int /*<<< orphan*/  CONTAINER_TERMINATED ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int SIGHUP ; 
 int SIGINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _fallthrough_ ; 
 int /*<<< orphan*/  arg_machine ; 
 int /*<<< orphan*/  arg_quiet ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(pid_t pid, ContainerStatus *container) {
        siginfo_t status;
        int r;

        r = FUNC5(pid, &status);
        if (r < 0)
                return FUNC3(r, "Failed to wait for container: %m");

        switch (status.si_code) {

        case CLD_EXITED:
                if (status.si_status == 0)
                        FUNC2(arg_quiet ? LOG_DEBUG : LOG_INFO, "Container %s exited successfully.", arg_machine);
                else
                        FUNC2(arg_quiet ? LOG_DEBUG : LOG_INFO, "Container %s failed with error code %i.", arg_machine, status.si_status);

                *container = CONTAINER_TERMINATED;
                return status.si_status;

        case CLD_KILLED:
                if (status.si_status == SIGINT) {
                        FUNC2(arg_quiet ? LOG_DEBUG : LOG_INFO, "Container %s has been shut down.", arg_machine);
                        *container = CONTAINER_TERMINATED;
                        return 0;

                } else if (status.si_status == SIGHUP) {
                        FUNC2(arg_quiet ? LOG_DEBUG : LOG_INFO, "Container %s is being rebooted.", arg_machine);
                        *container = CONTAINER_REBOOTED;
                        return 0;
                }

                _fallthrough_;
        case CLD_DUMPED:
                return FUNC1(FUNC0(EIO),
                                       "Container %s terminated by signal %s.", arg_machine, FUNC4(status.si_status));

        default:
                return FUNC1(FUNC0(EIO),
                                       "Container %s failed due to unknown reason.", arg_machine);
        }
}