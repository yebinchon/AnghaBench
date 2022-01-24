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
struct wl_listener {int dummy; } ;
struct sway_view {int dummy; } ;
struct sway_xdg_shell_view {struct sway_view view; } ;

/* Variables and functions */
 int /*<<< orphan*/  set_title ; 
 int /*<<< orphan*/  FUNC0 (struct sway_view*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_view*,int) ; 
 struct sway_xdg_shell_view* FUNC2 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sway_xdg_shell_view* xdg_shell_view ; 

__attribute__((used)) static void FUNC3(struct wl_listener *listener, void *data) {
	struct sway_xdg_shell_view *xdg_shell_view =
		FUNC2(listener, xdg_shell_view, set_title);
	struct sway_view *view = &xdg_shell_view->view;
	FUNC1(view, false);
	FUNC0(view);
}