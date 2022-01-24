#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  link; } ;
struct TYPE_12__ {int /*<<< orphan*/  link; } ;
struct TYPE_11__ {int /*<<< orphan*/  link; } ;
struct TYPE_10__ {int /*<<< orphan*/  link; } ;
struct TYPE_9__ {int /*<<< orphan*/  link; } ;
struct TYPE_8__ {int /*<<< orphan*/  link; } ;
struct sway_tablet_pad {int /*<<< orphan*/  link; TYPE_6__ tablet_destroy; TYPE_5__ surface_destroy; TYPE_4__ ring; TYPE_3__ strip; TYPE_2__ button; TYPE_1__ attach; struct sway_seat_device* seat_device; } ;
struct sway_seat_device {int dummy; } ;
struct sway_seat {TYPE_7__* cursor; } ;
struct TYPE_14__ {int /*<<< orphan*/  tablet_pads; } ;

/* Variables and functions */
 struct sway_tablet_pad* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_tablet_pad*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct sway_tablet_pad *FUNC4(struct sway_seat *seat,
		struct sway_seat_device *device) {
	struct sway_tablet_pad *tablet_pad =
		FUNC0(1, sizeof(struct sway_tablet_pad));
	if (!FUNC1(tablet_pad, "could not allocate sway tablet")) {
		return NULL;
	}

	tablet_pad->seat_device = device;
	FUNC2(&tablet_pad->attach.link);
	FUNC2(&tablet_pad->button.link);
	FUNC2(&tablet_pad->strip.link);
	FUNC2(&tablet_pad->ring.link);
	FUNC2(&tablet_pad->surface_destroy.link);
	FUNC2(&tablet_pad->tablet_destroy.link);

	FUNC3(&seat->cursor->tablet_pads, &tablet_pad->link);

	return tablet_pad;
}