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
struct wlr_xdg_popup {int dummy; } ;
struct wl_listener {int dummy; } ;
struct sway_xdg_shell_view {int /*<<< orphan*/  view; } ;

/* Variables and functions */
 int /*<<< orphan*/  new_popup ; 
 int /*<<< orphan*/  FUNC0 (struct wlr_xdg_popup*,int /*<<< orphan*/ *) ; 
 struct sway_xdg_shell_view* FUNC1 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sway_xdg_shell_view* xdg_shell_view ; 

__attribute__((used)) static void FUNC2(struct wl_listener *listener, void *data) {
	struct sway_xdg_shell_view *xdg_shell_view =
		FUNC1(listener, xdg_shell_view, new_popup);
	struct wlr_xdg_popup *wlr_popup = data;
	FUNC0(wlr_popup, &xdg_shell_view->view);
}