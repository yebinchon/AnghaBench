#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UnitType ;
struct TYPE_7__ {int /*<<< orphan*/  (* enumerate_perpetual ) (TYPE_1__*) ;} ;
struct TYPE_6__ {scalar_t__ test_run_flags; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 scalar_t__ MANAGER_TEST_RUN_MINIMAL ; 
 size_t _UNIT_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 TYPE_2__** unit_vtable ; 

__attribute__((used)) static void FUNC5(Manager *m) {
        UnitType c;

        FUNC0(m);

        if (m->test_run_flags == MANAGER_TEST_RUN_MINIMAL)
                return;

        /* Let's ask every type to load all units from disk/kernel that it might know */
        for (c = 0; c < _UNIT_TYPE_MAX; c++) {
                if (!FUNC3(c)) {
                        FUNC1("Unit type .%s is not supported on this system.", FUNC4(c));
                        continue;
                }

                if (unit_vtable[c]->enumerate_perpetual)
                        unit_vtable[c]->enumerate_perpetual(m);
        }
}