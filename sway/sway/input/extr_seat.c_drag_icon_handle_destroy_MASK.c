#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wl_listener {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  link; } ;
struct TYPE_7__ {int /*<<< orphan*/  link; } ;
struct TYPE_6__ {int /*<<< orphan*/  link; } ;
struct TYPE_10__ {int /*<<< orphan*/  link; } ;
struct sway_drag_icon {TYPE_3__ destroy; TYPE_2__ map; TYPE_1__ unmap; TYPE_5__ surface_commit; int /*<<< orphan*/  link; TYPE_4__* wlr_drag_icon; } ;
struct TYPE_9__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  destroy ; 
 int /*<<< orphan*/  FUNC0 (struct sway_drag_icon*) ; 
 struct sway_drag_icon* icon ; 
 struct sway_drag_icon* FUNC1 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct wl_listener *listener, void *data) {
	struct sway_drag_icon *icon = FUNC1(listener, icon, destroy);
	icon->wlr_drag_icon->data = NULL;
	FUNC2(&icon->link);
	FUNC2(&icon->surface_commit.link);
	FUNC2(&icon->unmap.link);
	FUNC2(&icon->map.link);
	FUNC2(&icon->destroy.link);
	FUNC0(icon);
}