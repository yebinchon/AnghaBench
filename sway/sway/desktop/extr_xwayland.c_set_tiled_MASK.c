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
struct wlr_xwayland_surface {int dummy; } ;
struct sway_view {struct wlr_xwayland_surface* wlr_xwayland_surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wlr_xwayland_surface*,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct sway_view*) ; 

__attribute__((used)) static void FUNC2(struct sway_view *view, bool tiled) {
	if (FUNC1(view) == NULL) {
		return;
	}
	struct wlr_xwayland_surface *surface = view->wlr_xwayland_surface;
	FUNC0(surface, tiled);
}