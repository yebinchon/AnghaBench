#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * touch; } ;
struct TYPE_3__ {int /*<<< orphan*/ * cursor_surface; int /*<<< orphan*/ * pointer; } ;
struct swaybar_seat {int /*<<< orphan*/  link; int /*<<< orphan*/  wl_seat; TYPE_2__ touch; TYPE_1__ pointer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct swaybar_seat*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct swaybar_seat *seat) {
	if (!seat) {
		return;
	}
	if (seat->pointer.pointer != NULL) {
		FUNC2(seat->pointer.pointer);
	}
	if (seat->pointer.cursor_surface != NULL) {
		FUNC4(seat->pointer.cursor_surface);
	}
	if (seat->touch.touch != NULL) {
		FUNC5(seat->touch.touch);
	}
	FUNC3(seat->wl_seat);
	FUNC1(&seat->link);
	FUNC0(seat);
}