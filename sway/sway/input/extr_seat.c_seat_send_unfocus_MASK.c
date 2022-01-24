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
struct sway_seat {int /*<<< orphan*/  wlr_seat; int /*<<< orphan*/  cursor; } ;
struct sway_node {scalar_t__ type; int /*<<< orphan*/  sway_container; int /*<<< orphan*/  sway_workspace; } ;

/* Variables and functions */
 scalar_t__ N_WORKSPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,struct sway_seat*),struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,struct sway_seat*),struct sway_seat*) ; 

__attribute__((used)) static void FUNC5(struct sway_node *node, struct sway_seat *seat) {
	FUNC2(seat->cursor, NULL);
	FUNC3(seat->wlr_seat);
	if (node->type == N_WORKSPACE) {
		FUNC4(node->sway_workspace, send_unfocus, seat);
	} else {
		FUNC1(node->sway_container, seat);
		FUNC0(node->sway_container, send_unfocus, seat);
	}
}