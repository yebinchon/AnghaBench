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
struct TYPE_2__ {size_t lineno; } ;
struct view {int /*<<< orphan*/  lines; TYPE_1__ pos; struct line* line; } ;
struct line {int /*<<< orphan*/  type; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct view*,struct line*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct view*,struct line*) ; 

__attribute__((used)) static bool
FUNC5(struct view *view)
{
	struct line *line = &view->line[view->pos.lineno];

	FUNC0(view->lines);

	if (!line->data) {
		if (FUNC2(view, line)) {
			FUNC1("Nothing to update");
			return false;
		}

		if (!FUNC4(view, line + 1)) {
			FUNC1("Failed to update file status");
			return false;
		}

	} else if (!FUNC3(line->data, line->type)) {
		FUNC1("Failed to update file status");
		return false;
	}

	return true;
}