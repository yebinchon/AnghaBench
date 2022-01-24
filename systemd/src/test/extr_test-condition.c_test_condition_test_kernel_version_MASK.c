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
struct utsname {char const* release; } ;
typedef  int /*<<< orphan*/  Condition ;

/* Variables and functions */
 int /*<<< orphan*/  CONDITION_KERNEL_VERSION ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int) ; 
 scalar_t__ FUNC8 (struct utsname*) ; 

__attribute__((used)) static void FUNC9(void) {
        Condition *condition;
        struct utsname u;
        const char *v;

        condition = FUNC2(CONDITION_KERNEL_VERSION, "*thisreallyshouldntbeinthekernelversion*", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_KERNEL_VERSION, "*", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        /* An artificially empty condition. It evaluates to true, but normally
         * such condition cannot be created, because the condition list is reset instead. */
        condition = FUNC2(CONDITION_KERNEL_VERSION, "", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        FUNC0(FUNC8(&u) >= 0);

        condition = FUNC2(CONDITION_KERNEL_VERSION, u.release, false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        FUNC7(u.release, 4);
        FUNC5(FUNC4(u.release, 0), "*");

        condition = FUNC2(CONDITION_KERNEL_VERSION, u.release, false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        /* 0.1.2 would be a very very very old kernel */
        condition = FUNC2(CONDITION_KERNEL_VERSION, "> 0.1.2", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_KERNEL_VERSION, ">0.1.2", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_KERNEL_VERSION, "'>0.1.2' '<9.0.0'", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_KERNEL_VERSION, "> 0.1.2 < 9.0.0", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == -EINVAL);
        FUNC1(condition);

        condition = FUNC2(CONDITION_KERNEL_VERSION, ">", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == -EINVAL);
        FUNC1(condition);

        condition = FUNC2(CONDITION_KERNEL_VERSION, ">= 0.1.2", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_KERNEL_VERSION, "< 0.1.2", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_KERNEL_VERSION, "<= 0.1.2", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_KERNEL_VERSION, "= 0.1.2", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == 0);
        FUNC1(condition);

        /* 4711.8.15 is a very very very future kernel */
        condition = FUNC2(CONDITION_KERNEL_VERSION, "< 4711.8.15", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_KERNEL_VERSION, "<= 4711.8.15", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_KERNEL_VERSION, "= 4711.8.15", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_KERNEL_VERSION, "> 4711.8.15", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_KERNEL_VERSION, ">= 4711.8.15", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == 0);
        FUNC1(condition);

        FUNC0(FUNC8(&u) >= 0);

        v = FUNC6(">=", u.release);
        condition = FUNC2(CONDITION_KERNEL_VERSION, v, false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        v = FUNC6("=  ", u.release);
        condition = FUNC2(CONDITION_KERNEL_VERSION, v, false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        v = FUNC6("<=", u.release);
        condition = FUNC2(CONDITION_KERNEL_VERSION, v, false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        v = FUNC6("> ", u.release);
        condition = FUNC2(CONDITION_KERNEL_VERSION, v, false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == 0);
        FUNC1(condition);

        v = FUNC6("<   ", u.release);
        condition = FUNC2(CONDITION_KERNEL_VERSION, v, false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == 0);
        FUNC1(condition);
}