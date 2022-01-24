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
struct TYPE_4__ {size_t lineno; } ;
struct view {TYPE_2__ pos; int /*<<< orphan*/ * line; TYPE_1__* ops; int /*<<< orphan*/  lines; } ;
typedef  enum request { ____Placeholder_request } request ;
struct TYPE_3__ {int (* request ) (struct view*,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int REQ_ENTER ; 
 int REQ_NONE ; 
 int REQ_REFRESH ; 
 int /*<<< orphan*/  VIEW_SEND_CHILD_ENTER ; 
 struct view** display ; 
 scalar_t__ FUNC0 (struct view*,int) ; 
 int /*<<< orphan*/  opt_focus_child ; 
 scalar_t__ opt_send_child_enter ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct view*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct view*) ; 
 scalar_t__ FUNC4 (struct view*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum request
FUNC5(struct view *view, enum request request)
{
	if (!view || !view->lines)
		return request;

	if (request == REQ_ENTER && !opt_focus_child && opt_send_child_enter &&
	    FUNC4(view, VIEW_SEND_CHILD_ENTER)) {
		struct view *child = display[1];

		if (FUNC0(child, request)) {
			FUNC5(child, request);
			return REQ_NONE;
		}
	}

	if (request == REQ_REFRESH && !FUNC3(view)) {
		FUNC1("This view can not be refreshed");
		return REQ_NONE;
	}

	return view->ops->request(view, request, &view->line[view->pos.lineno]);
}