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
struct wlr_event_tablet_tool_tip {scalar_t__ state; int /*<<< orphan*/  time_msec; int /*<<< orphan*/  device; TYPE_1__* tool; } ;
struct wl_listener {int dummy; } ;
struct sway_tablet_tool {int /*<<< orphan*/  tablet_v2_tool; TYPE_2__* tablet; } ;
struct sway_seat {int /*<<< orphan*/  wlr_seat; } ;
struct sway_cursor {struct sway_seat* seat; TYPE_3__* cursor; } ;
struct TYPE_8__ {int /*<<< orphan*/  idle; } ;
struct TYPE_7__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_6__ {struct wlr_tablet_v2_tablet* tablet_v2; } ;
struct TYPE_5__ {struct sway_tablet_tool* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  WLR_BUTTON_PRESSED ; 
 int /*<<< orphan*/  WLR_BUTTON_RELEASED ; 
 scalar_t__ WLR_TABLET_TOOL_TIP_DOWN ; 
 struct sway_cursor* cursor ; 
 int /*<<< orphan*/  FUNC0 (struct sway_cursor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_seat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wlr_surface**,double*,double*) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  tool_tip ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct sway_cursor* FUNC3 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wlr_tablet_v2_tablet*,struct wlr_surface*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct wl_listener *listener, void *data) {
	struct sway_cursor *cursor = FUNC3(listener, cursor, tool_tip);
	FUNC4(server.idle, cursor->seat->wlr_seat);
	struct wlr_event_tablet_tool_tip *event = data;
	struct sway_tablet_tool *sway_tool = event->tool->data;
	struct wlr_tablet_v2_tablet *tablet_v2 = sway_tool->tablet->tablet_v2;
	struct sway_seat *seat = cursor->seat;

	double sx, sy;
	struct wlr_surface *surface = NULL;
	FUNC1(seat, cursor->cursor->x, cursor->cursor->y,
		&surface, &sx, &sy);

	if (!surface || !FUNC6(tablet_v2, surface)) {
		FUNC0(cursor, event->device, event->time_msec,
				BTN_LEFT, event->state == WLR_TABLET_TOOL_TIP_DOWN ?
					WLR_BUTTON_PRESSED : WLR_BUTTON_RELEASED);
		FUNC5(cursor->seat->wlr_seat);
		FUNC2();
		return;
	}

	if (event->state == WLR_TABLET_TOOL_TIP_DOWN) {
		FUNC8(sway_tool->tablet_v2_tool);
		FUNC7(sway_tool->tablet_v2_tool);
	} else {
		FUNC9(sway_tool->tablet_v2_tool);
	}
}