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
 struct sway_seat_node* FUNC0 (struct sway_seat*,struct sway_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct sway_node *node, void *data) {
	struct sway_seat *seat = data;
	struct sway_seat_node *seat_node = FUNC0(seat, node);
	if (!seat_node) {
		return;
	}
	FUNC2(&seat_node->link);
	FUNC1(&seat->focus_stack, &seat_node->link);
}