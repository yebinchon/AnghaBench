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
typedef  int /*<<< orphan*/  wlr_surface_iterator_func_t ;
struct sway_view {int /*<<< orphan*/  wlr_xdg_surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC1 (struct sway_view*) ; 

__attribute__((used)) static void FUNC2(struct sway_view *view,
		wlr_surface_iterator_func_t iterator, void *user_data) {
	if (FUNC1(view) == NULL) {
		return;
	}
	FUNC0(view->wlr_xdg_surface, iterator,
		user_data);
}