#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ si_code; scalar_t__ si_status; } ;
typedef  TYPE_1__ siginfo_t ;
struct TYPE_9__ {scalar_t__ pid; } ;
typedef  TYPE_2__ sd_event_source ;
typedef  TYPE_2__ Transfer ;

/* Variables and functions */
 int /*<<< orphan*/  CLD_DUMPED ; 
 scalar_t__ CLD_EXITED ; 
 int /*<<< orphan*/  CLD_KILLED ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC6(sd_event_source *s, const siginfo_t *si, void *userdata) {
        Transfer *t = userdata;
        bool success = false;

        FUNC1(s);
        FUNC1(t);

        if (si->si_code == CLD_EXITED) {
                if (si->si_status != 0)
                        FUNC3("Transfer process failed with exit code %i.", si->si_status);
                else {
                        FUNC2("Transfer process succeeded.");
                        success = true;
                }

        } else if (FUNC0(si->si_code, CLD_KILLED, CLD_DUMPED))
                FUNC3("Transfer process terminated by signal %s.", FUNC4(si->si_status));
        else
                FUNC3("Transfer process failed due to unknown reason.");

        t->pid = 0;

        return FUNC5(t, success);
}