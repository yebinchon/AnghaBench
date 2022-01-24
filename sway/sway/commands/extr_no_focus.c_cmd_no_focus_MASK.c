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
struct criteria {int /*<<< orphan*/  raw; int /*<<< orphan*/  type; } ;
struct cmd_results {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  criteria; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  CT_NO_FOCUS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* config ; 
 scalar_t__ FUNC2 (struct criteria*) ; 
 int /*<<< orphan*/  FUNC3 (struct criteria*) ; 
 struct criteria* FUNC4 (char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct criteria*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

struct cmd_results *FUNC8(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "no_focus", EXPECTED_AT_LEAST, 1))) {
		return error;
	}

	char *err_str = NULL;
	struct criteria *criteria = FUNC4(argv[0], &err_str);
	if (!criteria) {
		error = FUNC1(CMD_INVALID, err_str);
		FUNC5(err_str);
		return error;
	}


	criteria->type = CT_NO_FOCUS;

	// Check if it already exists
	if (FUNC2(criteria)) {
		FUNC7(SWAY_DEBUG, "no_focus already exists: '%s'", criteria->raw);
		FUNC3(criteria);
		return FUNC1(CMD_SUCCESS, NULL);
	}

	FUNC6(config->criteria, criteria);

	return FUNC1(CMD_SUCCESS, NULL);
}