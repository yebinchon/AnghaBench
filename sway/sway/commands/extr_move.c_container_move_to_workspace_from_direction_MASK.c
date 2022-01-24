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
struct sway_workspace {TYPE_1__* tiling; int /*<<< orphan*/  layout; } ;
struct sway_container {struct sway_container* parent; scalar_t__ height_fraction; scalar_t__ width_fraction; scalar_t__ height; scalar_t__ width; } ;
typedef  enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
struct TYPE_5__ {int /*<<< orphan*/  seat; } ;
struct TYPE_6__ {TYPE_2__ handler_context; } ;
struct TYPE_4__ {int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int WLR_DIRECTION_DOWN ; 
 int WLR_DIRECTION_RIGHT ; 
 TYPE_3__* config ; 
 int /*<<< orphan*/  FUNC0 (struct sway_container*,struct sway_container*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct sway_container* FUNC2 (int /*<<< orphan*/ ,struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_workspace*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_workspace*,struct sway_container*,int) ; 

__attribute__((used)) static void FUNC6(
		struct sway_container *container, struct sway_workspace *workspace,
		enum wlr_direction move_dir) {
	container->width = container->height = 0;
	container->width_fraction = container->height_fraction = 0;

	if (FUNC1(workspace->layout, move_dir)) {
		FUNC3(SWAY_DEBUG, "Reparenting container (parallel)");
		int index =
			move_dir == WLR_DIRECTION_RIGHT || move_dir == WLR_DIRECTION_DOWN ?
			0 : workspace->tiling->length;
		FUNC5(workspace, container, index);
		return;
	}

	FUNC3(SWAY_DEBUG, "Reparenting container (perpendicular)");
	struct sway_container *focus_inactive = FUNC2(
			config->handler_context.seat, workspace);
	if (!focus_inactive) {
		// The workspace has no tiling children
		FUNC4(workspace, container);
		return;
	}
	while (focus_inactive->parent) {
		focus_inactive = focus_inactive->parent;
	}
	FUNC0(container, focus_inactive,
			move_dir);
}