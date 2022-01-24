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
struct wlr_box {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct sway_node {int dummy; } ;
struct sway_container {int /*<<< orphan*/  node; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_3__ {int length; struct sway_container** items; } ;
typedef  TYPE_1__ list_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sway_node*) ; 
 struct sway_container* FUNC1 (int /*<<< orphan*/ *,double,double,struct wlr_surface**,double*,double*) ; 
 scalar_t__ FUNC2 (struct wlr_box*,double,double) ; 

__attribute__((used)) static struct sway_container *FUNC3(struct sway_node *parent,
		double lx, double ly,
		struct wlr_surface **surface, double *sx, double *sy) {
	list_t *children = FUNC0(parent);
	for (int i = 0; i < children->length; ++i) {
		struct sway_container *child = children->items[i];
		struct wlr_box box = {
			.x = child->x,
			.y = child->y,
			.width = child->width,
			.height = child->height,
		};
		if (FUNC2(&box, lx, ly)) {
			return FUNC1(&child->node, lx, ly, surface, sx, sy);
		}
	}
	return NULL;
}