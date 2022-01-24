#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct view {scalar_t__ parent; TYPE_2__* env; int /*<<< orphan*/  line; } ;
struct line {int /*<<< orphan*/  type; } ;
typedef  enum request { ____Placeholder_request } request ;
struct TYPE_5__ {int /*<<< orphan*/ * name; } ;
struct TYPE_7__ {char status; TYPE_1__ new; } ;
struct TYPE_6__ {int /*<<< orphan*/  goto_lineno; int /*<<< orphan*/ * ref; int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_DIFF_ADD ; 
 int /*<<< orphan*/  LINE_DIFF_CHUNK ; 
 int /*<<< orphan*/  LINE_DIFF_DEL ; 
 scalar_t__ LINE_STAT_UNTRACKED ; 
#define  REQ_EDIT 135 
#define  REQ_ENTER 134 
 int REQ_NONE ; 
#define  REQ_REFRESH 133 
#define  REQ_STAGE_SPLIT_CHUNK 132 
#define  REQ_STAGE_UPDATE_LINE 131 
#define  REQ_STATUS_REVERT 130 
#define  REQ_STATUS_UPDATE 129 
#define  REQ_VIEW_BLAME 128 
 int REQ_VIEW_CLOSE ; 
 int FUNC0 (struct view*,int,struct line*) ; 
 int FUNC1 (struct view*,int,struct line*) ; 
 int /*<<< orphan*/  FUNC2 (struct view*,struct line*) ; 
 char* FUNC3 (struct view*,struct line*) ; 
 struct line* FUNC4 (struct view*,struct line*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct view*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct view*,struct line*) ; 
 int /*<<< orphan*/  FUNC10 (struct view*,TYPE_3__*,scalar_t__) ; 
 scalar_t__ stage_line_type ; 
 int /*<<< orphan*/  FUNC11 (struct view*,struct line*) ; 
 int /*<<< orphan*/  FUNC12 (struct view*,struct line*) ; 
 TYPE_3__ stage_status ; 
 int /*<<< orphan*/  FUNC13 (struct view*,struct line*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 

__attribute__((used)) static enum request
FUNC17(struct view *view, enum request request, struct line *line)
{
	switch (request) {
	case REQ_STATUS_UPDATE:
		if (!FUNC13(view, line, false))
			return REQ_NONE;
		break;

	case REQ_STATUS_REVERT:
		if (!FUNC11(view, line))
			return REQ_NONE;
		break;

	case REQ_STAGE_UPDATE_LINE:
		if (stage_line_type == LINE_STAT_UNTRACKED ||
		    stage_status.status == 'A') {
			FUNC8("Staging single lines is not supported for new files");
			return REQ_NONE;
		}
		if (line->type != LINE_DIFF_DEL && line->type != LINE_DIFF_ADD) {
			FUNC8("Please select a change to stage");
			return REQ_NONE;
		}
		if (FUNC9(view, line)) {
			FUNC8("Staging is not supported for wrapped lines");
			return REQ_NONE;
		}
		if (!FUNC13(view, line, true))
			return REQ_NONE;
		break;


	case REQ_STAGE_SPLIT_CHUNK:
		if (stage_line_type == LINE_STAT_UNTRACKED ||
		    !(line = FUNC4(view, line, LINE_DIFF_CHUNK))) {
			FUNC8("No chunks to split in sight");
			return REQ_NONE;
		}
		FUNC12(view, line);
		return REQ_NONE;

	case REQ_EDIT:
		if (!stage_status.new.name[0])
			return FUNC0(view, request, line);

		if (stage_status.status == 'D') {
			FUNC8("File has been deleted.");
			return REQ_NONE;
		}

		if (stage_line_type == LINE_STAT_UNTRACKED) {
			FUNC6(stage_status.new.name, (line - view->line) + 1);
		} else {
			FUNC6(stage_status.new.name, FUNC2(view, line));
		}
		break;

	case REQ_REFRESH:
		/* Reload everything(including current branch information) ... */
		FUNC5(true);
		break;

	case REQ_VIEW_BLAME:
		if (stage_line_type == LINE_STAT_UNTRACKED) {
			FUNC8("Nothing to blame here");
			return REQ_NONE;
		}

		if (stage_status.new.name[0]) {
			FUNC14(view->env->file, stage_status.new.name);
		} else {
			const char *file = FUNC3(view, line);

			if (file)
				FUNC15(view->env->file, file, FUNC16(file));
		}

		view->env->ref[0] = 0;
		view->env->goto_lineno = FUNC2(view, line);
		if (view->env->goto_lineno > 0)
			view->env->goto_lineno--;
		return request;

	case REQ_ENTER:
		return FUNC1(view, request, line);

	default:
		return request;
	}

	/* Check whether the staged entry still exists, and close the
	 * stage view if it doesn't. */
	if (view->parent && !FUNC10(view, &stage_status, stage_line_type)) {
		stage_line_type = 0;
		return REQ_VIEW_CLOSE;
	}

	FUNC7(view);

	return REQ_NONE;
}