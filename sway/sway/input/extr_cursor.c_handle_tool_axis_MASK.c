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
struct wlr_event_tablet_tool_axis {int updated_axes; int /*<<< orphan*/  wheel_delta; int /*<<< orphan*/  slider; int /*<<< orphan*/  rotation; int /*<<< orphan*/  tilt_y; int /*<<< orphan*/  tilt_x; int /*<<< orphan*/  distance; int /*<<< orphan*/  pressure; int /*<<< orphan*/  time_msec; int /*<<< orphan*/  dy; int /*<<< orphan*/  dx; int /*<<< orphan*/  y; int /*<<< orphan*/  x; TYPE_3__* tool; } ;
struct wl_listener {int dummy; } ;
struct sway_tablet_tool {int /*<<< orphan*/  tablet_v2_tool; int /*<<< orphan*/  tilt_y; int /*<<< orphan*/  tilt_x; int /*<<< orphan*/  tablet; } ;
struct sway_cursor {TYPE_1__* seat; } ;
struct TYPE_6__ {struct sway_tablet_tool* data; } ;
struct TYPE_5__ {int /*<<< orphan*/  idle; } ;
struct TYPE_4__ {int /*<<< orphan*/  wlr_seat; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int WLR_TABLET_TOOL_AXIS_DISTANCE ; 
 int WLR_TABLET_TOOL_AXIS_PRESSURE ; 
 int WLR_TABLET_TOOL_AXIS_ROTATION ; 
 int WLR_TABLET_TOOL_AXIS_SLIDER ; 
 int WLR_TABLET_TOOL_AXIS_TILT_X ; 
 int WLR_TABLET_TOOL_AXIS_TILT_Y ; 
 int WLR_TABLET_TOOL_AXIS_WHEEL ; 
 int WLR_TABLET_TOOL_AXIS_X ; 
 int WLR_TABLET_TOOL_AXIS_Y ; 
 struct sway_cursor* cursor ; 
 int /*<<< orphan*/  FUNC0 (struct sway_cursor*,int /*<<< orphan*/ ,TYPE_3__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tool_axis ; 
 struct sway_cursor* FUNC2 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct wl_listener *listener, void *data) {
	struct sway_cursor *cursor = FUNC2(listener, cursor, tool_axis);
	FUNC3(server.idle, cursor->seat->wlr_seat);
	struct wlr_event_tablet_tool_axis *event = data;
	struct sway_tablet_tool *sway_tool = event->tool->data;

	if (!sway_tool) {
		FUNC1(SWAY_DEBUG, "tool axis before proximity");
		return;
	}

	FUNC0(cursor, sway_tool->tablet, event->tool,
		event->updated_axes & WLR_TABLET_TOOL_AXIS_X,
		event->updated_axes & WLR_TABLET_TOOL_AXIS_Y,
		event->x, event->y, event->dx, event->dy, event->time_msec);

	if (event->updated_axes & WLR_TABLET_TOOL_AXIS_PRESSURE) {
		FUNC5(
			sway_tool->tablet_v2_tool, event->pressure);
	}

	if (event->updated_axes & WLR_TABLET_TOOL_AXIS_DISTANCE) {
		FUNC4(
			sway_tool->tablet_v2_tool, event->distance);
	}

	if (event->updated_axes & WLR_TABLET_TOOL_AXIS_TILT_X) {
		sway_tool->tilt_x = event->tilt_x;
	}

	if (event->updated_axes & WLR_TABLET_TOOL_AXIS_TILT_Y) {
		sway_tool->tilt_y = event->tilt_y;
	}

	if (event->updated_axes & (WLR_TABLET_TOOL_AXIS_TILT_X | WLR_TABLET_TOOL_AXIS_TILT_Y)) {
		FUNC8(
			sway_tool->tablet_v2_tool,
			sway_tool->tilt_x, sway_tool->tilt_y);
	}

	if (event->updated_axes & WLR_TABLET_TOOL_AXIS_ROTATION) {
		FUNC6(
			sway_tool->tablet_v2_tool, event->rotation);
	}

	if (event->updated_axes & WLR_TABLET_TOOL_AXIS_SLIDER) {
		FUNC7(
			sway_tool->tablet_v2_tool, event->slider);
	}

	if (event->updated_axes & WLR_TABLET_TOOL_AXIS_WHEEL) {
		FUNC9(
			sway_tool->tablet_v2_tool, event->wheel_delta, 0);
	}
}