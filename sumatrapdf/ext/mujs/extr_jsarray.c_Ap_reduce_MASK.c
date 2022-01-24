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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC10(js_State *J)
{
	int hasinitial = FUNC3(J) >= 3;
	int k, len;

	if (!FUNC5(J, 1))
		FUNC9(J, "callback is not a function");

	len = FUNC2(J, 0);
	k = 0;

	if (len == 0 && !hasinitial)
		FUNC9(J, "no initial value");

	/* initial value of accumulator */
	if (hasinitial)
		FUNC1(J, 2);
	else {
		while (k < len)
			if (FUNC4(J, 0, k++))
				break;
		if (k == len)
			FUNC9(J, "no initial value");
	}

	while (k < len) {
		if (FUNC4(J, 0, k)) {
			FUNC1(J, 1);
			FUNC7(J);
			FUNC8(J, 4); /* accumulator on top */
			FUNC8(J, 4); /* property on top */
			FUNC6(J, k);
			FUNC1(J, 0);
			FUNC0(J, 4); /* calculate new accumulator */
		}
		++k;
	}

	/* return accumulator */
}