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
typedef  int /*<<< orphan*/  UnitDependency ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNIT_AFTER ; 
 int /*<<< orphan*/  UNIT_BEFORE ; 
 int /*<<< orphan*/  UNIT_CONFLICTED_BY ; 
 int /*<<< orphan*/  UNIT_CONFLICTS ; 
 int /*<<< orphan*/  UNIT_ON_FAILURE ; 
 int /*<<< orphan*/  UNIT_TRIGGERED_BY ; 
 int /*<<< orphan*/  UNIT_TRIGGERS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(Unit *u, const char *other, UnitDependency dependency) {
        FUNC1(u);

        /* Only warn about some unit types */
        if (!FUNC0(dependency, UNIT_CONFLICTS, UNIT_CONFLICTED_BY, UNIT_BEFORE, UNIT_AFTER, UNIT_ON_FAILURE, UNIT_TRIGGERS, UNIT_TRIGGERED_BY))
                return;

        if (FUNC3(u->id, other))
                FUNC2(u, "Dependency %s=%s dropped", FUNC5(dependency), u->id);
        else
                FUNC2(u, "Dependency %s=%s dropped, merged into %s", FUNC5(dependency), FUNC4(other), u->id);
}