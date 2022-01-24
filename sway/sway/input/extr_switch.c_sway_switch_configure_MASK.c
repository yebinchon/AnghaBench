#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wlr_input_device {TYPE_4__* switch_device; } ;
struct TYPE_10__ {int /*<<< orphan*/  notify; int /*<<< orphan*/  link; } ;
struct sway_switch {TYPE_5__ switch_toggle; TYPE_2__* seat_device; } ;
struct TYPE_8__ {int /*<<< orphan*/  toggle; } ;
struct TYPE_9__ {TYPE_3__ events; } ;
struct TYPE_7__ {TYPE_1__* input_device; } ;
struct TYPE_6__ {struct wlr_input_device* wlr_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  handle_switch_toggle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_5__*) ; 

void FUNC3(struct sway_switch *sway_switch) {
	struct wlr_input_device *wlr_device =
		sway_switch->seat_device->input_device->wlr_device;
	FUNC1(&sway_switch->switch_toggle.link);
	FUNC2(&wlr_device->switch_device->events.toggle,
			&sway_switch->switch_toggle);
	sway_switch->switch_toggle.notify = handle_switch_toggle;
	FUNC0(SWAY_DEBUG, "Configured switch for device");
}