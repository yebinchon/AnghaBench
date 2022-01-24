#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  unmap; int /*<<< orphan*/  map; int /*<<< orphan*/  destroy; int /*<<< orphan*/  new_popup; } ;
struct wlr_xdg_surface {TYPE_1__ events; int /*<<< orphan*/  surface; } ;
struct wlr_xdg_popup {struct wlr_xdg_surface* base; } ;
struct TYPE_5__ {int /*<<< orphan*/  notify; } ;
struct TYPE_6__ {TYPE_2__ surface_unmap; TYPE_2__ surface_map; } ;
struct sway_xdg_popup {TYPE_3__ child; TYPE_2__ destroy; TYPE_2__ new_popup; struct wlr_xdg_surface* wlr_xdg_surface; } ;
struct sway_view {int dummy; } ;

/* Variables and functions */
 struct sway_xdg_popup* FUNC0 (int,int) ; 
 int /*<<< orphan*/  popup_handle_destroy ; 
 int /*<<< orphan*/  popup_handle_new_popup ; 
 int /*<<< orphan*/  popup_impl ; 
 int /*<<< orphan*/  FUNC1 (struct sway_xdg_popup*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,struct sway_view*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static struct sway_xdg_popup *FUNC4(
		struct wlr_xdg_popup *wlr_popup, struct sway_view *view) {
	struct wlr_xdg_surface *xdg_surface = wlr_popup->base;

	struct sway_xdg_popup *popup =
		FUNC0(1, sizeof(struct sway_xdg_popup));
	if (popup == NULL) {
		return NULL;
	}
	FUNC2(&popup->child, &popup_impl, view, xdg_surface->surface);
	popup->wlr_xdg_surface = xdg_surface;

	FUNC3(&xdg_surface->events.new_popup, &popup->new_popup);
	popup->new_popup.notify = popup_handle_new_popup;
	FUNC3(&xdg_surface->events.destroy, &popup->destroy);
	popup->destroy.notify = popup_handle_destroy;

	FUNC3(&xdg_surface->events.map, &popup->child.surface_map);
	FUNC3(&xdg_surface->events.unmap, &popup->child.surface_unmap);

	FUNC1(popup);

	return popup;
}