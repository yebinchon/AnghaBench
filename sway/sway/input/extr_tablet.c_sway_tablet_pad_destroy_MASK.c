#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  link; } ;
struct TYPE_9__ {int /*<<< orphan*/  link; } ;
struct TYPE_8__ {int /*<<< orphan*/  link; } ;
struct TYPE_7__ {int /*<<< orphan*/  link; } ;
struct TYPE_12__ {int /*<<< orphan*/  link; } ;
struct TYPE_11__ {int /*<<< orphan*/  link; } ;
struct sway_tablet_pad {TYPE_4__ tablet_destroy; TYPE_3__ surface_destroy; TYPE_2__ ring; TYPE_1__ strip; TYPE_6__ button; TYPE_5__ attach; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_tablet_pad*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct sway_tablet_pad *tablet_pad) {
	if (!tablet_pad) {
		return;
	}

	FUNC1(&tablet_pad->link);
	FUNC1(&tablet_pad->attach.link);
	FUNC1(&tablet_pad->button.link);
	FUNC1(&tablet_pad->strip.link);
	FUNC1(&tablet_pad->ring.link);
	FUNC1(&tablet_pad->surface_destroy.link);
	FUNC1(&tablet_pad->tablet_destroy.link);

	FUNC0(tablet_pad);
}