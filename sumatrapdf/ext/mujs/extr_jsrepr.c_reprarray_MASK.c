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
typedef  int /*<<< orphan*/  js_Buffer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC9(js_State *J, js_Buffer **sb)
{
	int n, i;

	n = FUNC1(J) - 1;
	for (i = 0; i < n; ++i) {
		if (FUNC3(J, i)) {
			if (FUNC7(J, i) == FUNC7(J, -1)) {
				FUNC6(J, sb, "[]");
				return;
			}
		}
	}

	FUNC5(J, sb, '[');
	n = FUNC0(J, -1);
	for (i = 0; i < n; ++i) {
		if (i > 0)
			FUNC6(J, sb, ", ");
		if (FUNC2(J, -1, i)) {
			FUNC8(J, sb);
			FUNC4(J, 1);
		}
	}
	FUNC5(J, sb, ']');
}