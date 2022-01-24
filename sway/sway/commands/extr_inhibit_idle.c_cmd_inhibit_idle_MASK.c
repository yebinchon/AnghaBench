#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sway_idle_inhibitor_v1 {int mode; } ;
struct sway_container {int /*<<< orphan*/  view; } ;
struct cmd_results {int dummy; } ;
typedef  enum sway_idle_inhibit_mode { ____Placeholder_sway_idle_inhibit_mode } sway_idle_inhibit_mode ;
struct TYPE_4__ {struct sway_container* container; } ;
struct TYPE_6__ {TYPE_1__ handler_context; } ;
struct TYPE_5__ {int /*<<< orphan*/  idle_inhibit_manager_v1; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int INHIBIT_IDLE_FOCUS ; 
 int INHIBIT_IDLE_FULLSCREEN ; 
 int INHIBIT_IDLE_OPEN ; 
 int INHIBIT_IDLE_VISIBLE ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* config ; 
 TYPE_2__ server ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_idle_inhibitor_v1*) ; 
 struct sway_idle_inhibitor_v1* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

struct cmd_results *FUNC7(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "inhibit_idle", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}

	struct sway_container *con = config->handler_context.container;
	if (!con || !con->view) {
		return FUNC1(CMD_INVALID,
				"Only views can have idle inhibitors");
	}

	bool clear = false;
	enum sway_idle_inhibit_mode mode;
	if (FUNC2(argv[0], "focus") == 0) {
		mode = INHIBIT_IDLE_FOCUS;
	} else if (FUNC2(argv[0], "fullscreen") == 0) {
		mode = INHIBIT_IDLE_FULLSCREEN;
	} else if (FUNC2(argv[0], "open") == 0) {
		mode = INHIBIT_IDLE_OPEN;
	} else if (FUNC2(argv[0], "none") == 0) {
		clear = true;
	} else if (FUNC2(argv[0], "visible") == 0) {
		mode = INHIBIT_IDLE_VISIBLE;
	} else {
		return FUNC1(CMD_INVALID,
				"Expected `inhibit_idle focus|fullscreen|open|none|visible`");
	}

	struct sway_idle_inhibitor_v1 *inhibitor =
		FUNC5(con->view);
	if (inhibitor) {
		if (clear) {
			FUNC4(inhibitor);
		} else {
			inhibitor->mode = mode;
			FUNC3(server.idle_inhibit_manager_v1);
		}
	} else if (!clear) {
		FUNC6(con->view, mode);
	}

	return FUNC1(CMD_SUCCESS, NULL);
}