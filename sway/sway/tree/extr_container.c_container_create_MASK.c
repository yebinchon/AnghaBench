#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sway_view {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  destroy; } ;
struct TYPE_5__ {void* children; } ;
struct sway_container {float alpha; int /*<<< orphan*/  node; TYPE_2__ events; void* outputs; void* marks; TYPE_1__ current; void* children; struct sway_view* view; int /*<<< orphan*/  layout; } ;
struct TYPE_7__ {int /*<<< orphan*/  new_node; } ;
struct TYPE_8__ {TYPE_3__ events; } ;

/* Variables and functions */
 int /*<<< orphan*/  L_NONE ; 
 int /*<<< orphan*/  N_CONTAINER ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 struct sway_container* FUNC0 (int,int) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sway_container*) ; 
 TYPE_4__* root ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct sway_container *FUNC6(struct sway_view *view) {
	struct sway_container *c = FUNC0(1, sizeof(struct sway_container));
	if (!c) {
		FUNC3(SWAY_ERROR, "Unable to allocate sway_container");
		return NULL;
	}
	FUNC2(&c->node, N_CONTAINER, c);
	c->layout = L_NONE;
	c->view = view;
	c->alpha = 1.0f;

	if (!view) {
		c->children = FUNC1();
		c->current.children = FUNC1();
	}
	c->marks = FUNC1();
	c->outputs = FUNC1();

	FUNC5(&c->events.destroy);
	FUNC4(&root->events.new_node, &c->node);

	return c;
}