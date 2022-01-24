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
typedef  int /*<<< orphan*/  JsonbParseState ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* LICENSE_EDITION_COMMUNITY ; 
 char* LICENSE_EDITION_ENTERPRISE ; 
 int /*<<< orphan*/  LICENSE_EDITION_KEY ; 
 int /*<<< orphan*/  LICENSE_END_TIME_KEY ; 
 int /*<<< orphan*/  LICENSE_ID_KEY ; 
 int /*<<< orphan*/  LICENSE_KIND_KEY ; 
 int /*<<< orphan*/  LICENSE_START_TIME_KEY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 () ; 
 char* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  timestamptz_out ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

void
FUNC9(JsonbParseState *parseState)
{
	if (!FUNC4())
		FUNC8(parseState, LICENSE_EDITION_KEY, LICENSE_EDITION_COMMUNITY);
	else
	{
		char *start_time = FUNC0(
			FUNC1(timestamptz_out, FUNC2(FUNC7())));
		char *end_time = FUNC0(
			FUNC1(timestamptz_out, FUNC2(FUNC3())));

		FUNC8(parseState, LICENSE_EDITION_KEY, LICENSE_EDITION_ENTERPRISE);
		FUNC8(parseState, LICENSE_KIND_KEY, FUNC6());
		FUNC8(parseState, LICENSE_ID_KEY, FUNC5());
		FUNC8(parseState, LICENSE_START_TIME_KEY, start_time);
		FUNC8(parseState, LICENSE_END_TIME_KEY, end_time);
	}
}