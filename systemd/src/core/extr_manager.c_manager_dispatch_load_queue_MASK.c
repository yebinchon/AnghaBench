#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* in_load_queue; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_8__ {int dispatching_load_queue; TYPE_1__* load_queue; } ;
typedef  TYPE_2__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

unsigned FUNC3(Manager *m) {
        Unit *u;
        unsigned n = 0;

        FUNC0(m);

        /* Make sure we are not run recursively */
        if (m->dispatching_load_queue)
                return 0;

        m->dispatching_load_queue = true;

        /* Dispatches the load queue. Takes a unit from the queue and
         * tries to load its data until the queue is empty */

        while ((u = m->load_queue)) {
                FUNC0(u->in_load_queue);

                FUNC2(u);
                n++;
        }

        m->dispatching_load_queue = false;

        /* Dispatch the units waiting for their target dependencies to be added now, as all targets that we know about
         * should be loaded and have aliases resolved */
        (void) FUNC1(m);

        return n;
}