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

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 

__attribute__((used)) static void FUNC2(void) {
        int n;

        FUNC0(FUNC1("0", &n) >= 0 && n == 0);
        FUNC0(FUNC1("+0", &n) >= 0 && n == 0);
        FUNC0(FUNC1("-1", &n) >= 0 && n == -1);
        FUNC0(FUNC1("-2", &n) >= 0 && n == -2);
        FUNC0(FUNC1("1", &n) >= 0 && n == 1);
        FUNC0(FUNC1("2", &n) >= 0 && n == 2);
        FUNC0(FUNC1("+1", &n) >= 0 && n == 1);
        FUNC0(FUNC1("+2", &n) >= 0 && n == 2);
        FUNC0(FUNC1("-20", &n) >= 0 && n == -20);
        FUNC0(FUNC1("19", &n) >= 0 && n == 19);
        FUNC0(FUNC1("+19", &n) >= 0 && n == 19);

        FUNC0(FUNC1("", &n) == -EINVAL);
        FUNC0(FUNC1("-", &n) == -EINVAL);
        FUNC0(FUNC1("+", &n) == -EINVAL);
        FUNC0(FUNC1("xx", &n) == -EINVAL);
        FUNC0(FUNC1("-50", &n) == -ERANGE);
        FUNC0(FUNC1("50", &n) == -ERANGE);
        FUNC0(FUNC1("+50", &n) == -ERANGE);
        FUNC0(FUNC1("-21", &n) == -ERANGE);
        FUNC0(FUNC1("20", &n) == -ERANGE);
        FUNC0(FUNC1("+20", &n) == -ERANGE);
}