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
struct sway_workspace {void* layout; TYPE_1__* tiling; } ;
struct sway_container {scalar_t__ height; scalar_t__ width; int /*<<< orphan*/  parent; } ;
typedef  enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
struct TYPE_2__ {int length; } ;

/* Variables and functions */
 void* L_HORIZ ; 
 void* L_VERT ; 
 int WLR_DIRECTION_LEFT ; 
 int WLR_DIRECTION_RIGHT ; 
 int WLR_DIRECTION_UP ; 
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_workspace*,struct sway_container*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_workspace*) ; 
 struct sway_container* FUNC4 (struct sway_workspace*) ; 

__attribute__((used)) static void FUNC5(struct sway_workspace *ws,
		struct sway_container *child, enum wlr_direction move_dir) {
	if (!child->parent && ws->tiling->length == 1) {
		ws->layout =
			move_dir == WLR_DIRECTION_LEFT || move_dir == WLR_DIRECTION_RIGHT ?
			L_HORIZ : L_VERT;
		FUNC3(ws);
		return;
	}
	FUNC0(child);
	struct sway_container *new_parent = FUNC4(ws);

	int index =
		move_dir == WLR_DIRECTION_LEFT || move_dir == WLR_DIRECTION_UP ? 0 : 1;
	FUNC2(ws, child, index);
	FUNC1(new_parent);
	ws->layout =
		move_dir == WLR_DIRECTION_LEFT || move_dir == WLR_DIRECTION_RIGHT ?
		L_HORIZ : L_VERT;
	FUNC3(ws);
	child->width = child->height = 0;
}