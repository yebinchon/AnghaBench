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
struct wlr_xdg_surface {int dummy; } ;
struct sway_view {struct wlr_xdg_surface* wlr_xdg_surface; } ;
typedef  enum wlr_edges { ____Placeholder_wlr_edges } wlr_edges ;

/* Variables and functions */
 int WLR_EDGE_BOTTOM ; 
 int WLR_EDGE_LEFT ; 
 int WLR_EDGE_NONE ; 
 int WLR_EDGE_RIGHT ; 
 int WLR_EDGE_TOP ; 
 int /*<<< orphan*/  FUNC0 (struct wlr_xdg_surface*,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct sway_view*) ; 

__attribute__((used)) static void FUNC2(struct sway_view *view, bool tiled) {
	if (FUNC1(view) == NULL) {
		return;
	}
	struct wlr_xdg_surface *surface = view->wlr_xdg_surface;
	enum wlr_edges edges = WLR_EDGE_NONE;
	if (tiled) {
		edges = WLR_EDGE_LEFT | WLR_EDGE_RIGHT | WLR_EDGE_TOP |
				WLR_EDGE_BOTTOM;
	}
	FUNC0(surface, edges);
}