#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sway_seat {int dummy; } ;
struct sway_node {TYPE_1__* sway_container; } ;
struct sway_container {struct sway_node node; } ;
struct TYPE_6__ {int length; struct sway_container** items; } ;
typedef  TYPE_2__ list_t ;
struct TYPE_7__ {int /*<<< orphan*/  surface; } ;
struct TYPE_5__ {TYPE_3__* view; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 TYPE_2__* FUNC0 (struct sway_node*) ; 
 scalar_t__ FUNC1 (struct sway_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_seat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 

__attribute__((used)) static void FUNC5(struct sway_node *node, struct sway_seat *seat) {
	if (FUNC1(node)) {
		if (!FUNC2(seat, node->sway_container->view->surface)) {
			FUNC3(SWAY_DEBUG, "Refusing to set focus, input is inhibited");
			return;
		}
		FUNC4(node->sway_container->view, true);
	} else {
		list_t *children = FUNC0(node);
		for (int i = 0; i < children->length; ++i) {
			struct sway_container *child = children->items[i];
			FUNC5(&child->node, seat);
		}
	}
}