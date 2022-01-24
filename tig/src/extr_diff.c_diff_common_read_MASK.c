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
struct view {int /*<<< orphan*/  lines; } ;
struct line {int commit_title; struct box* data; } ;
struct diff_state {int combined_diff; int reading_diff_chunk; int reading_diff_stat; int after_diff; int after_commit_title; scalar_t__ highlight; } ;
struct box {int /*<<< orphan*/  cells; TYPE_1__* cell; } ;
typedef  enum line_type { ____Placeholder_line_type } line_type ;
struct TYPE_2__ {int length; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int LINE_COMMIT ; 
 int LINE_DEFAULT ; 
 int LINE_DIFF_ADD ; 
 int LINE_DIFF_ADD2 ; 
 int LINE_DIFF_ADD_FILE ; 
 int LINE_DIFF_CHUNK ; 
 int LINE_DIFF_DEL ; 
 int LINE_DIFF_DEL2 ; 
 int LINE_DIFF_DEL_FILE ; 
 int LINE_DIFF_HEADER ; 
 int LINE_DIFF_START ; 
 int /*<<< orphan*/  LINE_DIFF_STAT ; 
 struct line* FUNC0 (struct view*,char const*,int) ; 
 struct line* FUNC1 (struct view*,int /*<<< orphan*/ ,char const*,int,int const) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (struct view*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct view*,char const*,int) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (struct view*,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 scalar_t__ FUNC8 (char const*,int) ; 
 int FUNC9 (char const*) ; 
 char* FUNC10 (char const*,char*) ; 

bool
FUNC11(struct view *view, const char *data, struct diff_state *state)
{
	enum line_type type = FUNC5(data);

	/* ADD2 and DEL2 are only valid in combined diff hunks */
	if (!state->combined_diff && (type == LINE_DIFF_ADD2 || type == LINE_DIFF_DEL2))
		type = LINE_DEFAULT;

	/* DEL_FILE, ADD_FILE and START are only valid outside diff chunks */
	if (state->reading_diff_chunk) {
		if (type == LINE_DIFF_DEL_FILE || type == LINE_DIFF_START)
			type = LINE_DIFF_DEL;
		else if (type == LINE_DIFF_ADD_FILE)
			type = LINE_DIFF_ADD;
	}

	if (!view->lines && type != LINE_COMMIT)
		state->reading_diff_stat = true;

	/* combined diffs lack LINE_DIFF_START and we don't know
	 * if this is a combined diff until we see a "@@@" */
	if (!state->after_diff && data[0] == ' ' && data[1] != ' ')
		state->reading_diff_stat = true;

	if (state->reading_diff_stat) {
		if (FUNC3(view, data, 0))
			return true;
		state->reading_diff_stat = false;

	} else if (type == LINE_DIFF_START) {
		state->reading_diff_stat = true;
	}

	if (!state->after_commit_title && !FUNC7(data, "    ")) {
		struct line *line = FUNC0(view, data, LINE_DEFAULT);

		if (line)
			line->commit_title = 1;
		state->after_commit_title = true;
		return line != NULL;
	}

	if (type == LINE_DIFF_HEADER) {
		state->after_diff = true;
		state->reading_diff_chunk = false;

	} else if (type == LINE_DIFF_CHUNK) {
		const int len = FUNC2(data);
		const char *context = FUNC10(data + len, "@@");
		struct line *line =
			context ? FUNC1(view, view->lines, data, LINE_DIFF_CHUNK, len)
				: NULL;
		struct box *box;

		if (!line)
			return false;

		box = line->data;
		box->cell[0].length = (context + len) - data;
		box->cell[1].length = FUNC9(context + len);
		box->cell[box->cells++].type = LINE_DIFF_STAT;
		state->combined_diff = (len > 2);
		state->reading_diff_chunk = true;
		return true;

	} else if (type == LINE_COMMIT) {
		state->reading_diff_chunk = false;

	} else if (state->highlight && FUNC8(data, 0x1b)) {
		return FUNC4(view, data, type);

	}

	return FUNC6(view, data, type, NULL);
}