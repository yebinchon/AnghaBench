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
struct wlr_box {int dummy; } ;
struct sway_cursor {TYPE_1__* cursor; } ;
struct sway_container {double x; double width; double y; double height; } ;
struct TYPE_2__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_container*,struct wlr_box*) ; 
 scalar_t__ FUNC1 (struct wlr_box*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,double,double) ; 

void FUNC3(struct sway_cursor *cursor,
		struct sway_container *container) {
	if (!container) {
		return;
	}

	struct wlr_box box;
	FUNC0(container, &box);
	if (FUNC1(&box, cursor->cursor->x, cursor->cursor->y)) {
		return;
	}

	double x = container->x + container->width / 2.0;
	double y = container->y + container->height / 2.0;

	FUNC2(cursor->cursor, NULL, x, y);
}