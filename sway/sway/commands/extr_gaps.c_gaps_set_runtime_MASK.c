#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int top; int right; int bottom; int left; } ;
struct gaps_data {int inner; int /*<<< orphan*/  amount; int /*<<< orphan*/  operation; TYPE_2__ outer; int /*<<< orphan*/  member_0; } ;
struct cmd_results {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  workspace; } ;
struct TYPE_10__ {TYPE_3__ handler_context; } ;
struct TYPE_9__ {TYPE_1__* outputs; } ;
struct TYPE_6__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int /*<<< orphan*/  GAPS_OP_ADD ; 
 int /*<<< orphan*/  GAPS_OP_SET ; 
 int /*<<< orphan*/  GAPS_OP_SUBTRACT ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_5__* config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct gaps_data*) ; 
 int /*<<< orphan*/  expected_runtime ; 
 TYPE_4__* root ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,struct gaps_data*),struct gaps_data*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char**,int) ; 

__attribute__((used)) static struct cmd_results *FUNC7(int argc, char **argv) {
	struct cmd_results *error = FUNC0(argc, "gaps", EXPECTED_EQUAL_TO, 4);
	if (error) {
		return error;
	}
	if (!root->outputs->length) {
		return FUNC1(CMD_INVALID,
				"Can't run this command while there's no outputs connected.");
	}

	struct gaps_data data = {0};

	if (FUNC4(argv[0], "inner") == 0) {
		data.inner = true;
	} else {
		data.outer.top = !FUNC4(argv[0], "outer") ||
			!FUNC4(argv[0], "vertical") || !FUNC4(argv[0], "top");
		data.outer.right = !FUNC4(argv[0], "outer") ||
			!FUNC4(argv[0], "horizontal") || !FUNC4(argv[0], "right");
		data.outer.bottom = !FUNC4(argv[0], "outer") ||
			!FUNC4(argv[0], "vertical") || !FUNC4(argv[0], "bottom");
		data.outer.left = !FUNC4(argv[0], "outer") ||
			!FUNC4(argv[0], "horizontal") || !FUNC4(argv[0], "left");
	}
	if (!data.inner && !data.outer.top && !data.outer.right &&
			!data.outer.bottom && !data.outer.left) {
		return FUNC1(CMD_INVALID, "Expected %s", expected_runtime);
	}

	bool all;
	if (FUNC4(argv[1], "current") == 0) {
		all = false;
	} else if (FUNC4(argv[1], "all") == 0) {
		all = true;
	} else {
		return FUNC1(CMD_INVALID, "Expected %s", expected_runtime);
	}

	if (FUNC4(argv[2], "set") == 0) {
		data.operation = GAPS_OP_SET;
	} else if (FUNC4(argv[2], "plus") == 0) {
		data.operation = GAPS_OP_ADD;
	} else if (FUNC4(argv[2], "minus") == 0) {
		data.operation = GAPS_OP_SUBTRACT;
	} else {
		return FUNC1(CMD_INVALID, "Expected %s", expected_runtime);
	}

	char *end;
	data.amount = FUNC6(argv[3], &end, 10);
	if (FUNC5(end) && FUNC4(end, "px") != 0) {
		return FUNC1(CMD_INVALID, "Expected %s", expected_runtime);
	}

	if (all) {
		FUNC3(configure_gaps, &data);
	} else {
		FUNC2(config->handler_context.workspace, &data);
	}

	return FUNC1(CMD_SUCCESS, NULL);
}