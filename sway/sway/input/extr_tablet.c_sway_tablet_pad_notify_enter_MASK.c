#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  destroy; } ;
struct wlr_surface {TYPE_2__ events; } ;
struct TYPE_6__ {int /*<<< orphan*/  notify; int /*<<< orphan*/  link; } ;
struct sway_tablet_pad {TYPE_3__ surface_destroy; struct wlr_surface* current_surface; TYPE_1__* tablet; int /*<<< orphan*/  tablet_v2_pad; } ;
struct TYPE_4__ {int /*<<< orphan*/  tablet_v2; } ;

/* Variables and functions */
 int /*<<< orphan*/  handle_pad_tablet_surface_destroy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct wlr_surface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wlr_surface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct wlr_surface*) ; 

void FUNC6(struct sway_tablet_pad *tablet_pad,
		struct wlr_surface *surface) {
	if (!tablet_pad || !tablet_pad->tablet) {
		return;
	}

	if (surface == tablet_pad->current_surface) {
		return;
	}

	/* Leave current surface */
	if (tablet_pad->current_surface) {
		FUNC5(tablet_pad->tablet_v2_pad,
			tablet_pad->current_surface);
		FUNC1(&tablet_pad->surface_destroy.link);
		FUNC0(&tablet_pad->surface_destroy.link);
		tablet_pad->current_surface = NULL;
	}

	if (!FUNC3(tablet_pad->tablet->tablet_v2, surface)) {
		return;
	}

	FUNC4(tablet_pad->tablet_v2_pad,
		tablet_pad->tablet->tablet_v2, surface);

	tablet_pad->current_surface = surface;
	FUNC1(&tablet_pad->surface_destroy.link);
	tablet_pad->surface_destroy.notify = handle_pad_tablet_surface_destroy;
	FUNC2(&surface->events.destroy, &tablet_pad->surface_destroy);
}