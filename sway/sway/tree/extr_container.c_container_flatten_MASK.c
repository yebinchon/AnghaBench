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
struct sway_container {struct sway_container* parent; TYPE_1__* children; scalar_t__ view; } ;
struct TYPE_2__ {int length; struct sway_container** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*,struct sway_container*) ; 

struct sway_container *FUNC2(struct sway_container *container) {
	if (container->view) {
		return NULL;
	}
	while (container && container->children->length == 1) {
		struct sway_container *child = container->children->items[0];
		struct sway_container *parent = container->parent;
		FUNC1(container, child);
		FUNC0(container);
		container = parent;
	}
	return container;
}