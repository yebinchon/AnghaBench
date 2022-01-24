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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static void FUNC6(js_State *J)
{
	int i, top = FUNC1(J);

	FUNC3(J);

	if (top == 2) {
		if (FUNC2(J, 1)) {
			FUNC0(J, 1);
			FUNC5(J, -2, "length");
		} else {
			FUNC0(J, 1);
			FUNC4(J, -2, 0);
		}
	} else {
		for (i = 1; i < top; ++i) {
			FUNC0(J, i);
			FUNC4(J, -2, i - 1);
		}
	}
}