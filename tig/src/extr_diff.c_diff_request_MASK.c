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
struct view {int /*<<< orphan*/  vid; } ;
struct line {int dummy; } ;
typedef  enum request { ____Placeholder_request } request ;

/* Variables and functions */
#define  REQ_EDIT 131 
#define  REQ_ENTER 130 
 int REQ_NONE ; 
#define  REQ_REFRESH 129 
#define  REQ_VIEW_BLAME 128 
 int FUNC0 (struct view*,int,struct line*) ; 
 int FUNC1 (struct view*,int,struct line*) ; 
 int FUNC2 (struct view*,struct line*) ; 
 int FUNC3 (struct view*,int,struct line*) ; 
 int /*<<< orphan*/  FUNC4 (struct view*) ; 
 int /*<<< orphan*/  FUNC5 (struct view*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum request
FUNC7(struct view *view, enum request request, struct line *line)
{
	switch (request) {
	case REQ_VIEW_BLAME:
		return FUNC2(view, line);

	case REQ_EDIT:
		return FUNC0(view, request, line);

	case REQ_ENTER:
		return FUNC1(view, request, line);

	case REQ_REFRESH:
		if (FUNC6(view->vid))
			FUNC4(view);
		else
			FUNC5(view);
		return REQ_NONE;

	default:
		return FUNC3(view, request, line);
	}
}