#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sway_view {TYPE_1__* impl; struct sway_view* title_format; int /*<<< orphan*/  executed_criteria; int /*<<< orphan*/ * container; int /*<<< orphan*/  destroying; int /*<<< orphan*/ * surface; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destroy ) (struct sway_view*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_view*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_view*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void FUNC4(struct sway_view *view) {
	if (!FUNC3(view->surface == NULL, "Tried to free mapped view")) {
		return;
	}
	if (!FUNC3(view->destroying,
				"Tried to free view which wasn't marked as destroying")) {
		return;
	}
	if (!FUNC3(view->container == NULL,
				"Tried to free view which still has a container "
				"(might have a pending transaction?)")) {
		return;
	}
	FUNC1(view->executed_criteria);

	FUNC0(view->title_format);

	if (view->impl->destroy) {
		view->impl->destroy(view);
	} else {
		FUNC0(view);
	}
}