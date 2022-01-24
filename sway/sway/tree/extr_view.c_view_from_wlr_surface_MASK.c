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
struct wlr_xwayland_surface {int dummy; } ;
struct wlr_xdg_surface {int dummy; } ;
struct wlr_surface {TYPE_1__* role; } ;
struct wlr_subsurface {struct wlr_surface* parent; } ;
struct sway_view {int dummy; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,struct wlr_surface*) ; 
 struct sway_view* FUNC1 (struct wlr_xdg_surface*) ; 
 struct sway_view* FUNC2 (struct wlr_xwayland_surface*) ; 
 struct wlr_subsurface* FUNC3 (struct wlr_surface*) ; 
 scalar_t__ FUNC4 (struct wlr_surface*) ; 
 scalar_t__ FUNC5 (struct wlr_surface*) ; 
 scalar_t__ FUNC6 (struct wlr_surface*) ; 
 scalar_t__ FUNC7 (struct wlr_surface*) ; 
 struct wlr_xdg_surface* FUNC8 (struct wlr_surface*) ; 
 struct wlr_xwayland_surface* FUNC9 (struct wlr_surface*) ; 

struct sway_view *FUNC10(struct wlr_surface *wlr_surface) {
	if (FUNC6(wlr_surface)) {
		struct wlr_xdg_surface *xdg_surface =
			FUNC8(wlr_surface);
		return FUNC1(xdg_surface);
	}
#if HAVE_XWAYLAND
	if (wlr_surface_is_xwayland_surface(wlr_surface)) {
		struct wlr_xwayland_surface *xsurface =
			wlr_xwayland_surface_from_wlr_surface(wlr_surface);
		return view_from_wlr_xwayland_surface(xsurface);
	}
#endif
	if (FUNC5(wlr_surface)) {
		struct wlr_subsurface *subsurface =
			FUNC3(wlr_surface);
		return FUNC10(subsurface->parent);
	}
	if (FUNC4(wlr_surface)) {
		return NULL;
	}

	const char *role = wlr_surface->role ? wlr_surface->role->name : NULL;
	FUNC0(SWAY_DEBUG, "Surface of unknown type (role %s): %p",
		role, wlr_surface);
	return NULL;
}