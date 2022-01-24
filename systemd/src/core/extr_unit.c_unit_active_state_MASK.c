#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UnitActiveState ;
struct TYPE_9__ {scalar_t__ load_state; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_10__ {int /*<<< orphan*/  (* active_state ) (TYPE_1__*) ;} ;

/* Variables and functions */
 scalar_t__ UNIT_MERGED ; 
 TYPE_7__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 

UnitActiveState FUNC4(Unit *u) {
        FUNC1(u);

        if (u->load_state == UNIT_MERGED)
                return FUNC4(FUNC3(u));

        /* After a reload it might happen that a unit is not correctly
         * loaded but still has a process around. That's why we won't
         * shortcut failed loading to UNIT_INACTIVE_FAILED. */

        return FUNC0(u)->active_state(u);
}