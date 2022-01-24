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
typedef  enum xwayland_mode { ____Placeholder_xwayland_mode } xwayland_mode ;
struct TYPE_2__ {int xwayland; scalar_t__ reloading; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int /*<<< orphan*/  SWAY_INFO ; 
 int XWAYLAND_MODE_DISABLED ; 
 int XWAYLAND_MODE_IMMEDIATE ; 
 int XWAYLAND_MODE_LAZY ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* config ; 
 scalar_t__ FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

struct cmd_results *FUNC5(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "xwayland", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}

#ifdef HAVE_XWAYLAND
	enum xwayland_mode xwayland;
	if (strcmp(argv[0], "force") == 0) {
		xwayland = XWAYLAND_MODE_IMMEDIATE;
	} else if (parse_boolean(argv[0], true)) {
		xwayland = XWAYLAND_MODE_LAZY;
	} else {
		xwayland = XWAYLAND_MODE_DISABLED;
	}

	if (config->reloading && config->xwayland != xwayland) {
		return cmd_results_new(CMD_FAILURE,
				"xwayland can only be enabled/disabled at launch");
	}
	config->xwayland = xwayland;
#else
	FUNC4(SWAY_INFO, "Ignoring `xwayland` command, "
		"sway hasn't been built with Xwayland support");
#endif

	return FUNC1(CMD_SUCCESS, NULL);
}