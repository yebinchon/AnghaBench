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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * nvl ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pool ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  unexpected_failures ; 

__attribute__((used)) static void
FUNC7(const char *testname, boolean_t expect_success, boolean_t expect_match)
{
	char *progstr = "input = ...; return {output=input}";

	nvlist_t *outnvl;

	(void) FUNC6("\nrunning test '%s'; input:\n", testname);
	FUNC0(nvl, 4);

	int err = FUNC4(pool, progstr,
	    10 * 1000 * 1000, 10 * 1024 * 1024, nvl, &outnvl);

	(void) FUNC6("lzc_channel_program returned %u\n", err);
	FUNC0(outnvl, 5);

	if (err == 0 && expect_match) {
		/*
		 * Verify that outnvl is the same as input nvl, if we expect
		 * them to be. The input and output will never match if the
		 * input contains an array (since arrays are converted to lua
		 * tables), so this is only asserted for some test cases.
		 */
		nvlist_t *real_outnvl = FUNC3(outnvl, "return");
		real_outnvl = FUNC3(real_outnvl, "output");
		if (!FUNC5(nvl, real_outnvl)) {
			unexpected_failures = B_TRUE;
			(void) FUNC6("unexpected input/output mismatch for "
			    "case: %s\n", testname);
		}
	}
	if (err != 0 && expect_success) {
		unexpected_failures = B_TRUE;
		(void) FUNC6("unexpected FAIL of case: %s\n", testname);
	}

	FUNC2(nvl);
	nvl = FUNC1();
}