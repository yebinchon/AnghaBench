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
struct criteria {int /*<<< orphan*/  cmdlist; int /*<<< orphan*/  raw; int /*<<< orphan*/  type; } ;
struct cmd_results {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  criteria; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  CT_COMMAND ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* config ; 
 scalar_t__ FUNC2 (struct criteria*) ; 
 int /*<<< orphan*/  FUNC3 (struct criteria*) ; 
 struct criteria* FUNC4 (char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char**,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct criteria*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct cmd_results *FUNC9(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "for_window", EXPECTED_AT_LEAST, 2))) {
		return error;
	}

	char *err_str = NULL;
	struct criteria *criteria = FUNC4(argv[0], &err_str);
	if (!criteria) {
		error = FUNC1(CMD_INVALID, err_str);
		FUNC5(err_str);
		return error;
	}

	criteria->type = CT_COMMAND;
	criteria->cmdlist = FUNC6(argv + 1, argc - 1);

	// Check if it already exists
	if (FUNC2(criteria)) {
		FUNC8(SWAY_DEBUG, "for_window already exists: '%s' -> '%s'",
				criteria->raw, criteria->cmdlist);
		FUNC3(criteria);
		return FUNC1(CMD_SUCCESS, NULL);
	}

	FUNC7(config->criteria, criteria);
	FUNC8(SWAY_DEBUG, "for_window: '%s' -> '%s' added", criteria->raw, criteria->cmdlist);

	return FUNC1(CMD_SUCCESS, NULL);
}