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
struct wlr_event_pointer_axis {int dummy; } ;
struct wl_listener {int dummy; } ;
struct sway_cursor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  axis ; 
 struct sway_cursor* cursor ; 
 int /*<<< orphan*/  FUNC0 (struct sway_cursor*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_cursor*,struct wlr_event_pointer_axis*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct sway_cursor* FUNC3 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct wl_listener *listener, void *data) {
	struct sway_cursor *cursor = FUNC3(listener, cursor, axis);
	struct wlr_event_pointer_axis *event = data;
	FUNC0(cursor);
	FUNC1(cursor, event);
	FUNC2();
}