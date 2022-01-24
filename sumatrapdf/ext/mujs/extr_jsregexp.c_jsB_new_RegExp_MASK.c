#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_3__ {char* source; int flags; } ;
typedef  TYPE_1__ js_Regexp ;

/* Variables and functions */
 int JS_REGEXP_G ; 
 int JS_REGEXP_I ; 
 int JS_REGEXP_M ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (char const*) ; 

__attribute__((used)) static void FUNC9(js_State *J)
{
	js_Regexp *old;
	const char *pattern;
	int flags;

	if (FUNC1(J, 1)) {
		if (FUNC0(J, 2))
			FUNC7(J, "cannot supply flags when creating one RegExp from another");
		old = FUNC5(J, 1);
		pattern = old->source;
		flags = old->flags;
	} else if (FUNC2(J, 1)) {
		pattern = "(?:)";
		flags = 0;
	} else {
		pattern = FUNC6(J, 1);
		flags = 0;
	}

	if (FUNC8(pattern) == 0)
		pattern = "(?:)";

	if (FUNC0(J, 2)) {
		const char *s = FUNC6(J, 2);
		int g = 0, i = 0, m = 0;
		while (*s) {
			if (*s == 'g') ++g;
			else if (*s == 'i') ++i;
			else if (*s == 'm') ++m;
			else FUNC4(J, "invalid regular expression flag: '%c'", *s);
			++s;
		}
		if (g > 1) FUNC4(J, "invalid regular expression flag: 'g'");
		if (i > 1) FUNC4(J, "invalid regular expression flag: 'i'");
		if (m > 1) FUNC4(J, "invalid regular expression flag: 'm'");
		if (g) flags |= JS_REGEXP_G;
		if (i) flags |= JS_REGEXP_I;
		if (m) flags |= JS_REGEXP_M;
	}

	FUNC3(J, pattern, flags);
}