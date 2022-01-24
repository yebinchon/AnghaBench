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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(js_State *J)
{
	int len, middle, lower;

	len = FUNC2(J, 0);
	middle = len / 2;
	lower = 0;

	while (lower != middle) {
		int upper = len - lower - 1;
		int haslower = FUNC3(J, 0, lower);
		int hasupper = FUNC3(J, 0, upper);
		if (haslower && hasupper) {
			FUNC4(J, 0, lower);
			FUNC4(J, 0, upper);
		} else if (hasupper) {
			FUNC4(J, 0, lower);
			FUNC1(J, 0, upper);
		} else if (haslower) {
			FUNC4(J, 0, upper);
			FUNC1(J, 0, lower);
		}
		++lower;
	}

	FUNC0(J, 0);
}