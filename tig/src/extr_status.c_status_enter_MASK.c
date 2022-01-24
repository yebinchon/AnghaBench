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
struct view {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct status {TYPE_1__ new; } ;
struct line {scalar_t__ type; struct status* data; } ;
typedef  enum request { ____Placeholder_request } request ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;

/* Variables and functions */
 scalar_t__ LINE_STAT_NONE ; 
#define  LINE_STAT_STAGED 130 
#define  LINE_STAT_UNSTAGED 129 
#define  LINE_STAT_UNTRACKED 128 
 int OPEN_DEFAULT ; 
 int OPEN_SPLIT ; 
 int REQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct view*,struct status*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC3 (struct view*) ; 

__attribute__((used)) static enum request
FUNC4(struct view *view, struct line *line)
{
	struct status *status = line->data;
	enum open_flags flags = FUNC3(view) ? OPEN_SPLIT : OPEN_DEFAULT;

	if (line->type == LINE_STAT_NONE ||
	    (!status && line[1].type == LINE_STAT_NONE)) {
		FUNC1("No file to diff");
		return REQ_NONE;
	}

	switch (line->type) {
	case LINE_STAT_STAGED:
	case LINE_STAT_UNSTAGED:
		break;

	case LINE_STAT_UNTRACKED:
		if (!status) {
			FUNC1("No file to show");
			return REQ_NONE;
		}

		if (!FUNC2(status->new.name, -1, "/")) {
			FUNC1("Cannot display a directory");
			return REQ_NONE;
		}
		break;

	default:
		FUNC1("Nothing to enter");
		return REQ_NONE;
	}

	FUNC0(view, status, line->type, flags);
	return REQ_NONE;
}