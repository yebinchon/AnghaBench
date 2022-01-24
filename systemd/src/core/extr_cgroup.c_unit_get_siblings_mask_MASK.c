#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  slice; } ;
typedef  TYPE_1__ Unit ;
typedef  int /*<<< orphan*/  CGroupMask ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

CGroupMask FUNC5(Unit *u) {
        FUNC2(u);

        /* Returns the mask of controllers all of the unit's siblings
         * require, i.e. the members mask of the unit's parent slice
         * if there is one. */

        if (FUNC1(u->slice))
                return FUNC3(FUNC0(u->slice));

        return FUNC4(u); /* we are the top-level slice */
}