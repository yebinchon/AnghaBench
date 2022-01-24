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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC11(js_State *J, js_Buffer **sb)
{
	const char *key;
	int i, n;

	n = FUNC1(J) - 1;
	for (i = 0; i < n; ++i) {
		if (FUNC2(J, i)) {
			if (FUNC8(J, i) == FUNC8(J, -1)) {
				FUNC7(J, sb, "{}");
				return;
			}
		}
	}

	n = 0;
	FUNC6(J, sb, '{');
	FUNC5(J, -1, 1);
	while ((key = FUNC3(J, -1))) {
		if (n++ > 0)
			FUNC7(J, sb, ", ");
		FUNC9(J, sb, key);
		FUNC7(J, sb, ": ");
		FUNC0(J, -2, key);
		FUNC10(J, sb);
		FUNC4(J, 1);
	}
	FUNC4(J, 1);
	FUNC6(J, sb, '}');
}