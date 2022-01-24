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
struct sway_workspace_state {int focused; struct sway_container* focused_inactive_child; void* tiling; void* floating; int /*<<< orphan*/  output; int /*<<< orphan*/  layout; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  fullscreen; } ;
struct sway_workspace {int /*<<< orphan*/  node; int /*<<< orphan*/  tiling; int /*<<< orphan*/  floating; int /*<<< orphan*/  output; int /*<<< orphan*/  layout; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  fullscreen; } ;
struct sway_transaction_instruction {struct sway_workspace_state workspace_state; } ;
struct sway_seat {int dummy; } ;
struct sway_container {struct sway_container* parent; } ;

/* Variables and functions */
 void* FUNC0 () ; 
 struct sway_seat* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct sway_seat*) ; 
 struct sway_container* FUNC4 (struct sway_seat*,struct sway_workspace*) ; 

__attribute__((used)) static void FUNC5(struct sway_workspace *ws,
		struct sway_transaction_instruction *instruction) {
	struct sway_workspace_state *state = &instruction->workspace_state;

	state->fullscreen = ws->fullscreen;
	state->x = ws->x;
	state->y = ws->y;
	state->width = ws->width;
	state->height = ws->height;
	state->layout = ws->layout;

	state->output = ws->output;
	state->floating = FUNC0();
	state->tiling = FUNC0();
	FUNC2(state->floating, ws->floating);
	FUNC2(state->tiling, ws->tiling);

	struct sway_seat *seat = FUNC1();
	state->focused = FUNC3(seat) == &ws->node;

	// Set focused_inactive_child to the direct tiling child
	struct sway_container *focus = FUNC4(seat, ws);
	if (focus) {
		while (focus->parent) {
			focus = focus->parent;
		}
	}
	state->focused_inactive_child = focus;
}