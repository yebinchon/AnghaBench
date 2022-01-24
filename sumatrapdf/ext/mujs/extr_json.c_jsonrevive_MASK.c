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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (char*,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,char const*) ; 

__attribute__((used)) static void FUNC16(js_State *J, const char *name)
{
	const char *key;
	char buf[32];

	/* revive is in 2 */
	/* holder is in -1 */

	FUNC4(J, -1, name); /* get value from holder */

	if (FUNC6(J, -1)) {
		if (FUNC5(J, -1)) {
			int i = 0;
			int n = FUNC3(J, -1);
			for (i = 0; i < n; ++i) {
				FUNC16(J, FUNC8(buf, i));
				if (FUNC7(J, -1)) {
					FUNC10(J, 1);
					FUNC2(J, -1, buf);
				} else {
					FUNC15(J, -2, buf);
				}
			}
		} else {
			FUNC11(J, -1, 1);
			while ((key = FUNC9(J, -1))) {
				FUNC13(J);
				FUNC16(J, key);
				if (FUNC7(J, -1)) {
					FUNC10(J, 1);
					FUNC2(J, -1, key);
				} else {
					FUNC15(J, -2, key);
				}
				FUNC13(J);
			}
			FUNC10(J, 1);
		}
	}

	FUNC1(J, 2); /* reviver function */
	FUNC1(J, -3); /* holder as this */
	FUNC12(J, name); /* name */
	FUNC1(J, -4); /* value */
	FUNC0(J, 2);
	FUNC14(J); /* pop old value, leave new value on stack */
}