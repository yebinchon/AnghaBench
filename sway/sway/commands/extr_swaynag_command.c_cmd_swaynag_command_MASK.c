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
struct cmd_results {int dummy; } ;
struct TYPE_2__ {char* swaynag_command; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* config ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char**,int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

struct cmd_results *FUNC6(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "swaynag_command", EXPECTED_AT_LEAST, 1))) {
		return error;
	}

	FUNC2(config->swaynag_command);
	config->swaynag_command = NULL;

	char *new_command = FUNC3(argv, argc);
	if (FUNC4(new_command, "-") != 0) {
		config->swaynag_command = new_command;
		FUNC5(SWAY_DEBUG, "Using custom swaynag command: %s",
				config->swaynag_command);
	} else {
		FUNC2(new_command);
	}

	return FUNC1(CMD_SUCCESS, NULL);
}