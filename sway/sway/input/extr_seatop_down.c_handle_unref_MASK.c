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
struct sway_seat {struct seatop_down_event* seatop_data; } ;
struct sway_container {int dummy; } ;
struct seatop_down_event {struct sway_container* con; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_seat*) ; 

__attribute__((used)) static void FUNC1(struct sway_seat *seat, struct sway_container *con) {
	struct seatop_down_event *e = seat->seatop_data;
	if (e->con == con) {
		FUNC0(seat);
	}
}