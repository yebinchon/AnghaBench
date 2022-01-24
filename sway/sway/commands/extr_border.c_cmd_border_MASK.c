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
struct sway_view {int /*<<< orphan*/  xdg_decoration; } ;
struct sway_container {int /*<<< orphan*/  border_thickness; struct sway_view* view; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_CSD ; 
 int /*<<< orphan*/  B_NONE ; 
 int /*<<< orphan*/  B_NORMAL ; 
 int /*<<< orphan*/  B_PIXEL ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 struct cmd_results* FUNC3 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* config ; 
 scalar_t__ FUNC5 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_container*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

struct cmd_results *FUNC9(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC3(argc, "border", EXPECTED_AT_LEAST, 1))) {
		return error;
	}

	struct sway_container *container = config->handler_context.container;
	if (!container || !container->view) {
		return FUNC4(CMD_INVALID, "Only views can have borders");
	}
	struct sway_view *view = container->view;

	if (FUNC8(argv[0], "none") == 0) {
		FUNC7(container, B_NONE);
	} else if (FUNC8(argv[0], "normal") == 0) {
		FUNC7(container, B_NORMAL);
	} else if (FUNC8(argv[0], "pixel") == 0) {
		FUNC7(container, B_PIXEL);
	} else if (FUNC8(argv[0], "csd") == 0) {
		if (!view->xdg_decoration) {
			return FUNC4(CMD_INVALID,
					"This window doesn't support client side decorations");
		}
		FUNC7(container, B_CSD);
	} else if (FUNC8(argv[0], "toggle") == 0) {
		FUNC2(container);
	} else {
		return FUNC4(CMD_INVALID,
				"Expected 'border <none|normal|pixel|csd|toggle>' "
				"or 'border pixel <px>'");
	}
	if (argc == 2) {
		container->border_thickness = FUNC1(argv[1]);
	}

	if (FUNC5(container)) {
		FUNC6(container);
	}

	FUNC0(container);

	return FUNC4(CMD_SUCCESS, NULL);
}