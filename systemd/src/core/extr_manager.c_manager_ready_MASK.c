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
struct TYPE_8__ {int honor_device_enumeration; int /*<<< orphan*/  objective; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  MANAGER_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(Manager *m) {
        FUNC0(m);

        /* After having loaded everything, do the final round of catching up with what might have changed */

        m->objective = MANAGER_OK; /* Tell everyone we are up now */

        /* It might be safe to log to the journal now and connect to dbus */
        FUNC4(m);
        FUNC3(m);

        /* Sync current state of bus names with our set of listening units */
        (void) FUNC2(m);

        /* Let's finally catch up with any changes that took place while we were reloading/reexecing */
        FUNC1(m);

        m->honor_device_enumeration = true;
}