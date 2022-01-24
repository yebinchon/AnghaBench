#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UnitDependencyMask ;
struct TYPE_9__ {int /*<<< orphan*/  manager; } ;
struct TYPE_8__ {scalar_t__ from_fragment; } ;
typedef  int /*<<< orphan*/  MountParameters ;
typedef  TYPE_1__ Mount ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPECIAL_QUOTACHECK_SERVICE ; 
 int /*<<< orphan*/  SPECIAL_QUOTAON_SERVICE ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  UNIT_BEFORE ; 
 int /*<<< orphan*/  UNIT_DEPENDENCY_FILE ; 
 int /*<<< orphan*/  UNIT_DEPENDENCY_MOUNTINFO_IMPLICIT ; 
 int /*<<< orphan*/  UNIT_WANTS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(Mount *m) {
        UnitDependencyMask mask;
        MountParameters *p;
        int r;

        FUNC2(m);

        if (!FUNC0(FUNC1(m)->manager))
                return 0;

        p = FUNC3(m);
        if (!p)
                return 0;

        if (!FUNC4(p))
                return 0;

        mask = m->from_fragment ? UNIT_DEPENDENCY_FILE : UNIT_DEPENDENCY_MOUNTINFO_IMPLICIT;

        r = FUNC5(FUNC1(m), UNIT_BEFORE, UNIT_WANTS, SPECIAL_QUOTACHECK_SERVICE, true, mask);
        if (r < 0)
                return r;

        r = FUNC5(FUNC1(m), UNIT_BEFORE, UNIT_WANTS, SPECIAL_QUOTAON_SERVICE, true, mask);
        if (r < 0)
                return r;

        return 0;
}