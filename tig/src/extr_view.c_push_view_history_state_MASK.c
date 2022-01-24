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
struct position {int dummy; } ;
struct view_state {struct view_state* data; struct position position; struct view_state* prev; } ;
struct view_history {scalar_t__ state_alloc; int /*<<< orphan*/  position; struct view_state* stack; } ;

/* Variables and functions */
 struct view_state* FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct view_state*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct view_state*,void*,scalar_t__) ; 

struct view_state *
FUNC4(struct view_history *history, struct position *position, void *data)
{
	struct view_state *state = history->stack;

	if (state && data && history->state_alloc &&
	    !FUNC2(state->data, data, history->state_alloc))
		return NULL;

	state = FUNC0(1, sizeof(*state) + history->state_alloc);
	if (!state)
		return NULL;

	state->prev = history->stack;
	history->stack = state;
	FUNC1(&history->position);
	state->position = *position;
	state->data = &state[1];
	if (data && history->state_alloc)
		FUNC3(state->data, data, history->state_alloc);
	return state;
}