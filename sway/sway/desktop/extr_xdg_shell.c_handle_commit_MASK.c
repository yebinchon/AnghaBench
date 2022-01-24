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
struct wlr_xdg_surface {int /*<<< orphan*/  configure_serial; } ;
struct wlr_box {scalar_t__ width; scalar_t__ height; } ;
struct wl_listener {int dummy; } ;
struct sway_view {struct wlr_box geometry; struct sway_container* container; struct wlr_xdg_surface* wlr_xdg_surface; } ;
struct sway_xdg_shell_view {struct sway_view view; } ;
struct TYPE_2__ {scalar_t__ instruction; } ;
struct sway_container {scalar_t__ surface_width; scalar_t__ surface_height; TYPE_1__ node; } ;

/* Variables and functions */
 int /*<<< orphan*/  commit ; 
 int /*<<< orphan*/  FUNC0 (struct sway_view*) ; 
 int /*<<< orphan*/  FUNC1 (struct wlr_box*,struct wlr_box*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sway_view*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_view*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_view*,scalar_t__,scalar_t__) ; 
 struct sway_xdg_shell_view* FUNC6 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wlr_xdg_surface*,struct wlr_box*) ; 
 struct sway_xdg_shell_view* xdg_shell_view ; 

__attribute__((used)) static void FUNC8(struct wl_listener *listener, void *data) {
	struct sway_xdg_shell_view *xdg_shell_view =
		FUNC6(listener, xdg_shell_view, commit);
	struct sway_view *view = &xdg_shell_view->view;
	struct wlr_xdg_surface *xdg_surface = view->wlr_xdg_surface;

	if (view->container->node.instruction) {
		FUNC7(xdg_surface, &view->geometry);
		FUNC3(view,
				xdg_surface->configure_serial);
	} else {
		struct wlr_box new_geo;
		FUNC7(xdg_surface, &new_geo);
		struct sway_container *con = view->container;

		if ((new_geo.width != con->surface_width ||
					new_geo.height != con->surface_height)) {
			// The view has unexpectedly sent a new size
			FUNC0(view);
			FUNC5(view, new_geo.width, new_geo.height);
			FUNC1(&view->geometry, &new_geo, sizeof(struct wlr_box));
			FUNC0(view);
			FUNC2();
		} else {
			FUNC1(&view->geometry, &new_geo, sizeof(struct wlr_box));
		}
	}

	FUNC4(view);
}