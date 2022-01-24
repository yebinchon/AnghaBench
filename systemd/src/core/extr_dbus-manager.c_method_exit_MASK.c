#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  objective; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  MANAGER_EXIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        int r;

        FUNC0(message);
        FUNC0(m);

        r = FUNC1(message, "halt", error);
        if (r < 0)
                return r;

        /* Exit() (in contrast to SetExitCode()) is actually allowed even if
         * we are running on the host. It will fall back on reboot() in
         * systemd-shutdown if it cannot do the exit() because it isn't a
         * container. */

        m->objective = MANAGER_EXIT;

        return FUNC2(message, NULL);
}