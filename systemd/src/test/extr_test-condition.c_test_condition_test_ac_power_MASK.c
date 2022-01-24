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
typedef  int /*<<< orphan*/  Condition ;

/* Variables and functions */
 int /*<<< orphan*/  CONDITION_AC_POWER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void FUNC5(void) {
        Condition *condition;

        condition = FUNC2(CONDITION_AC_POWER, "true", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == FUNC4());
        FUNC1(condition);

        condition = FUNC2(CONDITION_AC_POWER, "false", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) != FUNC4());
        FUNC1(condition);

        condition = FUNC2(CONDITION_AC_POWER, "false", false, true);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == FUNC4());
        FUNC1(condition);
}