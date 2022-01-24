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
struct wlr_tablet_v2_tablet {int dummy; } ;
struct wlr_surface {int dummy; } ;
struct wlr_event_tablet_tool_button {int state; scalar_t__ button; int /*<<< orphan*/  time_msec; int /*<<< orphan*/  device; TYPE_1__* tool; } ;
struct wl_listener {int dummy; } ;
struct sway_tablet_tool {int /*<<< orphan*/  tablet_v2_tool; TYPE_2__* tablet; } ;
struct sway_seat {int /*<<< orphan*/  wlr_seat; } ;
struct sway_cursor {int tool_buttons; struct sway_seat* seat; TYPE_3__* cursor; } ;
typedef  enum zwp_tablet_pad_v2_button_state { ____Placeholder_zwp_tablet_pad_v2_button_state } zwp_tablet_pad_v2_button_state ;
struct TYPE_8__ {int /*<<< orphan*/  idle; } ;
struct TYPE_7__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_6__ {struct wlr_tablet_v2_tablet* tablet_v2; } ;
struct TYPE_5__ {struct sway_tablet_tool* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
#define  WLR_BUTTON_PRESSED 129 
#define  WLR_BUTTON_RELEASED 128 
 struct sway_cursor* cursor ; 
 int /*<<< orphan*/  FUNC0 (struct sway_cursor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_seat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wlr_surface**,double*,double*) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tool_button ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct sway_cursor* FUNC4 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wlr_tablet_v2_tablet*,struct wlr_surface*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC9(struct wl_listener *listener, void *data) {
	struct sway_cursor *cursor = FUNC4(listener, cursor, tool_button);
	FUNC5(server.idle, cursor->seat->wlr_seat);
	struct wlr_event_tablet_tool_button *event = data;
	struct sway_tablet_tool *sway_tool = event->tool->data;
	struct wlr_tablet_v2_tablet *tablet_v2 = sway_tool->tablet->tablet_v2;
	struct sway_seat *seat = cursor->seat;

	if (!sway_tool) {
		FUNC2(SWAY_DEBUG, "tool button before proximity");
		return;
	}

	double sx, sy;
	struct wlr_surface *surface = NULL;

	FUNC1(seat, cursor->cursor->x, cursor->cursor->y,
		&surface, &sx, &sy);

	if (!surface || !FUNC7(tablet_v2, surface)) {
		// TODO: the user may want to configure which tool buttons are mapped to
		// which simulated pointer buttons
		switch (event->state) {
		case WLR_BUTTON_PRESSED:
			if (cursor->tool_buttons == 0) {
				FUNC0(cursor, event->device,
						event->time_msec, BTN_RIGHT, event->state);
			}
			cursor->tool_buttons++;
			break;
		case WLR_BUTTON_RELEASED:
			if (cursor->tool_buttons == 1) {
				FUNC0(cursor, event->device,
						event->time_msec, BTN_RIGHT, event->state);
			}
			cursor->tool_buttons--;
			break;
		}
		FUNC6(cursor->seat->wlr_seat);
		FUNC3();
		return;
	}

	FUNC8(sway_tool->tablet_v2_tool,
		(enum zwp_tablet_pad_v2_button_state)event->button,
		(enum zwp_tablet_pad_v2_button_state)event->state);
}