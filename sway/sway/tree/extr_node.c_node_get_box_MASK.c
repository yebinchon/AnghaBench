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
struct wlr_box {int dummy; } ;
struct sway_node {int type; int /*<<< orphan*/  sway_container; int /*<<< orphan*/  sway_workspace; int /*<<< orphan*/  sway_output; } ;

/* Variables and functions */
#define  N_CONTAINER 131 
#define  N_OUTPUT 130 
#define  N_ROOT 129 
#define  N_WORKSPACE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wlr_box*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wlr_box*) ; 
 int /*<<< orphan*/  root ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct wlr_box*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct wlr_box*) ; 

void FUNC4(struct sway_node *node, struct wlr_box *box) {
	switch (node->type) {
	case N_ROOT:
		FUNC2(root, box);
		break;
	case N_OUTPUT:
		FUNC1(node->sway_output, box);
		break;
	case N_WORKSPACE:
		FUNC3(node->sway_workspace, box);
		break;
	case N_CONTAINER:
		FUNC0(node->sway_container, box);
		break;
	}
}