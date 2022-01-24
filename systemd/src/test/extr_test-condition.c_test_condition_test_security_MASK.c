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
 int /*<<< orphan*/  CONDITION_SECURITY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 

__attribute__((used)) static void FUNC11(void) {
        Condition *condition;

        condition = FUNC2(CONDITION_SECURITY, "garbage oifdsjfoidsjoj", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_SECURITY, "selinux", false, true);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) != FUNC6());
        FUNC1(condition);

        condition = FUNC2(CONDITION_SECURITY, "apparmor", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == FUNC5());
        FUNC1(condition);

        condition = FUNC2(CONDITION_SECURITY, "tomoyo", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == FUNC8());
        FUNC1(condition);

        condition = FUNC2(CONDITION_SECURITY, "ima", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == FUNC10());
        FUNC1(condition);

        condition = FUNC2(CONDITION_SECURITY, "smack", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == FUNC7());
        FUNC1(condition);

        condition = FUNC2(CONDITION_SECURITY, "audit", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == FUNC9());
        FUNC1(condition);

        condition = FUNC2(CONDITION_SECURITY, "uefi-secureboot", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == FUNC4());
        FUNC1(condition);
}