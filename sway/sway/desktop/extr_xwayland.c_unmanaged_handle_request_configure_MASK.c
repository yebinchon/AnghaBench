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
struct wlr_xwayland_surface_configure_event {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct wlr_xwayland_surface {int dummy; } ;
struct wl_listener {int dummy; } ;
struct sway_xwayland_unmanaged {struct wlr_xwayland_surface* wlr_xwayland_surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  request_configure ; 
 struct sway_xwayland_unmanaged* surface ; 
 struct sway_xwayland_unmanaged* FUNC0 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wlr_xwayland_surface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wl_listener *listener,
		void *data) {
	struct sway_xwayland_unmanaged *surface =
		FUNC0(listener, surface, request_configure);
	struct wlr_xwayland_surface *xsurface = surface->wlr_xwayland_surface;
	struct wlr_xwayland_surface_configure_event *ev = data;
	FUNC1(xsurface, ev->x, ev->y,
		ev->width, ev->height);
}