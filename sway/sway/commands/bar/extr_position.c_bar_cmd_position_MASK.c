#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  valid ;
struct cmd_results {int dummy; } ;
struct TYPE_4__ {TYPE_1__* current_bar; } ;
struct TYPE_3__ {int /*<<< orphan*/  position; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

struct cmd_results *FUNC6(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "position", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}
	char *valid[] = { "top", "bottom" };
	for (size_t i = 0; i < sizeof(valid) / sizeof(valid[0]); ++i) {
		if (FUNC3(valid[i], argv[0]) == 0) {
			FUNC5(SWAY_DEBUG, "Setting bar position '%s' for bar: %s",
					argv[0], config->current_bar->id);
			FUNC2(config->current_bar->position);
			config->current_bar->position = FUNC4(argv[0]);
			return FUNC1(CMD_SUCCESS, NULL);
		}
	}
	return FUNC1(CMD_INVALID, "Invalid value %s", argv[0]);
}