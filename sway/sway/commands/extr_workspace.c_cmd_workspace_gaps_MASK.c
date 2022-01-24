#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int top; int right; int bottom; int left; } ;
struct workspace_config {int gaps_inner; TYPE_1__ gaps_outer; } ;
struct cmd_results {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int INT_MIN ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct workspace_config*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int FUNC7 (char*,char**,int) ; 
 struct workspace_config* FUNC8 (char*) ; 

__attribute__((used)) static struct cmd_results *FUNC9(int argc, char **argv,
		int gaps_location) {
	const char expected[] = "Expected 'workspace <name> gaps "
		"inner|outer|horizontal|vertical|top|right|bottom|left <px>'";
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "workspace", EXPECTED_EQUAL_TO,
					gaps_location + 3))) {
		return error;
	}
	char *ws_name = FUNC3(argv, argc - 3);
	struct workspace_config *wsc = FUNC8(ws_name);
	FUNC2(ws_name);
	if (!wsc) {
		return FUNC1(CMD_FAILURE,
				"Unable to allocate workspace output");
	}

	char *end;
	int amount = FUNC7(argv[gaps_location + 2], &end, 10);
	if (FUNC6(end)) {
		return FUNC1(CMD_FAILURE, expected);
	}

	bool valid = false;
	char *type = argv[gaps_location + 1];
	if (!FUNC5(type, "inner")) {
		valid = true;
		wsc->gaps_inner = (amount >= 0) ? amount : 0;
	} else {
		if (!FUNC5(type, "outer") || !FUNC5(type, "vertical")
				|| !FUNC5(type, "top")) {
			valid = true;
			wsc->gaps_outer.top = amount;
		}
		if (!FUNC5(type, "outer") || !FUNC5(type, "horizontal")
				|| !FUNC5(type, "right")) {
			valid = true;
			wsc->gaps_outer.right = amount;
		}
		if (!FUNC5(type, "outer") || !FUNC5(type, "vertical")
				|| !FUNC5(type, "bottom")) {
			valid = true;
			wsc->gaps_outer.bottom = amount;
		}
		if (!FUNC5(type, "outer") || !FUNC5(type, "horizontal")
				|| !FUNC5(type, "left")) {
			valid = true;
			wsc->gaps_outer.left = amount;
		}
	}
	if (!valid) {
		return FUNC1(CMD_INVALID, expected);
	}

	// Prevent invalid gaps configurations.
	if (wsc->gaps_inner != INT_MIN && wsc->gaps_inner < 0) {
		wsc->gaps_inner = 0;
	}
	FUNC4(wsc);

	return error;
}