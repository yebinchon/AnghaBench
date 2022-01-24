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
 double INFINITY ; 
 scalar_t__ FUNC0 (double) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double) ; 
 double FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (double) ; 

__attribute__((used)) static void FUNC5(js_State *J)
{
	int i, n = FUNC1(J);
	double x = -INFINITY;
	for (i = 1; i < n; ++i) {
		double y = FUNC3(J, i);
		if (FUNC0(y)) {
			x = y;
			break;
		}
		if (FUNC4(x) == FUNC4(y))
			x = x > y ? x : y;
		else if (FUNC4(x))
			x = y;
	}
	FUNC2(J, x);
}