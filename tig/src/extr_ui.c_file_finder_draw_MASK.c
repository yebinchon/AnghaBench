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
struct position {size_t lineno; size_t offset; } ;
struct file_finder_line {scalar_t__ matches; } ;
struct file_finder {int height; scalar_t__ searchlen; int /*<<< orphan*/  win; int /*<<< orphan*/  lines; struct file_finder_line** line; struct position pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_CURSOR ; 
 int /*<<< orphan*/  LINE_DEFAULT ; 
 int /*<<< orphan*/  LINE_TITLE_FOCUS ; 
 int /*<<< orphan*/  FUNC0 (struct file_finder*,struct file_finder_line*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct file_finder *finder)
{
	struct position *pos = &finder->pos;
	struct file_finder_line *current_line = finder->line[pos->lineno];
	struct file_finder_line **line_pos = &finder->line[pos->offset];
	int column;

	FUNC2(finder->win, FUNC1(NULL, LINE_DEFAULT));
	FUNC4(finder->win);

	for (column = 0; *line_pos && column < finder->height - 1; line_pos++) {
		struct file_finder_line *line = *line_pos;

		if (finder->searchlen != line->matches)
			continue;

		FUNC5(finder->win, column++, 0);
		if (line == current_line) {
			FUNC2(finder->win, FUNC1(NULL, LINE_CURSOR));
		}
		FUNC0(finder, line);
		if (line == current_line) {
			FUNC3(finder->win);
			FUNC2(finder->win, FUNC1(NULL, LINE_DEFAULT));
		}
	}

	FUNC5(finder->win, finder->height - 1, 0);
	FUNC2(finder->win, FUNC1(NULL, LINE_TITLE_FOCUS));
	FUNC6(finder->win, "[finder] file %d of %d", pos->lineno + 1, finder->lines);
	FUNC3(finder->win);
	FUNC7(finder->win);
}