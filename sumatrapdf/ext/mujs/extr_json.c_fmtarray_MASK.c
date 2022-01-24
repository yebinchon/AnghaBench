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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC10(js_State *J, js_Buffer **sb, const char *gap, int level)
{
	int n, i;
	char buf[32];

	n = FUNC3(J) - 1;
	for (i = 4; i < n; ++i)
		if (FUNC4(J, i))
			if (FUNC8(J, i) == FUNC8(J, -1))
				FUNC9(J, "cyclic object value");

	FUNC6(J, sb, '[');
	n = FUNC2(J, -1);
	for (i = 0; i < n; ++i) {
		if (i) FUNC6(J, sb, ',');
		if (gap) FUNC0(J, sb, gap, level + 1);
		if (!FUNC1(J, sb, FUNC5(buf, i), gap, level + 1))
			FUNC7(J, sb, "null");
	}
	if (gap && n) FUNC0(J, sb, gap, level);
	FUNC6(J, sb, ']');
}