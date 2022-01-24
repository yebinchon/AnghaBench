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
struct view {int /*<<< orphan*/ * grep; int /*<<< orphan*/  matched_lines; TYPE_1__* env; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  enum request { ____Placeholder_request } request ;
struct TYPE_2__ {int /*<<< orphan*/ * search; } ;

/* Variables and functions */
 int ERROR_OUT_OF_MEMORY ; 
#define  REQ_FIND_NEXT 131 
#define  REQ_FIND_PREV 130 
#define  REQ_SEARCH 129 
#define  REQ_SEARCH_BACK 128 
 int SUCCESS ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct view*) ; 
 int FUNC2 (struct view*,int,int) ; 
 scalar_t__ opt_wrap_search ; 
 int FUNC3 (struct view*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,...) ; 

__attribute__((used)) static enum status_code
FUNC6(struct view *view, enum request request)
{
	enum status_code code;
	int direction;

	if (!*view->grep || FUNC4(view->grep, view->env->search)) {
		if (!*view->env->search)
			return FUNC5("No previous search");
		return FUNC3(view, request);
	}

	switch (request) {
	case REQ_SEARCH:
	case REQ_FIND_NEXT:
		direction = 1;
		break;

	case REQ_SEARCH_BACK:
	case REQ_FIND_PREV:
		direction = -1;
		break;

	default:
		return FUNC0("Unknown search request");
	}

	if (!view->matched_lines && !FUNC1(view))
		return ERROR_OUT_OF_MEMORY;

	code = FUNC2(view, direction, false);
	if (code != SUCCESS && opt_wrap_search)
		code = FUNC2(view, direction, true);

	return code == SUCCESS ? code : FUNC5("No match found for '%s'", view->grep);
}