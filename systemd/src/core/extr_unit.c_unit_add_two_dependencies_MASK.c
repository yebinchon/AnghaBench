#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  UnitDependencyMask ;
typedef  int /*<<< orphan*/  UnitDependency ;
typedef  int /*<<< orphan*/  Unit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC2(Unit *u, UnitDependency d, UnitDependency e, Unit *other, bool add_reference, UnitDependencyMask mask) {
        int r;

        FUNC0(u);

        r = FUNC1(u, d, other, add_reference, mask);
        if (r < 0)
                return r;

        return FUNC1(u, e, other, add_reference, mask);
}