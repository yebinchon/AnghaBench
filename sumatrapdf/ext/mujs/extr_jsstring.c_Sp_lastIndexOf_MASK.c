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
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,int) ; 

__attribute__((used)) static void FUNC8(js_State *J)
{
	const char *haystack = FUNC1(J, 0);
	const char *needle = FUNC5(J, 1);
	int pos = FUNC2(J, 2) ? FUNC4(J, 2) : (int)FUNC6(haystack);
	int len = FUNC6(needle);
	int k = 0, last = -1;
	Rune rune;
	while (*haystack && k <= pos) {
		if (!FUNC7(haystack, needle, len))
			last = k;
		haystack += FUNC0(&rune, haystack);
		++k;
	}
	FUNC3(J, last);
}