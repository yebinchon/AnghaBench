#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UnitActiveState ;
struct TYPE_8__ {scalar_t__ load_state; scalar_t__ job; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_9__ {int (* clean ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  ExecCleanMask ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int EUNATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNIT_INACTIVE ; 
 scalar_t__ UNIT_LOADED ; 
 TYPE_6__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(Unit *u, ExecCleanMask mask) {
        UnitActiveState state;

        FUNC2(u);

        /* Special return values:
         *
         *   -EOPNOTSUPP → cleaning not supported for this unit type
         *   -EUNATCH    → cleaning not defined for this resource type
         *   -EBUSY      → unit currently can't be cleaned since it's running or not properly loaded, or has
         *                 a job queued or similar
         */

        if (!FUNC1(u)->clean)
                return -EOPNOTSUPP;

        if (mask == 0)
                return -EUNATCH;

        if (u->load_state != UNIT_LOADED)
                return -EBUSY;

        if (u->job)
                return -EBUSY;

        state = FUNC4(u);
        if (!FUNC0(state, UNIT_INACTIVE))
                return -EBUSY;

        return FUNC1(u)->clean(u, mask);
}