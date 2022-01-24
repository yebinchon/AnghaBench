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
struct view {struct line* line; } ;
struct line {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_DIFF_HEADER ; 
 int /*<<< orphan*/  LINE_DIFF_INDEX ; 
 int /*<<< orphan*/  LINE_DIFF_SIMILARITY ; 
 scalar_t__ LINE_DIFF_STAT ; 
 scalar_t__ FUNC0 (struct view*,struct line*,int /*<<< orphan*/ ) ; 
 struct line* FUNC1 (struct view*,struct line*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct view*,struct line*) ; 

__attribute__((used)) static struct line *
FUNC3(struct view *view, struct line *line)
{
	if (line->type == LINE_DIFF_STAT) {
		int file_number = 0;

		while (FUNC2(view, line) && line->type == LINE_DIFF_STAT) {
			file_number++;
			line--;
		}

		for (line = view->line; FUNC2(view, line); line++) {
			line = FUNC1(view, line, LINE_DIFF_HEADER);
			if (!line)
				break;

			if (FUNC0(view, line, LINE_DIFF_INDEX)
			    || FUNC0(view, line, LINE_DIFF_SIMILARITY)) {
				if (file_number == 1) {
					break;
				}
				file_number--;
			}
		}

		return line;
	}

	return NULL;
}