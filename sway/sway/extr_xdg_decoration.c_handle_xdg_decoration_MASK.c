#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  request_mode; int /*<<< orphan*/  destroy; } ;
struct wlr_xdg_toplevel_decoration_v1 {TYPE_3__ events; TYPE_1__* surface; } ;
struct wl_listener {int dummy; } ;
struct TYPE_9__ {struct sway_xdg_decoration* xdg_decoration; } ;
struct sway_xdg_shell_view {TYPE_2__ view; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* notify ) (TYPE_4__*,struct wlr_xdg_toplevel_decoration_v1*) ;} ;
struct sway_xdg_decoration {TYPE_4__ request_mode; int /*<<< orphan*/  link; TYPE_4__ destroy; struct wlr_xdg_toplevel_decoration_v1* wlr_xdg_decoration; TYPE_2__* view; } ;
struct TYPE_12__ {int /*<<< orphan*/  xdg_decorations; } ;
struct TYPE_8__ {struct sway_xdg_shell_view* data; } ;

/* Variables and functions */
 struct sway_xdg_decoration* FUNC0 (int,int) ; 
 TYPE_7__ server ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,struct wlr_xdg_toplevel_decoration_v1*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,struct wlr_xdg_toplevel_decoration_v1*) ; 

void FUNC5(struct wl_listener *listener, void *data) {
	struct wlr_xdg_toplevel_decoration_v1 *wlr_deco = data;
	struct sway_xdg_shell_view *xdg_shell_view = wlr_deco->surface->data;

	struct sway_xdg_decoration *deco = FUNC0(1, sizeof(*deco));
	if (deco == NULL) {
		return;
	}

	deco->view = &xdg_shell_view->view;
	deco->view->xdg_decoration = deco;
	deco->wlr_xdg_decoration = wlr_deco;

	FUNC2(&wlr_deco->events.destroy, &deco->destroy);
	deco->destroy.notify = xdg_decoration_handle_destroy;

	FUNC2(&wlr_deco->events.request_mode, &deco->request_mode);
	deco->request_mode.notify = xdg_decoration_handle_request_mode;

	FUNC1(&server.xdg_decorations, &deco->link);

	FUNC4(&deco->request_mode, wlr_deco);
}