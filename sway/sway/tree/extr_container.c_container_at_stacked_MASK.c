#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wlr_surface {int dummy; } ;
struct wlr_box {double y; double height; } ;
struct sway_seat {int dummy; } ;
struct sway_node {int dummy; } ;
struct sway_container {int dummy; } ;
struct TYPE_3__ {int length; struct sway_container** items; } ;
typedef  TYPE_1__ list_t ;

/* Variables and functions */
 int FUNC0 () ; 
 struct sway_seat* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sway_node*,struct wlr_box*) ; 
 TYPE_1__* FUNC3 (struct sway_node*) ; 
 struct sway_node* FUNC4 (struct sway_seat*,struct sway_node*) ; 
 struct sway_container* FUNC5 (struct sway_node*,double,double,struct wlr_surface**,double*,double*) ; 

__attribute__((used)) static struct sway_container *FUNC6(struct sway_node *parent,
		double lx, double ly,
		struct wlr_surface **surface, double *sx, double *sy) {
	struct wlr_box box;
	FUNC2(parent, &box);
	if (ly < box.y || ly > box.y + box.height) {
		return NULL;
	}
	struct sway_seat *seat = FUNC1();
	list_t *children = FUNC3(parent);

	// Title bars
	int title_height = FUNC0();
	if (title_height > 0) {
		int child_index = (ly - box.y) / title_height;
		if (child_index < children->length) {
			struct sway_container *child = children->items[child_index];
			return child;
		}
	}

	// Surfaces
	struct sway_node *current = FUNC4(seat, parent);
	return current ? FUNC5(current, lx, ly, surface, sx, sy) : NULL;
}