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
struct view {unsigned long lines; struct line* line; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct status {TYPE_1__ new; int /*<<< orphan*/  status; } ;
struct line {int type; struct status* data; } ;
typedef  enum line_type { ____Placeholder_line_type } line_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct view*) ; 
 int /*<<< orphan*/  FUNC1 (struct view*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct view*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC4(struct view *view, struct status *status, enum line_type type)
{
	unsigned long lineno;

	FUNC0(view);

	for (lineno = 0; lineno < view->lines; lineno++) {
		struct line *line = &view->line[lineno];
		struct status *pos = line->data;

		if (line->type != type)
			continue;
		if ((!pos && (!status || !status->status) && line[1].data) ||
		    (pos && status && !FUNC3(status->new.name, pos->new.name))) {
			FUNC1(view, lineno);
			FUNC2(view);
			return true;
		}
	}

	return false;
}