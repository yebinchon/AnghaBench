#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wlr_xwayland_surface {int /*<<< orphan*/  surface; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct wl_listener {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  link; } ;
struct sway_xwayland_unmanaged {TYPE_1__ commit; int /*<<< orphan*/  link; struct wlr_xwayland_surface* wlr_xwayland_surface; } ;
struct sway_seat {TYPE_3__* wlr_seat; } ;
struct sway_node {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  node; } ;
struct TYPE_6__ {int /*<<< orphan*/  focused_surface; } ;
struct TYPE_7__ {TYPE_2__ keyboard_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sway_seat* FUNC1 () ; 
 TYPE_4__* root ; 
 struct sway_node* FUNC2 (struct sway_seat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_seat*,struct sway_node*) ; 
 struct sway_xwayland_unmanaged* surface ; 
 int /*<<< orphan*/  unmap ; 
 struct sway_xwayland_unmanaged* FUNC4 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct wl_listener *listener, void *data) {
	struct sway_xwayland_unmanaged *surface =
		FUNC4(listener, surface, unmap);
	struct wlr_xwayland_surface *xsurface = surface->wlr_xwayland_surface;
	FUNC0(xsurface->surface, xsurface->x, xsurface->y, true);
	FUNC5(&surface->link);
	FUNC5(&surface->commit.link);

	struct sway_seat *seat = FUNC1();
	if (seat->wlr_seat->keyboard_state.focused_surface ==
			xsurface->surface) {
		// Restore focus
		struct sway_node *previous = FUNC2(seat, &root->node);
		if (previous) {
			// Hack to get seat to re-focus the return value of get_focus
			FUNC3(seat, NULL);
			FUNC3(seat, previous);
		}
	}
}