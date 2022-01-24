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
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(js_State *J)
{
	int k, len, from;

	len = FUNC1(J, 0);
	from = FUNC3(J, 2) ? FUNC7(J, 2) : len - 1;
	if (from > len - 1) from = len - 1;
	if (from < 0) from = len + from;

	FUNC0(J, 1);
	for (k = from; k >= 0; --k) {
		if (FUNC2(J, 0, k)) {
			if (FUNC6(J)) {
				FUNC5(J, k);
				return;
			}
			FUNC4(J, 1);
		}
	}

	FUNC5(J, -1);
}