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
struct wl_listener {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  link; } ;
struct sway_view {int /*<<< orphan*/  surface; } ;
struct sway_xwayland_view {TYPE_1__ commit; struct sway_view view; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  unmap ; 
 int /*<<< orphan*/  FUNC1 (struct sway_view*) ; 
 struct sway_xwayland_view* FUNC2 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sway_xwayland_view* xwayland_view ; 

__attribute__((used)) static void FUNC4(struct wl_listener *listener, void *data) {
	struct sway_xwayland_view *xwayland_view =
		FUNC2(listener, xwayland_view, unmap);
	struct sway_view *view = &xwayland_view->view;

	if (!FUNC0(view->surface, "Cannot unmap unmapped view")) {
		return;
	}

	FUNC1(view);

	FUNC3(&xwayland_view->commit.link);
}