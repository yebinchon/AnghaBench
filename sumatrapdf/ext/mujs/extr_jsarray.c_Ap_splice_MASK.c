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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 double FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(js_State *J)
{
	int top = FUNC3(J);
	int len, start, del, add, k;
	double f;

	FUNC5(J);

	len = FUNC2(J, 0);

	f = FUNC8(J, 1);
	if (f < 0) f = f + len;
	start = f < 0 ? 0 : f > len ? len : f;

	f = FUNC8(J, 2);
	del = f < 0 ? 0 : f > len - start ? len - start : f;

	/* copy deleted items to return array */
	for (k = 0; k < del; ++k)
		if (FUNC4(J, 0, start + k))
			FUNC6(J, -2, k);
	FUNC7(J, -1, del);

	/* shift the tail to resize the hole left by deleted items */
	add = top - 3;
	if (add < del) {
		for (k = start; k < len - del; ++k) {
			if (FUNC4(J, 0, k + del))
				FUNC6(J, 0, k + add);
			else
				FUNC1(J, 0, k + add);
		}
		for (k = len; k > len - del + add; --k)
			FUNC1(J, 0, k - 1);
	} else if (add > del) {
		for (k = len - del; k > start; --k) {
			if (FUNC4(J, 0, k + del - 1))
				FUNC6(J, 0, k + add - 1);
			else
				FUNC1(J, 0, k + add - 1);
		}
	}

	/* copy new items into the hole */
	for (k = 0; k < add; ++k) {
		FUNC0(J, 3 + k);
		FUNC6(J, 0, start + k);
	}

	FUNC7(J, 0, len - del + add);
}