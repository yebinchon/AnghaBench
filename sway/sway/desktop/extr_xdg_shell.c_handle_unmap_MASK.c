#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct wl_listener {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  link; } ;
struct TYPE_13__ {int /*<<< orphan*/  link; } ;
struct TYPE_12__ {int /*<<< orphan*/  link; } ;
struct TYPE_11__ {int /*<<< orphan*/  link; } ;
struct TYPE_10__ {int /*<<< orphan*/  link; } ;
struct TYPE_9__ {int /*<<< orphan*/  link; } ;
struct TYPE_8__ {int /*<<< orphan*/  link; } ;
struct sway_view {int /*<<< orphan*/  surface; } ;
struct sway_xdg_shell_view {TYPE_7__ set_app_id; TYPE_6__ set_title; TYPE_5__ request_resize; TYPE_4__ request_move; TYPE_3__ request_fullscreen; TYPE_2__ new_popup; TYPE_1__ commit; struct sway_view view; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  unmap ; 
 int /*<<< orphan*/  FUNC1 (struct sway_view*) ; 
 struct sway_xdg_shell_view* FUNC2 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sway_xdg_shell_view* xdg_shell_view ; 

__attribute__((used)) static void FUNC4(struct wl_listener *listener, void *data) {
	struct sway_xdg_shell_view *xdg_shell_view =
		FUNC2(listener, xdg_shell_view, unmap);
	struct sway_view *view = &xdg_shell_view->view;

	if (!FUNC0(view->surface, "Cannot unmap unmapped view")) {
		return;
	}

	FUNC1(view);

	FUNC3(&xdg_shell_view->commit.link);
	FUNC3(&xdg_shell_view->new_popup.link);
	FUNC3(&xdg_shell_view->request_fullscreen.link);
	FUNC3(&xdg_shell_view->request_move.link);
	FUNC3(&xdg_shell_view->request_resize.link);
	FUNC3(&xdg_shell_view->set_title.link);
	FUNC3(&xdg_shell_view->set_app_id.link);
}