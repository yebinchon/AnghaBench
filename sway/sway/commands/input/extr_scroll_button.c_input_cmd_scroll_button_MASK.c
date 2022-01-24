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
typedef  scalar_t__ uint32_t ;
struct input_config {scalar_t__ scroll_button; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct input_config* input_config; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 scalar_t__ SWAY_SCROLL_DOWN ; 
 scalar_t__ SWAY_SCROLL_LEFT ; 
 scalar_t__ SWAY_SCROLL_RIGHT ; 
 scalar_t__ SWAY_SCROLL_UP ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* config ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char**) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

struct cmd_results *FUNC5(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "scroll_button", EXPECTED_AT_LEAST, 1))) {
		return error;
	}
	struct input_config *ic = config->handler_context.input_config;
	if (!ic) {
		return FUNC1(CMD_FAILURE, "No input device defined.");
	}

	if (FUNC4(*argv, "disable") == 0) {
		ic->scroll_button = 0;
		return FUNC1(CMD_SUCCESS, NULL);
	}

	char *message = NULL;
	uint32_t button = FUNC3(*argv, &message);
	if (message) {
		error = FUNC1(CMD_INVALID, message);
		FUNC2(message);
		return error;
	} else if (button == SWAY_SCROLL_UP || button == SWAY_SCROLL_DOWN
			|| button == SWAY_SCROLL_LEFT || button == SWAY_SCROLL_RIGHT) {
		return FUNC1(CMD_INVALID,
				"X11 axis buttons are not supported for scroll_button");
	} else if (!button) {
		return FUNC1(CMD_INVALID, "Unknown button %s", *argv);
	}
	ic->scroll_button = button;

	return FUNC1(CMD_SUCCESS, NULL);
}