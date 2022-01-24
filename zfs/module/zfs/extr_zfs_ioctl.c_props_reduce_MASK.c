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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(nvlist_t *props, nvlist_t *origprops)
{
	nvpair_t *pair, *next_pair;

	if (origprops == NULL)
		return; /* all props need to be received */

	pair = FUNC1(props, NULL);
	while (pair != NULL) {
		const char *propname = FUNC3(pair);
		nvpair_t *match;

		next_pair = FUNC1(props, pair);

		if ((FUNC0(origprops, propname,
		    &match) != 0) || !FUNC4(pair, match))
			goto next; /* need to set received value */

		/* don't clear the existing received value */
		(void) FUNC2(origprops, match);
		/* don't bother receiving the property */
		(void) FUNC2(props, pair);
next:
		pair = next_pair;
	}
}