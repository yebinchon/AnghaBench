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
struct TYPE_6__ {int /*<<< orphan*/  slice; } ;
typedef  TYPE_1__ Unit ;
typedef  int /*<<< orphan*/  CGroupMask ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

CGroupMask FUNC4(Unit *u) {
        CGroupMask mask;

        FUNC2(u);
        mask = FUNC3(u);

        /* Returns the mask of controllers which are marked as forcibly
         * disabled in any ancestor unit or the unit in question. */

        if (FUNC1(u->slice))
                mask |= FUNC4(FUNC0(u->slice));

        return mask;
}