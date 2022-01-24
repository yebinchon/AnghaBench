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
struct sway_view_child {int dummy; } ;
struct sway_subsurface {struct sway_view_child child; } ;

/* Variables and functions */
 int /*<<< orphan*/  destroy ; 
 struct sway_subsurface* subsurface ; 
 int /*<<< orphan*/  FUNC0 (struct sway_view_child*) ; 
 struct sway_subsurface* FUNC1 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wl_listener *listener,
		void *data) {
	struct sway_subsurface *subsurface =
		FUNC1(listener, subsurface, destroy);
	struct sway_view_child *child = &subsurface->child;
	FUNC0(child);
}