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
struct view {int dummy; } ;
struct line {int /*<<< orphan*/  type; } ;
typedef  enum request { ____Placeholder_request } request ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_STAT_STAGED ; 
 int /*<<< orphan*/  LINE_STAT_UNSTAGED ; 
 int /*<<< orphan*/  LINE_STAT_UNTRACKED ; 
 int OPEN_DEFAULT ; 
 int OPEN_SPLIT ; 
#define  REQ_ENTER 135 
 int REQ_MOVE_DOWN ; 
#define  REQ_MOVE_NEXT_MERGE 134 
#define  REQ_MOVE_PREV_MERGE 133 
 int REQ_MOVE_UP ; 
#define  REQ_NEXT 132 
 int REQ_NONE ; 
#define  REQ_PARENT 131 
#define  REQ_PREVIOUS 130 
#define  REQ_REFRESH 129 
#define  REQ_VIEW_DIFF 128 
 struct view** display ; 
 int /*<<< orphan*/  FUNC0 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct view*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct view*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct view*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct view*) ; 
 scalar_t__ FUNC8 (struct view*) ; 

enum request
FUNC9(struct view *view, enum request request, struct line *line)
{
	enum open_flags flags = (FUNC8(view) && request != REQ_VIEW_DIFF)
				? OPEN_SPLIT : OPEN_DEFAULT;

	switch (request) {
	case REQ_NEXT:
	case REQ_PREVIOUS:
		if (FUNC8(view) && display[0] != view)
			return request;
		/* Do not pass navigation requests to the branch view
		 * when the main view is maximized. (GH #38) */
		return request == REQ_NEXT ? REQ_MOVE_DOWN : REQ_MOVE_UP;

	case REQ_VIEW_DIFF:
	case REQ_ENTER:
		if (FUNC8(view) && display[0] != view)
			FUNC3(view, true);

		if (line->type == LINE_STAT_UNSTAGED
		    || line->type == LINE_STAT_STAGED)
			FUNC5(view, NULL, line->type, flags);
		else if (line->type == LINE_STAT_UNTRACKED)
			FUNC6(view, true, flags);
		else
			FUNC4(view, flags);
		break;

	case REQ_REFRESH:
		FUNC2(true);
		FUNC7(view);
		break;

	case REQ_PARENT:
		FUNC1(view, "%(commit)^", true, false);
		break;

	case REQ_MOVE_NEXT_MERGE:
	case REQ_MOVE_PREV_MERGE:
		FUNC0(view, request);
		break;

	default:
		return request;
	}

	return REQ_NONE;
}