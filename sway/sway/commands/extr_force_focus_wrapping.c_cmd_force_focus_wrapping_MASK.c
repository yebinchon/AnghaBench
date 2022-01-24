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
struct TYPE_2__ {scalar_t__ focus_wrapping; scalar_t__ reading; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int /*<<< orphan*/  SWAY_INFO ; 
 scalar_t__ WRAP_FORCE ; 
 scalar_t__ WRAP_YES ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* config ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

struct cmd_results *FUNC5(int argc, char **argv) {
	FUNC4(SWAY_INFO, "Warning: force_focus_wrapping is deprecated. "
		"Use focus_wrapping instead.");
	if (config->reading) {
		FUNC2("force_focus_wrapping is deprecated. "
			"Use focus_wrapping instead.");
	}

	struct cmd_results *error =
		FUNC0(argc, "force_focus_wrapping", EXPECTED_EQUAL_TO, 1);
	if (error) {
		return error;
	}

	if (FUNC3(argv[0], config->focus_wrapping == WRAP_FORCE)) {
		config->focus_wrapping = WRAP_FORCE;
	} else {
		config->focus_wrapping = WRAP_YES;
	}

	return FUNC1(CMD_SUCCESS, NULL);
}