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
struct sway_seat_device {TYPE_2__* input_device; int /*<<< orphan*/  keyboard; } ;
struct sway_seat {int /*<<< orphan*/  wlr_seat; } ;
struct sway_node {TYPE_1__* sway_container; } ;
struct TYPE_6__ {int /*<<< orphan*/  surface; } ;
struct TYPE_5__ {int /*<<< orphan*/  wlr_device; } ;
struct TYPE_4__ {TYPE_3__* view; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sway_node*) ; 
 struct sway_node* FUNC1 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_seat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_seat*,struct sway_seat_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sway_seat *seat,
		struct sway_seat_device *seat_device) {
	if (!seat_device->keyboard) {
		FUNC4(seat, seat_device);
	}
	FUNC3(seat_device->keyboard);
	FUNC6(seat->wlr_seat,
			seat_device->input_device->wlr_device);
	struct sway_node *focus = FUNC1(seat);
	if (focus && FUNC0(focus)) {
		// force notify reenter to pick up the new configuration
		FUNC5(seat->wlr_seat);
		FUNC2(seat, focus->sway_container->view->surface);
	}
}