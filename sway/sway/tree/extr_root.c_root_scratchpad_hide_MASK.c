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
struct sway_workspace {int /*<<< orphan*/  node; } ;
struct sway_seat {int dummy; } ;
struct sway_node {int dummy; } ;
struct sway_container {scalar_t__ fullscreen_mode; struct sway_node node; struct sway_workspace* workspace; } ;
struct TYPE_2__ {int /*<<< orphan*/  scratchpad; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 scalar_t__ FULLSCREEN_GLOBAL ; 
 scalar_t__ FULLSCREEN_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 struct sway_seat* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sway_container*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sway_container*) ; 
 scalar_t__ FUNC6 (struct sway_node*,struct sway_node*) ; 
 TYPE_1__* root ; 
 struct sway_node* FUNC7 (struct sway_seat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sway_seat*,struct sway_node*) ; 

void FUNC9(struct sway_container *con) {
	struct sway_seat *seat = FUNC3();
	struct sway_node *focus = FUNC7(seat, &root->node);
	struct sway_workspace *ws = con->workspace;

	if (con->fullscreen_mode == FULLSCREEN_GLOBAL && !con->workspace) {
		// If the container was made fullscreen global while in the scratchpad,
		// it should be shown until fullscreen has been disabled
		return;
	}

	if (con->fullscreen_mode != FULLSCREEN_NONE) {
		FUNC2(con);
	}
	FUNC1(con);
	FUNC0(ws);
	if (&con->node == focus || FUNC6(focus, &con->node)) {
		FUNC8(seat, FUNC7(seat, &ws->node));
	}
	FUNC5(root->scratchpad, con);

	FUNC4(con, "move");
}