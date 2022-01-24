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
struct view {char* ref; } ;
struct line {int /*<<< orphan*/  type; scalar_t__ data; } ;
struct io {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (struct io*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct io*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct io*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct view*) ; 
 scalar_t__ FUNC9 (struct view*,struct line*) ; 
 scalar_t__ FUNC10 (struct view*) ; 

bool
FUNC11(struct view *view, struct line *line)
{
	char buf[sizeof(view->ref)];
	struct io io;
	bool result = true;
	struct line *pos;
	int files = 0;
	int file, done;
	int cursor_y = -1, cursor_x = -1;

	if (!FUNC4(&io, line->type))
		return false;

	for (pos = line; FUNC9(view, pos) && pos->data; pos++)
		files++;

	FUNC6(buf, view->ref);
	FUNC1(cursor_y, cursor_x);
	for (file = 0, done = 5; result && file < files; line++, file++) {
		int almost_done = file * 100 / files;

		if (almost_done > done && FUNC10(view)) {
			done = almost_done;
			FUNC7(view->ref, "updating file %u of %u (%d%% done)",
				      file, files, done);
			FUNC8(view);
			FUNC3(cursor_y, cursor_x);
			FUNC0();
		}
		result = FUNC5(&io, line->data, line->type);
	}
	FUNC6(view->ref, buf);

	return FUNC2(&io) && result;
}