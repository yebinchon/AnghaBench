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
struct sway_seat {TYPE_1__* seatop_impl; } ;
struct sway_container {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unref ) (struct sway_seat*,struct sway_container*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_seat*,struct sway_container*) ; 

void FUNC1(struct sway_seat *seat, struct sway_container *con) {
	if (seat->seatop_impl->unref) {
		seat->seatop_impl->unref(seat, con);
	}
}