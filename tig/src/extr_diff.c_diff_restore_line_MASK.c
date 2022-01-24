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
struct view {int lines; struct line* line; } ;
struct line {scalar_t__ type; } ;
struct TYPE_2__ {unsigned long lineno; unsigned long offset; } ;
struct diff_state {unsigned int lineno; TYPE_1__ pos; int /*<<< orphan*/ * file; } ;

/* Variables and functions */
 scalar_t__ LINE_DIFF_CHUNK ; 
 scalar_t__ LINE_DIFF_DEL ; 
 scalar_t__ LINE_DIFF_DEL2 ; 
 int /*<<< orphan*/  LINE_DIFF_HEADER ; 
 unsigned int FUNC0 (struct view*,struct line*) ; 
 char* FUNC1 (struct view*,struct line*) ; 
 struct line* FUNC2 (struct view*,struct line*,scalar_t__) ; 
 struct line* FUNC3 (struct view*,struct line*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct view*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct view*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct view*,struct line*) ; 

void
FUNC8(struct view *view, struct diff_state *state)
{
	struct line *line = &view->line[view->lines - 1];

	if (!state->file)
		return;

	while ((line = FUNC3(view, line, LINE_DIFF_HEADER))) {
		const char *file = FUNC1(view, line);

		if (file && !FUNC6(file, state->file))
			break;
		line--;
	}

	state->file = NULL;

	if (!line)
		return;

	while ((line = FUNC2(view, line, LINE_DIFF_CHUNK))) {
		unsigned int lineno = FUNC0(view, line);

		for (line++; FUNC7(view, line) && line->type != LINE_DIFF_CHUNK; line++) {
			if (lineno == state->lineno) {
				unsigned long lineno = line - view->line;
				unsigned long offset = lineno - (state->pos.lineno - state->pos.offset);

				FUNC4(view, offset, lineno);
				FUNC5(view);
				return;
			}
			if (line->type != LINE_DIFF_DEL &&
			    line->type != LINE_DIFF_DEL2)
				lineno++;
		}
	}
}