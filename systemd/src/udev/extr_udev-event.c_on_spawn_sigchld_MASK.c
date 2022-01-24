#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int si_code; int si_status; } ;
typedef  TYPE_1__ siginfo_t ;
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_6__ {int /*<<< orphan*/  cmd; int /*<<< orphan*/  device; int /*<<< orphan*/  accept_failure; } ;
typedef  TYPE_2__ Spawn ;

/* Variables and functions */
#define  CLD_DUMPED 130 
#define  CLD_EXITED 129 
#define  CLD_KILLED 128 
 int EIO ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(sd_event_source *s, const siginfo_t *si, void *userdata) {
        Spawn *spawn = userdata;
        int ret = -EIO;

        FUNC0(spawn);

        switch (si->si_code) {
        case CLD_EXITED:
                if (si->si_status == 0)
                        FUNC1(spawn->device, "Process '%s' succeeded.", spawn->cmd);
                else
                        FUNC3(spawn->device, spawn->accept_failure ? LOG_DEBUG : LOG_WARNING, 0,
                                        "Process '%s' failed with exit code %i.", spawn->cmd, si->si_status);
                ret = si->si_status;
                break;
        case CLD_KILLED:
        case CLD_DUMPED:
                FUNC2(spawn->device, "Process '%s' terminated by signal %s.", spawn->cmd, FUNC6(si->si_status));
                break;
        default:
                FUNC2(spawn->device, "Process '%s' failed due to unknown reason.", spawn->cmd);
        }

        FUNC4(FUNC5(s), ret);
        return 1;
}