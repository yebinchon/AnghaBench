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
struct view {int /*<<< orphan*/  watch; } ;
struct main_state {int add_changes_untracked; int add_changes_unstaged; int add_changes_staged; } ;
struct index_diff {int /*<<< orphan*/  staged; int /*<<< orphan*/  unstaged; int /*<<< orphan*/  untracked; } ;

/* Variables and functions */
 int /*<<< orphan*/  WATCH_INDEX_STAGED_NO ; 
 int /*<<< orphan*/  WATCH_INDEX_STAGED_YES ; 
 int /*<<< orphan*/  WATCH_INDEX_UNSTAGED_NO ; 
 int /*<<< orphan*/  WATCH_INDEX_UNSTAGED_YES ; 
 int /*<<< orphan*/  WATCH_INDEX_UNTRACKED_NO ; 
 int /*<<< orphan*/  WATCH_INDEX_UNTRACKED_YES ; 
 int /*<<< orphan*/  FUNC0 (struct index_diff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  opt_show_untracked ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(struct view *view, struct main_state *state)
{
	struct index_diff diff;

	if (!FUNC0(&diff, opt_show_untracked, false))
		return false;

	if (!diff.untracked) {
		FUNC1(&view->watch, WATCH_INDEX_UNTRACKED_NO);
	} else {
		FUNC1(&view->watch, WATCH_INDEX_UNTRACKED_YES);
		state->add_changes_untracked = true;
	}

	if (!diff.unstaged) {
		FUNC1(&view->watch, WATCH_INDEX_UNSTAGED_NO);
	} else {
		FUNC1(&view->watch, WATCH_INDEX_UNSTAGED_YES);
		state->add_changes_unstaged = true;
	}

	if (!diff.staged) {
		FUNC1(&view->watch, WATCH_INDEX_STAGED_NO);
	} else {
		FUNC1(&view->watch, WATCH_INDEX_STAGED_YES);
		state->add_changes_staged = true;
	}

	return true;
}