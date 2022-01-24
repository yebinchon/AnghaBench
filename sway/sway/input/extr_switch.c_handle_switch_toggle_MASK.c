#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wlr_seat {int dummy; } ;
struct wlr_input_device {int dummy; } ;
struct wlr_event_switch_toggle {int /*<<< orphan*/  switch_state; int /*<<< orphan*/  switch_type; } ;
struct wl_listener {int dummy; } ;
struct sway_switch {int /*<<< orphan*/  state; int /*<<< orphan*/  type; TYPE_2__* seat_device; } ;
struct TYPE_8__ {int /*<<< orphan*/  idle; } ;
struct TYPE_7__ {struct wlr_seat* wlr_seat; } ;
struct TYPE_6__ {TYPE_1__* input_device; TYPE_3__* sway_seat; } ;
struct TYPE_5__ {struct wlr_input_device* wlr_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct sway_switch*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct wlr_input_device*) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sway_switch* sway_switch ; 
 int /*<<< orphan*/  switch_toggle ; 
 struct sway_switch* FUNC4 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct wlr_seat*) ; 

__attribute__((used)) static void FUNC6(struct wl_listener *listener, void *data) {
	struct sway_switch *sway_switch =
			FUNC4(listener, sway_switch, switch_toggle);
	struct wlr_event_switch_toggle *event = data;
	struct wlr_seat* wlr_seat = sway_switch->seat_device->sway_seat->wlr_seat;
	FUNC5(server.idle, wlr_seat);

	struct wlr_input_device *wlr_device =
		sway_switch->seat_device->input_device->wlr_device;
	char *device_identifier = FUNC2(wlr_device);
	FUNC3(SWAY_DEBUG, "%s: type %d state %d", device_identifier,
			event->switch_type, event->switch_state);
	FUNC1(device_identifier);

	sway_switch->type = event->switch_type;
	sway_switch->state = event->switch_state;
	FUNC0(sway_switch);
}