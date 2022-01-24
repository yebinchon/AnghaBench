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
struct TYPE_2__ {int /*<<< orphan*/  focus_on_window_activation; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int /*<<< orphan*/  FOWA_FOCUS ; 
 int /*<<< orphan*/  FOWA_NONE ; 
 int /*<<< orphan*/  FOWA_SMART ; 
 int /*<<< orphan*/  FOWA_URGENT ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* config ; 
 scalar_t__ FUNC2 (char*,char*) ; 

struct cmd_results *FUNC3(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "focus_on_window_activation",
					EXPECTED_EQUAL_TO, 1))) {
		return error;
	}

	if (FUNC2(argv[0], "smart") == 0) {
		config->focus_on_window_activation = FOWA_SMART;
	} else if (FUNC2(argv[0], "urgent") == 0) {
		config->focus_on_window_activation = FOWA_URGENT;
	} else if (FUNC2(argv[0], "focus") == 0) {
		config->focus_on_window_activation = FOWA_FOCUS;
	} else if (FUNC2(argv[0], "none") == 0) {
		config->focus_on_window_activation = FOWA_NONE;
	} else {
		return FUNC1(CMD_INVALID,
				"Expected "
				"'focus_on_window_activation smart|urgent|focus|none'");
	}

	return FUNC1(CMD_SUCCESS, NULL);
}