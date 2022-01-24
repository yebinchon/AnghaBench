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
struct wlr_seat_request_set_selection_event {int /*<<< orphan*/  serial; int /*<<< orphan*/  source; } ;
struct wl_listener {int dummy; } ;
struct sway_seat {int /*<<< orphan*/  wlr_seat; } ;

/* Variables and functions */
 int /*<<< orphan*/  request_set_selection ; 
 struct sway_seat* seat ; 
 struct sway_seat* FUNC0 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wl_listener *listener,
		void *data) {
	struct sway_seat *seat =
		FUNC0(listener, seat, request_set_selection);
	struct wlr_seat_request_set_selection_event *event = data;
	FUNC1(seat->wlr_seat, event->source, event->serial);
}