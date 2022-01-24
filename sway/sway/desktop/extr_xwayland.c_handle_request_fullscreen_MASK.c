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
struct wlr_xwayland_surface {int /*<<< orphan*/  fullscreen; int /*<<< orphan*/  mapped; } ;
struct wl_listener {int dummy; } ;
struct sway_view {int /*<<< orphan*/  container; struct wlr_xwayland_surface* wlr_xwayland_surface; } ;
struct sway_xwayland_view {struct sway_view view; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  request_fullscreen ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct sway_xwayland_view* FUNC3 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sway_xwayland_view* xwayland_view ; 

__attribute__((used)) static void FUNC4(struct wl_listener *listener, void *data) {
	struct sway_xwayland_view *xwayland_view =
		FUNC3(listener, xwayland_view, request_fullscreen);
	struct sway_view *view = &xwayland_view->view;
	struct wlr_xwayland_surface *xsurface = view->wlr_xwayland_surface;
	if (!xsurface->mapped) {
		return;
	}
	FUNC1(view->container, xsurface->fullscreen);

	FUNC0();
	FUNC2();
}