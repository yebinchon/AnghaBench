#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int in_gc_queue; } ;
struct TYPE_12__ {TYPE_2__* machine_gc_queue; } ;
typedef  TYPE_1__ Manager ;
typedef  TYPE_2__ Machine ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ MACHINE_CLOSING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  gc_queue ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(Manager *m, bool drop_not_started) {
        Machine *machine;

        FUNC1(m);

        while ((machine = m->machine_gc_queue)) {
                FUNC0(gc_queue, m->machine_gc_queue, machine);
                machine->in_gc_queue = false;

                /* First, if we are not closing yet, initiate stopping */
                if (FUNC5(machine, drop_not_started) &&
                    FUNC4(machine) != MACHINE_CLOSING)
                        FUNC6(machine);

                /* Now, the stop probably made this referenced
                 * again, but if it didn't, then it's time to let it
                 * go entirely. */
                if (FUNC5(machine, drop_not_started)) {
                        FUNC2(machine);
                        FUNC3(machine);
                }
        }
}