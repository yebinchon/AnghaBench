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
struct sway_tablet {struct sway_seat_device* seat_device; int /*<<< orphan*/  link; } ;
struct sway_seat_device {struct sway_tablet* tablet; } ;
struct sway_seat {TYPE_1__* cursor; } ;
struct TYPE_2__ {int /*<<< orphan*/  tablets; } ;

/* Variables and functions */
 struct sway_tablet* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_tablet*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct sway_tablet *FUNC3(struct sway_seat *seat,
		struct sway_seat_device *device) {
	struct sway_tablet *tablet =
		FUNC0(1, sizeof(struct sway_tablet));
	if (!FUNC1(tablet, "could not allocate sway tablet for seat")) {
		return NULL;
	}

	FUNC2(&seat->cursor->tablets, &tablet->link);

	device->tablet = tablet;
	tablet->seat_device = device;

	return tablet;
}