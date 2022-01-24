#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ n_ref; } ;
typedef  TYPE_1__ DynamicUser ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static DynamicUser* FUNC3(DynamicUser *d) {
        if (!d)
                return NULL;

        /* Drop a reference to a DynamicUser object, and destroy the user completely if this was the last
         * reference. This is called whenever a service is shut down and wants its dynamic UID gone. Note that
         * dynamic_user_unref() is what is called whenever a service is simply freed, for example during a reload
         * cycle, where the dynamic users should not be destroyed, but our datastructures should. */

        FUNC2(d);

        if (d->n_ref > 0)
                return NULL;

        (void) FUNC0(d);
        return FUNC1(d);
}