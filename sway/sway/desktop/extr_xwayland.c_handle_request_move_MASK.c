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
struct wlr_xwayland_surface {int /*<<< orphan*/  mapped; } ;
struct wl_listener {int dummy; } ;
struct sway_view {int /*<<< orphan*/  container; struct wlr_xwayland_surface* wlr_xwayland_surface; } ;
struct sway_xwayland_view {struct sway_view view; } ;
struct sway_seat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sway_seat* FUNC1 () ; 
 int /*<<< orphan*/  request_move ; 
 int /*<<< orphan*/  FUNC2 (struct sway_seat*,int /*<<< orphan*/ ) ; 
 struct sway_xwayland_view* FUNC3 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sway_xwayland_view* xwayland_view ; 

__attribute__((used)) static void FUNC4(struct wl_listener *listener, void *data) {
	struct sway_xwayland_view *xwayland_view =
		FUNC3(listener, xwayland_view, request_move);
	struct sway_view *view = &xwayland_view->view;
	struct wlr_xwayland_surface *xsurface = view->wlr_xwayland_surface;
	if (!xsurface->mapped) {
		return;
	}
	if (!FUNC0(view->container)) {
		return;
	}
	struct sway_seat *seat = FUNC1();
	FUNC2(seat, view->container);
}