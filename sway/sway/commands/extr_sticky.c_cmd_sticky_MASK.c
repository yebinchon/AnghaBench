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
struct sway_workspace {int /*<<< orphan*/  output; } ;
struct sway_container {struct sway_workspace* workspace; scalar_t__ is_sticky; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int /*<<< orphan*/  FUNC0 (struct sway_workspace*) ; 
 struct cmd_results* FUNC1 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* config ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_container*) ; 
 scalar_t__ FUNC5 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_container*) ; 
 struct sway_workspace* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sway_workspace*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct sway_workspace*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC11 (struct sway_workspace*) ; 

struct cmd_results *FUNC12(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC1(argc, "sticky", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}
	struct sway_container *container = config->handler_context.container;

	if (container == NULL) {
		return FUNC2(CMD_FAILURE, "No current container");
	};

	container->is_sticky = FUNC8(argv[0], container->is_sticky);

	if (container->is_sticky && FUNC5(container) &&
			!FUNC6(container)) {
		// move container to active workspace
		struct sway_workspace *active_workspace =
			FUNC7(container->workspace->output);
		if (!FUNC9(active_workspace,
					"Expected output to have a workspace")) {
			return FUNC2(CMD_FAILURE,
					"Expected output to have a workspace");
		}
		if (container->workspace != active_workspace) {
			struct sway_workspace *old_workspace = container->workspace;
			FUNC3(container);
			FUNC10(active_workspace, container);
			FUNC4(container);
			FUNC0(active_workspace);
			FUNC11(old_workspace);
		}
	}

	return FUNC2(CMD_SUCCESS, NULL);
}