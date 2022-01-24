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
struct sway_seat_node {int /*<<< orphan*/  link; } ;
struct sway_seat {int /*<<< orphan*/  focus_stack; } ;
struct sway_node {int dummy; } ;

/* Variables and functions */
 struct sway_node* FUNC0 (struct sway_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_node*) ; 
 struct sway_seat_node* FUNC2 (struct sway_seat*,struct sway_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct sway_seat *seat, struct sway_node *node) {
	struct sway_seat_node *seat_node = FUNC2(seat, node);
	FUNC4(&seat_node->link);
	FUNC3(&seat->focus_stack, &seat_node->link);
	FUNC1(node);

	// If focusing a scratchpad container that is fullscreen global, parent
	// will be NULL
	struct sway_node *parent = FUNC0(node);
	if (parent) {
		FUNC1(parent);
	}
}