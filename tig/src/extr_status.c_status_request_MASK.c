#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct view {int /*<<< orphan*/ * parent; TYPE_2__* env; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct status {unsigned char status; TYPE_1__ new; } ;
struct line {int /*<<< orphan*/  type; struct status* data; } ;
typedef  enum request { ____Placeholder_request } request ;
struct TYPE_4__ {int /*<<< orphan*/ * ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_STAT_UNTRACKED ; 
#define  REQ_EDIT 134 
#define  REQ_ENTER 133 
 int REQ_NONE ; 
#define  REQ_REFRESH 132 
#define  REQ_STATUS_MERGE 131 
#define  REQ_STATUS_REVERT 130 
#define  REQ_STATUS_UPDATE 129 
#define  REQ_VIEW_BLAME 128 
 int REQ_VIEW_CLOSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_view ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct view*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ show_untracked_only ; 
 int FUNC6 (struct view*,struct line*) ; 
 int /*<<< orphan*/  FUNC7 (struct view*,struct line*) ; 
 int /*<<< orphan*/  FUNC8 (struct status*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct view*) ; 

__attribute__((used)) static enum request
FUNC10(struct view *view, enum request request, struct line *line)
{
	struct status *status = line->data;

	switch (request) {
	case REQ_STATUS_UPDATE:
		if (!FUNC9(view))
			return REQ_NONE;
		break;

	case REQ_STATUS_REVERT:
		if (!FUNC8(status, line->type, FUNC7(view, line)))
			return REQ_NONE;
		break;

	case REQ_STATUS_MERGE:
		if (!status || status->status != 'U') {
			FUNC5("Merging only possible for files with unmerged status ('U').");
			return REQ_NONE;
		}
		FUNC3(status->new.name);
		break;

	case REQ_EDIT:
		if (!status)
			return request;
		if (status->status == 'D') {
			FUNC5("File has been deleted.");
			return REQ_NONE;
		}

		FUNC2(status->new.name, 0);
		break;

	case REQ_VIEW_BLAME:
		if (line->type == LINE_STAT_UNTRACKED || !status) {
			FUNC5("Nothing to blame here");
			return REQ_NONE;
		}
		if (status)
			view->env->ref[0] = 0;
		return request;

	case REQ_ENTER:
		/* After returning the status view has been split to
		 * show the stage view. No further reloading is
		 * necessary. */
		return FUNC6(view, line);

	case REQ_REFRESH:
		/* Load the current branch information and then the view. */
		FUNC0();
		break;

	default:
		return request;
	}

	if (show_untracked_only && view->parent == &main_view && !FUNC1(view->parent, LINE_STAT_UNTRACKED))
		return REQ_VIEW_CLOSE;

	FUNC4(view);

	return REQ_NONE;
}