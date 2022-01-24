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
struct wlr_subsurface {int dummy; } ;
struct wl_listener {int dummy; } ;
struct sway_view {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  surface_new_subsurface ; 
 struct sway_view* view ; 
 int /*<<< orphan*/  FUNC0 (struct sway_view*,struct wlr_subsurface*) ; 
 struct sway_view* FUNC1 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wl_listener *listener,
		void *data) {
	struct sway_view *view =
		FUNC1(listener, view, surface_new_subsurface);
	struct wlr_subsurface *subsurface = data;
	FUNC0(view, subsurface);
}