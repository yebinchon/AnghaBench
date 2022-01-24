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
struct wlr_xdg_surface {scalar_t__ role; TYPE_1__* toplevel; } ;
struct wlr_surface {int dummy; } ;
struct TYPE_2__ {struct wlr_xdg_surface* parent; } ;

/* Variables and functions */
 scalar_t__ WLR_XDG_SURFACE_ROLE_NONE ; 
 scalar_t__ WLR_XDG_SURFACE_ROLE_POPUP ; 
 scalar_t__ FUNC0 (struct wlr_surface*) ; 
 struct wlr_xdg_surface* FUNC1 (struct wlr_surface*) ; 

__attribute__((used)) static bool FUNC2(struct wlr_surface *surface) {
	if (FUNC0(surface)) {
		struct wlr_xdg_surface *xdg_surface =
			FUNC1(surface);
		while (xdg_surface && xdg_surface->role != WLR_XDG_SURFACE_ROLE_NONE) {
			if (xdg_surface->role == WLR_XDG_SURFACE_ROLE_POPUP) {
				return true;
			}
			xdg_surface = xdg_surface->toplevel->parent;
		}
		return false;
	}

	return false;
}