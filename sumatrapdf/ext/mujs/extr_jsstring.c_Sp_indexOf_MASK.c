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
typedef  int /*<<< orphan*/  Rune ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,int) ; 

__attribute__((used)) static void FUNC7(js_State *J)
{
	const char *haystack = FUNC1(J, 0);
	const char *needle = FUNC4(J, 1);
	int pos = FUNC3(J, 2);
	int len = FUNC5(needle);
	int k = 0;
	Rune rune;
	while (*haystack) {
		if (k >= pos && !FUNC6(haystack, needle, len)) {
			FUNC2(J, k);
			return;
		}
		haystack += FUNC0(&rune, haystack);
		++k;
	}
	FUNC2(J, -1);
}