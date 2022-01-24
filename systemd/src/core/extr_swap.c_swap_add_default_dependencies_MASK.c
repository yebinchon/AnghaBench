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
typedef  int /*<<< orphan*/  Swap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPECIAL_SWAP_TARGET ; 
 int /*<<< orphan*/  SPECIAL_UMOUNT_TARGET ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UNIT_BEFORE ; 
 int /*<<< orphan*/  UNIT_CONFLICTS ; 
 int /*<<< orphan*/  UNIT_DEPENDENCY_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(Swap *s) {
        int r;

        FUNC2(s);

        if (!FUNC1(s)->default_dependencies)
                return 0;

        if (!FUNC0(FUNC1(s)->manager))
                return 0;

        if (FUNC3() > 0)
                return 0;

        /* swap units generated for the swap dev links are missing the
         * ordering dep against the swap target. */
        r = FUNC4(FUNC1(s), UNIT_BEFORE, SPECIAL_SWAP_TARGET, true, UNIT_DEPENDENCY_DEFAULT);
        if (r < 0)
                return r;

        return FUNC5(FUNC1(s), UNIT_BEFORE, UNIT_CONFLICTS, SPECIAL_UMOUNT_TARGET, true, UNIT_DEPENDENCY_DEFAULT);
}