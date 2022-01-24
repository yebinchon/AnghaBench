#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/  bus_name_good; } ;
typedef  TYPE_1__ Service ;

/* Variables and functions */
 scalar_t__ SERVICE_DBUS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC3(Service *s) {
        int main_pid_ok;
        FUNC0(s);

        if (s->type == SERVICE_DBUS && !s->bus_name_good)
                return false;

        main_pid_ok = FUNC2(s);
        if (main_pid_ok > 0) /* It's alive */
                return true;
        if (main_pid_ok == 0) /* It's dead */
                return false;

        /* OK, we don't know anything about the main PID, maybe
         * because there is none. Let's check the control group
         * instead. */

        return FUNC1(s) != 0;
}