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
struct sway_workspace {int /*<<< orphan*/  node; } ;
struct sway_container {double x; double y; scalar_t__ view; struct sway_workspace* workspace; scalar_t__ fullscreen_mode; } ;
struct cmd_results {int dummy; } ;
typedef  enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
struct TYPE_4__ {int /*<<< orphan*/  seat; struct sway_container* container; } ;
struct TYPE_6__ {TYPE_1__ handler_context; } ;
struct TYPE_5__ {scalar_t__ fullscreen_global; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
#define  WLR_DIRECTION_DOWN 131 
#define  WLR_DIRECTION_LEFT 130 
#define  WLR_DIRECTION_RIGHT 129 
#define  WLR_DIRECTION_UP 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sway_workspace*) ; 
 struct cmd_results* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* config ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_container*,double,double) ; 
 scalar_t__ FUNC5 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_container*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_container*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct sway_workspace*,struct sway_workspace*,char*) ; 
 TYPE_2__* root ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sway_workspace*) ; 

__attribute__((used)) static struct cmd_results *FUNC14(
		enum wlr_direction direction, int argc, char **argv) {
	int move_amt = 10;
	if (argc) {
		char *inv;
		move_amt = (int)FUNC12(argv[0], &inv, 10);
		if (*inv != '\0' && FUNC11(inv, "px") != 0) {
			return FUNC2(CMD_FAILURE, "Invalid distance specified");
		}
	}

	struct sway_container *container = config->handler_context.container;
	if (!container) {
		return FUNC2(CMD_FAILURE,
				"Cannot move workspaces in a direction");
	}
	if (FUNC5(container)) {
		if (container->fullscreen_mode) {
			return FUNC2(CMD_FAILURE,
					"Cannot move fullscreen floating container");
		}
		double lx = container->x;
		double ly = container->y;
		switch (direction) {
		case WLR_DIRECTION_LEFT:
			lx -= move_amt;
			break;
		case WLR_DIRECTION_RIGHT:
			lx += move_amt;
			break;
		case WLR_DIRECTION_UP:
			ly -= move_amt;
			break;
		case WLR_DIRECTION_DOWN:
			ly += move_amt;
			break;
		}
		FUNC4(container, lx, ly);
		return FUNC2(CMD_SUCCESS, NULL);
	}
	struct sway_workspace *old_ws = container->workspace;

	if (!FUNC6(container, direction)) {
		// Container didn't move
		return FUNC2(CMD_SUCCESS, NULL);
	}

	struct sway_workspace *new_ws = container->workspace;

	if (root->fullscreen_global) {
		FUNC0();
	} else {
		FUNC1(old_ws);
		if (new_ws != old_ws) {
			FUNC1(new_ws);
		}
	}

	if (container->view) {
		FUNC7(container, "move");
	}

	// Hack to re-focus container
	FUNC10(config->handler_context.seat, &new_ws->node);
	FUNC9(config->handler_context.seat, container);

	if (old_ws != new_ws) {
		FUNC8(old_ws, new_ws, "focus");
		FUNC13(old_ws);
		FUNC13(new_ws);
	}
	FUNC3(container);

	return FUNC2(CMD_SUCCESS, NULL);
}