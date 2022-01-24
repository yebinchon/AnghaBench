#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  graph; } ;
struct TYPE_5__ {TYPE_1__ commit_title; } ;
struct view_column {TYPE_2__ opt; } ;
struct view {int /*<<< orphan*/  watch; struct main_state* private; } ;
struct main_state {int with_graph; int /*<<< orphan*/  graph; } ;
typedef  enum watch_trigger { ____Placeholder_watch_trigger } watch_trigger ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;
typedef  enum graph_display { ____Placeholder_graph_display } graph_display ;
struct TYPE_6__ {scalar_t__* worktree; scalar_t__ is_inside_work_tree; } ;

/* Variables and functions */
 int ERROR_OUT_OF_MEMORY ; 
 char const* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int GRAPH_DISPLAY_NO ; 
 int SUCCESS ; 
 int /*<<< orphan*/  VIEW_COLUMN_COMMIT_TITLE ; 
 int WATCH_HEAD ; 
 int WATCH_INDEX ; 
 int WATCH_NONE ; 
 int WATCH_REFS ; 
 int FUNC2 (struct view*,int /*<<< orphan*/ *,char const**,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  encoding_arg ; 
 struct view_column* FUNC4 (struct view*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct view*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct view*,struct main_state*) ; 
 int FUNC9 (struct view*,struct view_column*,int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ opt_rev_args ; 
 scalar_t__ opt_show_changes ; 
 TYPE_3__ repo ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (struct view*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static enum status_code
FUNC14(struct view *view, enum open_flags flags)
{
	struct view_column *commit_title_column = FUNC4(view, VIEW_COLUMN_COMMIT_TITLE);
	enum graph_display graph_display = FUNC9(view, commit_title_column, flags);
	const char *pretty_custom_argv[] = {
		FUNC0(encoding_arg, FUNC3(graph_display),
			"%(mainargs)", "%(cmdlineargs)", "%(revargs)", "%(fileargs)",
			FUNC11(), FUNC6())
	};
	const char *pretty_raw_argv[] = {
		FUNC1(encoding_arg, FUNC3(graph_display),
			"%(mainargs)", "%(cmdlineargs)", "%(revargs)", "%(fileargs)",
			FUNC11())
	};
	struct main_state *state = view->private;
	const char **main_argv = pretty_custom_argv;
	enum watch_trigger changes_triggers = WATCH_NONE;

	if (opt_show_changes && (repo.is_inside_work_tree || *repo.worktree))
		changes_triggers |= WATCH_INDEX;

	state->with_graph = graph_display != GRAPH_DISPLAY_NO;

	if (opt_rev_args && FUNC7(view, opt_rev_args))
		main_argv = pretty_raw_argv;

	if (state->with_graph) {
		state->graph = FUNC5(commit_title_column->opt.commit_title.graph);
		if (!state->graph)
			return ERROR_OUT_OF_MEMORY;
	}

	if (FUNC10(flags)) {
		changes_triggers = WATCH_NONE;
	}

	{
		/* This calls reset_view() so must be before adding changes commits. */
		enum status_code code = FUNC2(view, NULL, main_argv, flags);

		if (code != SUCCESS)
			return code;
	}

	/* Register watch before changes commits are added to record the
	 * start. */
	if (FUNC12(view))
		FUNC13(&view->watch, WATCH_HEAD | WATCH_REFS | changes_triggers);

	if (changes_triggers)
		FUNC8(view, state);

	return SUCCESS;
}