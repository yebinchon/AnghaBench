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
struct wlr_xwayland_surface {scalar_t__ x; scalar_t__ y; int /*<<< orphan*/  surface; } ;
struct wl_listener {int dummy; } ;
struct sway_xwayland_unmanaged {scalar_t__ lx; scalar_t__ ly; struct wlr_xwayland_surface* wlr_xwayland_surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  commit ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 struct sway_xwayland_unmanaged* surface ; 
 struct sway_xwayland_unmanaged* FUNC1 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wl_listener *listener, void *data) {
	struct sway_xwayland_unmanaged *surface =
		FUNC1(listener, surface, commit);
	struct wlr_xwayland_surface *xsurface = surface->wlr_xwayland_surface;

	if (xsurface->x != surface->lx || xsurface->y != surface->ly) {
		// Surface has moved
		FUNC0(xsurface->surface, surface->lx, surface->ly,
			true);
		surface->lx = xsurface->x;
		surface->ly = xsurface->y;
		FUNC0(xsurface->surface, surface->lx, surface->ly,
			true);
	} else {
		FUNC0(xsurface->surface, xsurface->x, xsurface->y,
			false);
	}
}