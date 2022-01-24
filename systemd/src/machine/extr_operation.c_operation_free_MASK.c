#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int pid; TYPE_2__* machine; TYPE_1__* manager; int /*<<< orphan*/  message; int /*<<< orphan*/  extra_fd; int /*<<< orphan*/  errno_fd; int /*<<< orphan*/  event_source; } ;
struct TYPE_10__ {int /*<<< orphan*/  operations; } ;
struct TYPE_9__ {int /*<<< orphan*/  n_operations; int /*<<< orphan*/  operations; } ;
typedef  TYPE_3__ Operation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  operations ; 
 int /*<<< orphan*/  operations_by_machine ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

Operation *FUNC6(Operation *o) {
        if (!o)
                return NULL;

        FUNC4(o->event_source);

        FUNC2(o->errno_fd);
        FUNC2(o->extra_fd);

        if (o->pid > 1)
                (void) FUNC5(o->pid);

        FUNC3(o->message);

        if (o->manager) {
                FUNC0(operations, o->manager->operations, o);
                o->manager->n_operations--;
        }

        if (o->machine)
                FUNC0(operations_by_machine, o->machine->operations, o);

        return FUNC1(o);
}