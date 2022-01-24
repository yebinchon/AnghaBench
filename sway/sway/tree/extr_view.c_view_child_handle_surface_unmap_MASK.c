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
struct sway_view_child {int mapped; } ;

/* Variables and functions */
 struct sway_view_child* child ; 
 int /*<<< orphan*/  surface_unmap ; 
 int /*<<< orphan*/  FUNC0 (struct sway_view_child*,int) ; 
 struct sway_view_child* FUNC1 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wl_listener *listener,
		void *data) {
	struct sway_view_child *child =
		FUNC1(listener, child, surface_unmap);
	FUNC0(child, true);
	child->mapped = false;
}