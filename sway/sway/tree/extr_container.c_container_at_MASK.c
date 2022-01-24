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
struct wlr_surface {int dummy; } ;
struct sway_workspace {int /*<<< orphan*/  node; } ;
struct sway_seat {int dummy; } ;
struct sway_container {scalar_t__ view; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sway_container*) ; 
 struct sway_container* FUNC1 (double,double,struct wlr_surface**,double*,double*) ; 
 struct sway_seat* FUNC2 () ; 
 struct sway_container* FUNC3 (struct sway_seat*) ; 
 struct sway_container* FUNC4 (struct sway_container*,double,double,struct wlr_surface**,double*,double*) ; 
 scalar_t__ FUNC5 (struct wlr_surface*) ; 
 struct sway_container* FUNC6 (int /*<<< orphan*/ *,double,double,struct wlr_surface**,double*,double*) ; 

struct sway_container *FUNC7(struct sway_workspace *workspace,
		double lx, double ly,
		struct wlr_surface **surface, double *sx, double *sy) {
	struct sway_container *c;

	struct sway_seat *seat = FUNC2();
	struct sway_container *focus = FUNC3(seat);
	bool is_floating = focus && FUNC0(focus);
	// Focused view's popups
	if (focus && focus->view) {
		c = FUNC4(focus, lx, ly, surface, sx, sy);
		if (c && FUNC5(*surface)) {
			return c;
		}
		*surface = NULL;
	}
	// Floating
	if ((c = FUNC1(lx, ly, surface ,sx ,sy))) {
		return c;
	}
	// Tiling (focused)
	if (focus && focus->view && !is_floating) {
		if ((c = FUNC4(focus, lx, ly, surface, sx, sy))) {
			return c;
		}
	}
	// Tiling (non-focused)
	if ((c = FUNC6(&workspace->node, lx, ly, surface, sx, sy))) {
		return c;
	}
	return NULL;
}