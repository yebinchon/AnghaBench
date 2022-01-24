#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sway_seat {struct seatop_move_tiling_event* seatop_data; } ;
struct sway_container {int /*<<< orphan*/  node; } ;
struct seatop_move_tiling_event {struct sway_container* con; int /*<<< orphan*/ * target_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_seat*) ; 

__attribute__((used)) static void FUNC1(struct sway_seat *seat, struct sway_container *con) {
	struct seatop_move_tiling_event *e = seat->seatop_data;
	if (e->target_node == &con->node) { // Drop target
		e->target_node = NULL;
	}
	if (e->con == con) { // The container being moved
		FUNC0(seat);
	}
}