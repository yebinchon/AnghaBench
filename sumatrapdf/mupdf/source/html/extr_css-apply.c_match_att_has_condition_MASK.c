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
typedef  int /*<<< orphan*/  fz_xml ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 size_t FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC4(fz_xml *node, const char *att, const char *needle)
{
	const char *haystack = FUNC0(node, att);
	const char *ss;
	size_t n;
	if (haystack) {
		/* Try matching whole property first. */
		if (!FUNC1(haystack, needle))
			return 1;

		/* Look for matching words. */
		n = FUNC2(needle);
		ss = FUNC3(haystack, needle);
		if (ss && (ss[n] == ' ' || ss[n] == 0) && (ss == haystack || ss[-1] == ' '))
			return 1;
	}
	return 0;
}