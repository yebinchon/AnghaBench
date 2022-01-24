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
struct wl_seat {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pointer; } ;
struct swaynag {TYPE_1__ pointer; } ;
typedef  enum wl_seat_capability { ____Placeholder_wl_seat_capability } wl_seat_capability ;

/* Variables and functions */
 int WL_SEAT_CAPABILITY_POINTER ; 
 int /*<<< orphan*/  pointer_listener ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct swaynag*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct wl_seat*) ; 

__attribute__((used)) static void FUNC3(void *data, struct wl_seat *wl_seat,
		enum wl_seat_capability caps) {
	struct swaynag *swaynag = data;
	bool cap_pointer = caps & WL_SEAT_CAPABILITY_POINTER;
	if (cap_pointer && !swaynag->pointer.pointer) {
		swaynag->pointer.pointer = FUNC2(wl_seat);
		FUNC0(swaynag->pointer.pointer, &pointer_listener,
				swaynag);
	} else if (!cap_pointer && swaynag->pointer.pointer) {
		FUNC1(swaynag->pointer.pointer);
		swaynag->pointer.pointer = NULL;
	}
}