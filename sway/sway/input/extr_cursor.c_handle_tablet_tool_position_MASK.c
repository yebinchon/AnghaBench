#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wlr_tablet_tool {int type; struct sway_tablet_tool* data; } ;
struct wlr_surface {int dummy; } ;
struct sway_tablet_tool {int /*<<< orphan*/  tablet_v2_tool; } ;
struct sway_tablet {int /*<<< orphan*/  tablet_v2; TYPE_1__* seat_device; } ;
struct sway_seat {int dummy; } ;
struct sway_input_device {int /*<<< orphan*/  wlr_device; } ;
struct sway_cursor {TYPE_2__* cursor; struct sway_seat* seat; } ;
struct input_config {int /*<<< orphan*/ * mapped_from_region; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_5__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_4__ {struct sway_input_device* input_device; } ;

/* Variables and functions */
 double NAN ; 
#define  WLR_TABLET_TOOL_TYPE_MOUSE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,double*,double*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_cursor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double,double,double) ; 
 struct input_config* FUNC2 (struct sway_input_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_seat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wlr_surface**,double*,double*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct wlr_surface*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wlr_surface*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct sway_cursor *cursor,
		struct sway_tablet *tablet,
		struct wlr_tablet_tool *tool,
		bool change_x, bool change_y,
		double x, double y, double dx, double dy,
		int32_t time_msec) {
	if (!change_x && !change_y) {
		return;
	}

	struct sway_input_device *input_device = tablet->seat_device->input_device;
	struct input_config *ic = FUNC2(input_device);
	if (ic != NULL && ic->mapped_from_region != NULL) {
		FUNC0(input_device->wlr_device,
			ic->mapped_from_region, &x, &y);
	}

	switch (tool->type) {
	case WLR_TABLET_TOOL_TYPE_MOUSE:
		FUNC4(cursor->cursor, input_device->wlr_device, dx, dy);
		break;
	default:
		FUNC5(cursor->cursor, input_device->wlr_device,
			change_x ? x : NAN, change_y ? y : NAN);
	}

	double sx, sy;
	struct wlr_surface *surface = NULL;
	struct sway_seat *seat = cursor->seat;
	FUNC3(seat, cursor->cursor->x, cursor->cursor->y,
		&surface, &sx, &sy);
	struct sway_tablet_tool *sway_tool = tool->data;

	if (!surface || !FUNC6(tablet->tablet_v2, surface)) {
		FUNC9(sway_tool->tablet_v2_tool);
		FUNC1(cursor, time_msec, input_device->wlr_device, dx, dy, dx, dy);
		return;
	}

	FUNC8(sway_tool->tablet_v2_tool,
		tablet->tablet_v2, surface);

	FUNC7(sway_tool->tablet_v2_tool, sx, sy);
}