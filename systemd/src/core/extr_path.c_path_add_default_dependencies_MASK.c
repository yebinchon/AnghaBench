#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  manager; int /*<<< orphan*/  default_dependencies; } ;
typedef  int /*<<< orphan*/  Path ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPECIAL_PATHS_TARGET ; 
 int /*<<< orphan*/  SPECIAL_SHUTDOWN_TARGET ; 
 int /*<<< orphan*/  SPECIAL_SYSINIT_TARGET ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UNIT_AFTER ; 
 int /*<<< orphan*/  UNIT_BEFORE ; 
 int /*<<< orphan*/  UNIT_CONFLICTS ; 
 int /*<<< orphan*/  UNIT_DEPENDENCY_DEFAULT ; 
 int /*<<< orphan*/  UNIT_REQUIRES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(Path *p) {
        int r;

        FUNC2(p);

        if (!FUNC1(p)->default_dependencies)
                return 0;

        r = FUNC3(FUNC1(p), UNIT_BEFORE, SPECIAL_PATHS_TARGET, true, UNIT_DEPENDENCY_DEFAULT);
        if (r < 0)
                return r;

        if (FUNC0(FUNC1(p)->manager)) {
                r = FUNC4(FUNC1(p), UNIT_AFTER, UNIT_REQUIRES, SPECIAL_SYSINIT_TARGET, true, UNIT_DEPENDENCY_DEFAULT);
                if (r < 0)
                        return r;
        }

        return FUNC4(FUNC1(p), UNIT_BEFORE, UNIT_CONFLICTS, SPECIAL_SHUTDOWN_TARGET, true, UNIT_DEPENDENCY_DEFAULT);
}