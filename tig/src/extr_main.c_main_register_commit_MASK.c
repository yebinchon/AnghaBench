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
struct view {struct main_state* private; } ;
struct main_state {int add_changes_untracked; int add_changes_unstaged; int add_changes_staged; scalar_t__ with_graph; struct graph* graph; } ;
struct graph {int /*<<< orphan*/  (* add_commit ) (struct graph*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ;} ;
struct commit {int /*<<< orphan*/  id; int /*<<< orphan*/  graph; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct view*,struct main_state*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct graph*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC4(struct view *view, struct commit *commit, const char *ids, bool is_boundary)
{
	struct main_state *state = view->private;
	struct graph *graph = state->graph;

	FUNC2(commit->id, ids);

	/* FIXME: lazily check index state here instead of in main_open. */
	if ((state->add_changes_untracked || state->add_changes_unstaged || state->add_changes_staged) && FUNC0(commit->id)) {
		FUNC1(view, state, ids);
		state->add_changes_untracked = state->add_changes_unstaged = state->add_changes_staged = false;
	}

	if (state->with_graph)
		graph->add_commit(graph, &commit->graph, commit->id, ids, is_boundary);
}