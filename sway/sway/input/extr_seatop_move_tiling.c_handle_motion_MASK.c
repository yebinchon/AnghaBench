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
typedef  int /*<<< orphan*/  uint32_t ;
struct sway_seat {struct seatop_move_tiling_event* seatop_data; } ;
struct seatop_move_tiling_event {scalar_t__ threshold_reached; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_seat*) ; 

__attribute__((used)) static void FUNC2(struct sway_seat *seat, uint32_t time_msec,
		double dx, double dy) {
	struct seatop_move_tiling_event *e = seat->seatop_data;
	if (e->threshold_reached) {
		FUNC0(seat);
	} else {
		FUNC1(seat);
	}
}