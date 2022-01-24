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
struct wl_listener {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  link; } ;
struct TYPE_5__ {int /*<<< orphan*/  link; } ;
struct TYPE_4__ {int /*<<< orphan*/  link; } ;
struct sway_xwayland_unmanaged {TYPE_3__ destroy; TYPE_2__ unmap; TYPE_1__ map; } ;

/* Variables and functions */
 int /*<<< orphan*/  destroy ; 
 int /*<<< orphan*/  FUNC0 (struct sway_xwayland_unmanaged*) ; 
 struct sway_xwayland_unmanaged* surface ; 
 struct sway_xwayland_unmanaged* FUNC1 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct wl_listener *listener, void *data) {
	struct sway_xwayland_unmanaged *surface =
		FUNC1(listener, surface, destroy);
	FUNC2(&surface->map.link);
	FUNC2(&surface->unmap.link);
	FUNC2(&surface->destroy.link);
	FUNC0(surface);
}