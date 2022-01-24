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
struct wlr_box {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct sway_output {TYPE_3__* wlr_output; scalar_t__ enabled; } ;
struct TYPE_5__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct sway_container {int /*<<< orphan*/  outputs; scalar_t__ view; TYPE_1__ current; } ;
struct TYPE_8__ {TYPE_2__* outputs; } ;
struct TYPE_7__ {int scale; } ;
struct TYPE_6__ {int length; struct sway_output** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct sway_output* FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sway_output*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct sway_output*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_output*,struct wlr_box*) ; 
 TYPE_4__* root ; 
 int /*<<< orphan*/  surface_send_enter_iterator ; 
 int /*<<< orphan*/  surface_send_leave_iterator ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,struct sway_container*,struct sway_output*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC9 (struct wlr_box*,struct wlr_box*,struct wlr_box*) ; 

void FUNC10(struct sway_container *con) {
	struct wlr_box con_box = {
		.x = con->current.x,
		.y = con->current.y,
		.width = con->current.width,
		.height = con->current.height,
	};
	struct sway_output *old_output = FUNC0(con);

	for (int i = 0; i < root->outputs->length; ++i) {
		struct sway_output *output = root->outputs->items[i];
		struct wlr_box output_box;
		FUNC6(output, &output_box);
		struct wlr_box intersection;
		bool intersects =
			FUNC9(&intersection, &con_box, &output_box);
		int index = FUNC5(con->outputs, output);

		if (intersects && index == -1) {
			// Send enter
			FUNC7(SWAY_DEBUG, "Container %p entered output %p", con, output);
			if (con->view) {
				FUNC8(con->view,
						surface_send_enter_iterator, output->wlr_output);
			}
			FUNC3(con->outputs, output);
		} else if (!intersects && index != -1) {
			// Send leave
			FUNC7(SWAY_DEBUG, "Container %p left output %p", con, output);
			if (con->view) {
				FUNC8(con->view,
					surface_send_leave_iterator, output->wlr_output);
			}
			FUNC4(con->outputs, index);
		}
	}
	struct sway_output *new_output = FUNC0(con);
	double old_scale = old_output && old_output->enabled ?
		old_output->wlr_output->scale : -1;
	double new_scale = new_output ? new_output->wlr_output->scale : -1;
	if (old_scale != new_scale) {
		FUNC2(con);
		FUNC1(con);
	}
}