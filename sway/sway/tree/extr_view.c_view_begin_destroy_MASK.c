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
struct sway_view {int destroying; int /*<<< orphan*/  container; int /*<<< orphan*/ * surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_view*) ; 

void FUNC2(struct sway_view *view) {
	if (!FUNC0(view->surface == NULL, "Tried to destroy a mapped view")) {
		return;
	}
	view->destroying = true;

	if (!view->container) {
		FUNC1(view);
	}
}