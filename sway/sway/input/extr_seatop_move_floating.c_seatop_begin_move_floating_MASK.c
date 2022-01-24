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
struct sway_seat {int /*<<< orphan*/  wlr_seat; struct seatop_move_floating_event* seatop_data; int /*<<< orphan*/ * seatop_impl; struct sway_cursor* cursor; } ;
struct sway_cursor {TYPE_1__* cursor; } ;
struct sway_container {scalar_t__ y; scalar_t__ x; } ;
struct seatop_move_floating_event {scalar_t__ dy; scalar_t__ dx; struct sway_container* con; } ;
struct TYPE_2__ {scalar_t__ y; scalar_t__ x; } ;

/* Variables and functions */
 struct seatop_move_floating_event* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_cursor*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_seat*) ; 
 int /*<<< orphan*/  seatop_impl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct sway_seat *seat,
		struct sway_container *con) {
	FUNC3(seat);

	struct sway_cursor *cursor = seat->cursor;
	struct seatop_move_floating_event *e =
		FUNC0(1, sizeof(struct seatop_move_floating_event));
	if (!e) {
		return;
	}
	e->con = con;
	e->dx = cursor->cursor->x - con->x;
	e->dy = cursor->cursor->y - con->y;

	seat->seatop_impl = &seatop_impl;
	seat->seatop_data = e;

	FUNC1(con);

	FUNC2(cursor, "grab", NULL);
	FUNC4(seat->wlr_seat);
}