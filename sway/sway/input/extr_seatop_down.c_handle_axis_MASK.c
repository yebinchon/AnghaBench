#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wlr_event_pointer_axis {float delta; float delta_discrete; int /*<<< orphan*/  source; int /*<<< orphan*/  orientation; int /*<<< orphan*/  time_msec; TYPE_1__* device; } ;
struct sway_seat {int /*<<< orphan*/  wlr_seat; } ;
struct sway_input_device {int dummy; } ;
struct input_config {float scroll_factor; } ;
struct TYPE_2__ {struct sway_input_device* data; } ;

/* Variables and functions */
 float FLT_MIN ; 
 struct input_config* FUNC0 (struct sway_input_device*) ; 
 int /*<<< orphan*/  FUNC1 (float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sway_seat *seat,
		struct wlr_event_pointer_axis *event) {
	struct sway_input_device *input_device =
		event->device ? event->device->data : NULL;
	struct input_config *ic =
		input_device ? FUNC0(input_device) : NULL;
	float scroll_factor =
		(ic == NULL || ic->scroll_factor == FLT_MIN) ? 1.0f : ic->scroll_factor;

	FUNC2(seat->wlr_seat, event->time_msec,
		event->orientation, scroll_factor * event->delta,
		FUNC1(scroll_factor * event->delta_discrete), event->source);
}