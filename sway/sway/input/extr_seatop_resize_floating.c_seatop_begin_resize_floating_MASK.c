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
struct wlr_keyboard {int dummy; } ;
struct sway_seat {int /*<<< orphan*/  wlr_seat; TYPE_2__* cursor; struct seatop_resize_floating_event* seatop_data; int /*<<< orphan*/ * seatop_impl; } ;
struct sway_container {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct seatop_resize_floating_event {int edge; int /*<<< orphan*/  ref_height; int /*<<< orphan*/  ref_width; int /*<<< orphan*/  ref_con_ly; int /*<<< orphan*/  ref_con_lx; int /*<<< orphan*/  ref_ly; int /*<<< orphan*/  ref_lx; int /*<<< orphan*/  preserve_ratio; struct sway_container* con; } ;
typedef  enum wlr_edges { ____Placeholder_wlr_edges } wlr_edges ;
struct TYPE_4__ {TYPE_1__* cursor; } ;
struct TYPE_3__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int WLR_EDGE_BOTTOM ; 
 int WLR_EDGE_NONE ; 
 int WLR_EDGE_RIGHT ; 
 int WLR_MODIFIER_SHIFT ; 
 struct seatop_resize_floating_event* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_seat*) ; 
 int /*<<< orphan*/  seatop_impl ; 
 int FUNC4 (struct wlr_keyboard*) ; 
 struct wlr_keyboard* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int) ; 

void FUNC8(struct sway_seat *seat,
		struct sway_container *con, enum wlr_edges edge) {
	FUNC3(seat);

	struct seatop_resize_floating_event *e =
		FUNC0(1, sizeof(struct seatop_resize_floating_event));
	if (!e) {
		return;
	}
	e->con = con;

	struct wlr_keyboard *keyboard = FUNC5(seat->wlr_seat);
	e->preserve_ratio = keyboard &&
		(FUNC4(keyboard) & WLR_MODIFIER_SHIFT);

	e->edge = edge == WLR_EDGE_NONE ? WLR_EDGE_BOTTOM | WLR_EDGE_RIGHT : edge;
	e->ref_lx = seat->cursor->cursor->x;
	e->ref_ly = seat->cursor->cursor->y;
	e->ref_con_lx = con->x;
	e->ref_con_ly = con->y;
	e->ref_width = con->width;
	e->ref_height = con->height;

	seat->seatop_impl = &seatop_impl;
	seat->seatop_data = e;

	FUNC1(con);

	const char *image = edge == WLR_EDGE_NONE ?
		"se-resize" : FUNC7(edge);
	FUNC2(seat->cursor, image, NULL);
	FUNC6(seat->wlr_seat);
}