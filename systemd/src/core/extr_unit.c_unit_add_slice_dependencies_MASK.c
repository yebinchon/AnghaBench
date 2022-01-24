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
typedef  int /*<<< orphan*/  UnitDependencyMask ;
struct TYPE_8__ {scalar_t__ type; int /*<<< orphan*/  slice; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  SPECIAL_ROOT_SLICE ; 
 int /*<<< orphan*/  UNIT_AFTER ; 
 int /*<<< orphan*/  UNIT_DEPENDENCY_FILE ; 
 int /*<<< orphan*/  UNIT_DEPENDENCY_IMPLICIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNIT_REQUIRES ; 
 scalar_t__ UNIT_SLICE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(Unit *u) {
        UnitDependencyMask mask;
        FUNC3(u);

        if (!FUNC1(u))
                return 0;

        /* Slice units are implicitly ordered against their parent slices (as this relationship is encoded in the
           name), while all other units are ordered based on configuration (as in their case Slice= configures the
           relationship). */
        mask = u->type == UNIT_SLICE ? UNIT_DEPENDENCY_IMPLICIT : UNIT_DEPENDENCY_FILE;

        if (FUNC2(u->slice))
                return FUNC4(u, UNIT_AFTER, UNIT_REQUIRES, FUNC0(u->slice), true, mask);

        if (FUNC6(u, SPECIAL_ROOT_SLICE))
                return 0;

        return FUNC5(u, UNIT_AFTER, UNIT_REQUIRES, SPECIAL_ROOT_SLICE, true, mask);
}