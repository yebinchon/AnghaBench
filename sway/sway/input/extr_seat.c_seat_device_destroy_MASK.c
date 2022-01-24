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
struct sway_seat_device {int /*<<< orphan*/  link; TYPE_3__* input_device; TYPE_2__* sway_seat; int /*<<< orphan*/  tablet_pad; int /*<<< orphan*/  tablet; int /*<<< orphan*/  keyboard; } ;
struct TYPE_6__ {int /*<<< orphan*/  wlr_device; } ;
struct TYPE_5__ {TYPE_1__* cursor; } ;
struct TYPE_4__ {int /*<<< orphan*/  cursor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_seat_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sway_seat_device *seat_device) {
	if (!seat_device) {
		return;
	}

	FUNC1(seat_device->keyboard);
	FUNC2(seat_device->tablet);
	FUNC3(seat_device->tablet_pad);
	FUNC5(seat_device->sway_seat->cursor->cursor,
		seat_device->input_device->wlr_device);
	FUNC4(&seat_device->link);
	FUNC0(seat_device);
}