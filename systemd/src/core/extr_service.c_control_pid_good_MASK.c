#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ control_pid; } ;
typedef  TYPE_1__ Service ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC1(Service *s) {
        FUNC0(s);

        /* Returns 0 if the control PID is dead, > 0 if it is good. We never actually return < 0 here, but in order to
         * make this function as similar as possible to main_pid_good() and cgroup_good(), we pretend that < 0 also
         * means: we can't figure it out. */

        return s->control_pid > 0;
}