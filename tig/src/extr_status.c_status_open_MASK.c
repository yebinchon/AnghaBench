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
struct view {int /*<<< orphan*/  watch; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_2__ {scalar_t__* worktree; scalar_t__ is_inside_work_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_HEADER ; 
 int /*<<< orphan*/  LINE_STAT_STAGED ; 
 int /*<<< orphan*/  LINE_STAT_UNSTAGED ; 
 int SUCCESS ; 
 int /*<<< orphan*/  WATCH_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct view*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 TYPE_1__ repo ; 
 int /*<<< orphan*/  FUNC3 (struct view*) ; 
 int /*<<< orphan*/  show_untracked_only ; 
 char const** status_diff_files_argv ; 
 char const** status_diff_index_argv ; 
 char const** status_list_no_head_argv ; 
 int /*<<< orphan*/  FUNC4 (struct view*) ; 
 int /*<<< orphan*/  FUNC5 (struct view*) ; 
 int /*<<< orphan*/  FUNC6 (struct view*,char const**,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum status_code
FUNC10(struct view *view, enum open_flags flags)
{
	const char **staged_argv = FUNC2() ?
		status_list_no_head_argv : status_diff_index_argv;
	char staged_status = staged_argv == status_list_no_head_argv ? 'A' : 0;

	if (!(repo.is_inside_work_tree || *repo.worktree))
		return FUNC1("The status view requires a working tree");

	FUNC3(view);

	/* FIXME: Watch untracked files and on-branch info. */
	FUNC9(&view->watch, WATCH_INDEX);

	FUNC0(view, LINE_HEADER);
	FUNC7();

	FUNC8();

	if ((!show_untracked_only && !FUNC6(view, staged_argv, staged_status, LINE_STAT_STAGED)) ||
	    (!show_untracked_only && !FUNC6(view, status_diff_files_argv, 0, LINE_STAT_UNSTAGED)) ||
	    !FUNC4(view))
		return FUNC1("Failed to load status data");

	/* Restore the exact position or use the specialized restore
	 * mode? */
	FUNC5(view);
	return SUCCESS;
}