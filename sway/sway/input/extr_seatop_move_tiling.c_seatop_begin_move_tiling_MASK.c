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
struct sway_seat {int /*<<< orphan*/  cursor; struct seatop_move_tiling_event* seatop_data; } ;
struct sway_container {int dummy; } ;
struct seatop_move_tiling_event {int threshold_reached; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_seat*,struct sway_container*) ; 

void FUNC2(struct sway_seat *seat,
		struct sway_container *con) {
	FUNC1(seat, con);
	struct seatop_move_tiling_event *e = seat->seatop_data;
	if (e) {
		e->threshold_reached = true;
		FUNC0(seat->cursor, "grab", NULL);
	}
}