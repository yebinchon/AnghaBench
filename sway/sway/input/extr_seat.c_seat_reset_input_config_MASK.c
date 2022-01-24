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
struct sway_seat_device {TYPE_2__* input_device; } ;
struct sway_seat {TYPE_1__* cursor; } ;
struct TYPE_4__ {int /*<<< orphan*/  wlr_device; int /*<<< orphan*/  identifier; } ;
struct TYPE_3__ {int /*<<< orphan*/  cursor; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct sway_seat *seat,
		struct sway_seat_device *sway_device) {
	FUNC0(SWAY_DEBUG, "Resetting output mapping for input device %s",
		sway_device->input_device->identifier);
	FUNC1(seat->cursor->cursor,
		sway_device->input_device->wlr_device, NULL);
}