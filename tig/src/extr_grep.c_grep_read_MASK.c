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
struct view {scalar_t__* ref; int /*<<< orphan*/  lines; struct grep_state* private; } ;
struct line {int dummy; } ;
struct grep_state {char const* last_file; int /*<<< orphan*/  no_file_group; } ;
struct grep_line {char const* file; int /*<<< orphan*/  text; int /*<<< orphan*/  lineno; } ;
struct buffer {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_DEFAULT ; 
 int /*<<< orphan*/  LINE_DELIMITER ; 
 int /*<<< orphan*/  LINE_FILE ; 
 struct line* FUNC0 (struct view*,struct grep_line**,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct view*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct view*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (struct buffer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 size_t FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct view*,struct line*) ; 

__attribute__((used)) static bool
FUNC11(struct view *view, struct buffer *buf, bool force_stop)
{
	struct grep_state *state = view->private;
	struct grep_line *grep;
	char *lineno, *text;
	struct line *line;
	const char *file;
	size_t textlen;

	if (!buf) {
		state->last_file = NULL;
		if (!view->lines) {
			view->ref[0] = 0;
			FUNC6("No matches found");
		}
		return true;
	}

	if (!FUNC7(buf->data, "--"))
		return FUNC1(view, LINE_DELIMITER) != NULL;

	lineno = FUNC5(buf, buf->data, 0);
	text = FUNC5(buf, lineno, 0);

	/*
	 * No data indicates binary file matches, e.g.:
	 *	> git grep vertical- -- test
	 *	test/graph/20-tig-all-long-test:● │ Add "auto" vertical-split
	 *	Binary file test/graph/20-tig-all-long-test.in matches
	 */
	if (!lineno || !text)
		return true;

	textlen = FUNC8(text);

	file = FUNC4(buf->data);
	if (!file)
		return false;

	if (!state->no_file_group && file != state->last_file &&
	    !FUNC2(view, file, LINE_FILE))
		return false;

	line = FUNC0(view, &grep, LINE_DEFAULT, textlen, false);
	if (!line)
		return false;

	grep->file = file;
	grep->lineno = FUNC3(lineno);
	if (grep->lineno > 0)
		grep->lineno -= 1;
	FUNC9(grep->text, text, textlen + 1);
	FUNC10(view, line);

	state->last_file = file;

	return true;
}