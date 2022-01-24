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
struct sway_view {int allow_request_urgent; } ;
struct sway_container {struct sway_view* view; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* config ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_view*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_view*,int /*<<< orphan*/ ) ; 

struct cmd_results *FUNC6(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "urgent", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}
	struct sway_container *container = config->handler_context.container;
	if (!container) {
		return FUNC1(CMD_FAILURE, "No current container");
	}
	if (!container->view) {
		return FUNC1(CMD_INVALID, "Only views can be urgent");
	}
	struct sway_view *view = container->view;

	if (FUNC3(argv[0], "allow") == 0) {
		view->allow_request_urgent = true;
	} else if (FUNC3(argv[0], "deny") == 0) {
		view->allow_request_urgent = false;
	} else {
		FUNC5(view, FUNC2(argv[0], FUNC4(view)));
	}

	return FUNC1(CMD_SUCCESS, NULL);
}