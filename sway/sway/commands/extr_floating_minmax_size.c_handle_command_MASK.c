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
struct cmd_results {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char**,int) ; 

__attribute__((used)) static struct cmd_results *FUNC4(int argc, char **argv, char *cmd_name,
		const char *usage, int *config_width, int *config_height) {
	struct cmd_results *error;
	if ((error = FUNC0(argc, cmd_name, EXPECTED_EQUAL_TO, 3))) {
		return error;
	}

	char *err;
	int width = (int)FUNC3(argv[0], &err, 10);
	if (*err) {
		return FUNC1(CMD_INVALID, cmd_name, usage);
	}

	if (FUNC2(argv[1], "x") != 0) {
		return FUNC1(CMD_INVALID, cmd_name, usage);
	}

	int height = (int)FUNC3(argv[2], &err, 10);
	if (*err) {
		return FUNC1(CMD_INVALID, cmd_name, usage);
	}

	*config_width = width;
	*config_height = height;

	return FUNC1(CMD_SUCCESS, NULL);
}