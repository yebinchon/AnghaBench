#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wlr_event_tablet_pad_button {scalar_t__ state; int /*<<< orphan*/  time_msec; int /*<<< orphan*/  button; int /*<<< orphan*/  mode; int /*<<< orphan*/  group; } ;
struct wl_listener {int dummy; } ;
struct sway_tablet_pad {int /*<<< orphan*/  tablet_v2_pad; int /*<<< orphan*/  current_surface; } ;
typedef  enum zwp_tablet_pad_v2_button_state { ____Placeholder_zwp_tablet_pad_v2_button_state } zwp_tablet_pad_v2_button_state ;

/* Variables and functions */
 int /*<<< orphan*/  button ; 
 struct sway_tablet_pad* pad ; 
 struct sway_tablet_pad* FUNC0 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct wl_listener *listener, void *data) {
	struct sway_tablet_pad *pad = FUNC0(listener, pad, button);
	struct wlr_event_tablet_pad_button *event = data;

	if (!pad->current_surface) {
		return;
	}

	FUNC2(pad->tablet_v2_pad,
		event->group, event->mode, event->time_msec);

	FUNC1(pad->tablet_v2_pad,
		event->button, event->time_msec,
		(enum zwp_tablet_pad_v2_button_state)event->state);
}