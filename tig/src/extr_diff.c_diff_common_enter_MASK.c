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
struct view {int line; } ;
struct line {scalar_t__ type; } ;
typedef  enum request { ____Placeholder_request } request ;

/* Variables and functions */
 scalar_t__ LINE_DIFF_STAT ; 
 int REQ_NONE ; 
 struct line* FUNC0 (struct view*,struct line*) ; 
 int FUNC1 (struct view*,int,struct line*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct view*,struct line*) ; 

enum request
FUNC5(struct view *view, enum request request, struct line *line)
{
	if (line->type == LINE_DIFF_STAT) {
		line = FUNC0(view, line);
		if (!line) {
			FUNC2("Failed to find file diff");
			return REQ_NONE;
		}

		FUNC4(view, line - view->line);
		FUNC3();
		return REQ_NONE;

	} else {
		return FUNC1(view, request, line);
	}
}