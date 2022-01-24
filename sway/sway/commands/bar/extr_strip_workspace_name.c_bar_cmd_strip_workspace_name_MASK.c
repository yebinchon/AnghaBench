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
struct cmd_results {int dummy; } ;
struct TYPE_4__ {TYPE_1__* current_bar; } ;
struct TYPE_3__ {int strip_workspace_numbers; int /*<<< orphan*/  id; scalar_t__ strip_workspace_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* config ; 
 scalar_t__ FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

struct cmd_results *FUNC4(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc,
				"strip_workspace_name", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}

	config->current_bar->strip_workspace_name =
		FUNC2(argv[0], config->current_bar->strip_workspace_name);

	if (config->current_bar->strip_workspace_name) {
		config->current_bar->strip_workspace_numbers = false;

		FUNC3(SWAY_DEBUG, "Stripping workspace name on bar: %s",
				config->current_bar->id);
	} else {
		FUNC3(SWAY_DEBUG, "Enabling workspace name on bar: %s",
				config->current_bar->id);
	}

	return FUNC1(CMD_SUCCESS, NULL);
}