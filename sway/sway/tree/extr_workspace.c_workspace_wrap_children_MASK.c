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
struct sway_workspace {struct sway_container* fullscreen; TYPE_1__* tiling; int /*<<< orphan*/  layout; } ;
struct sway_container {int /*<<< orphan*/  layout; } ;
struct TYPE_2__ {struct sway_container** items; scalar_t__ length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_container*,struct sway_container*) ; 
 struct sway_container* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_workspace*,struct sway_container*) ; 

struct sway_container *FUNC4(struct sway_workspace *ws) {
	struct sway_container *fs = ws->fullscreen;
	struct sway_container *middle = FUNC1(NULL);
	middle->layout = ws->layout;
	while (ws->tiling->length) {
		struct sway_container *child = ws->tiling->items[0];
		FUNC2(child);
		FUNC0(middle, child);
	}
	FUNC3(ws, middle);
	ws->fullscreen = fs;
	return middle;
}