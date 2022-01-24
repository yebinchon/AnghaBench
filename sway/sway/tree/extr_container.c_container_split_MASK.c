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
struct sway_seat {int dummy; } ;
struct sway_container {int layout; scalar_t__ fullscreen_mode; int /*<<< orphan*/  node; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  height_fraction; int /*<<< orphan*/  width_fraction; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;

/* Variables and functions */
 scalar_t__ FULLSCREEN_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (struct sway_container*,struct sway_container*) ; 
 struct sway_container* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*,struct sway_container*) ; 
 struct sway_seat* FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_seat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_seat*,int /*<<< orphan*/ *) ; 

struct sway_container *FUNC7(struct sway_container *child,
		enum sway_container_layout layout) {
	struct sway_seat *seat = FUNC3();
	bool set_focus = (FUNC4(seat) == &child->node);

	struct sway_container *cont = FUNC1(NULL);
	cont->width = child->width;
	cont->height = child->height;
	cont->width_fraction = child->width_fraction;
	cont->height_fraction = child->height_fraction;
	cont->x = child->x;
	cont->y = child->y;
	cont->layout = layout;

	FUNC2(child, cont);
	FUNC0(cont, child);

	if (set_focus) {
		FUNC6(seat, &cont->node);
		if (cont->fullscreen_mode == FULLSCREEN_GLOBAL) {
			FUNC5(seat, &child->node);
		} else {
			FUNC6(seat, &child->node);
		}
	}

	return cont;
}