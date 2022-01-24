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
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 int /*<<< orphan*/  JS_HNUMBER ; 
 scalar_t__ FUNC0 (double) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 double FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(js_State *J, int *okay)
{
	FUNC3(J, -2, JS_HNUMBER);
	FUNC3(J, -1, JS_HNUMBER);

	*okay = 1;
	if (FUNC1(J, -2) && FUNC1(J, -1)) {
		return FUNC5(FUNC4(J, -2), FUNC4(J, -1));
	} else {
		double x = FUNC2(J, -2);
		double y = FUNC2(J, -1);
		if (FUNC0(x) || FUNC0(y))
			*okay = 0;
		return x < y ? -1 : x > y ? 1 : 0;
	}
}