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
struct wl_listener {int dummy; } ;
struct sway_cursor {TYPE_1__* seat; } ;
struct TYPE_2__ {int /*<<< orphan*/  wlr_seat; } ;

/* Variables and functions */
 struct sway_cursor* cursor ; 
 int /*<<< orphan*/  FUNC0 (struct sway_cursor*) ; 
 int /*<<< orphan*/  frame ; 
 struct sway_cursor* FUNC1 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct wl_listener *listener, void *data) {
	struct sway_cursor *cursor = FUNC1(listener, cursor, frame);
	FUNC0(cursor);
	FUNC2(cursor->seat->wlr_seat);
}