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
struct view {int /*<<< orphan*/  ref; } ;
struct line {int dummy; } ;
typedef  enum request { ____Placeholder_request } request ;
struct TYPE_2__ {int /*<<< orphan*/  vid; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPEN_SPLIT ; 
#define  REQ_ENTER 129 
 int REQ_NONE ; 
#define  REQ_REFRESH 128 
 TYPE_1__** display ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct view*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct view*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum request
FUNC4(struct view *view, enum request request, struct line *line)
{
	switch (request) {
	case REQ_REFRESH:
		FUNC0(true);
		FUNC2(view);
		return REQ_NONE;

	case REQ_ENTER:
		if (!display[1] || FUNC3(display[1]->vid, view->ref))
			FUNC1(view, OPEN_SPLIT);
		return REQ_NONE;

	default:
		return request;
	}
}