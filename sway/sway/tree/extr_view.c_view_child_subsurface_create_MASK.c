#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  destroy; } ;
struct wlr_subsurface {TYPE_1__ events; int /*<<< orphan*/  surface; } ;
struct sway_view_child {int /*<<< orphan*/  view; int /*<<< orphan*/  children; } ;
struct TYPE_7__ {int mapped; int /*<<< orphan*/  link; struct sway_view_child* parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  notify; } ;
struct sway_subsurface {TYPE_3__ child; TYPE_2__ destroy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 struct sway_subsurface* FUNC0 (int,int) ; 
 int /*<<< orphan*/  subsurface_handle_destroy ; 
 int /*<<< orphan*/  subsurface_impl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(struct sway_view_child *child,
		struct wlr_subsurface *wlr_subsurface) {
	struct sway_subsurface *subsurface =
		FUNC0(1, sizeof(struct sway_subsurface));
	if (subsurface == NULL) {
		FUNC1(SWAY_ERROR, "Allocation failed");
		return;
	}
	subsurface->child.parent = child;
	FUNC4(&child->children, &subsurface->child.link);
	FUNC3(&subsurface->child, &subsurface_impl, child->view,
		wlr_subsurface->surface);

	FUNC5(&wlr_subsurface->events.destroy, &subsurface->destroy);
	subsurface->destroy.notify = subsurface_handle_destroy;

	subsurface->child.mapped = true;

	FUNC2(&subsurface->child, true);
}