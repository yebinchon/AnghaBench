#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct view {struct line* line; } ;
struct line {int dummy; } ;
struct TYPE_4__ {unsigned long lines; int /*<<< orphan*/  position; } ;
struct TYPE_3__ {unsigned long lines; int /*<<< orphan*/  position; } ;
struct chunk_header {TYPE_2__ new; TYPE_1__ old; } ;

/* Variables and functions */
 char* FUNC0 (struct line*) ; 
 int /*<<< orphan*/  FUNC1 (struct chunk_header*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct view*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct line* FUNC4 (struct view*,struct chunk_header*,struct line*,struct line*,struct line*) ; 
 scalar_t__ FUNC5 (struct view*,struct line*) ; 

__attribute__((used)) static void
FUNC6(struct view *view, struct line *chunk_start)
{
	struct chunk_header header;
	struct line *last_changed_line = NULL, *last_unchanged_line = NULL, *pos;
	int chunks = 0;

	if (!chunk_start || !FUNC1(&header, FUNC0(chunk_start))) {
		FUNC3("Failed to parse chunk header");
		return;
	}

	header.old.lines = header.new.lines = 0;

	for (pos = chunk_start + 1; FUNC5(view, pos); pos++) {
		const char *chunk_line = FUNC0(pos);

		if (*chunk_line == '@' || *chunk_line == '\\')
			break;

		if (*chunk_line == ' ') {
			header.old.lines++;
			header.new.lines++;
			if (last_unchanged_line < last_changed_line)
				last_unchanged_line = pos;
			continue;
		}

		if (last_changed_line && last_changed_line < last_unchanged_line) {
			unsigned long chunk_start_lineno = pos - view->line;
			unsigned long diff = pos - last_unchanged_line;

			pos = FUNC4(view, &header, chunk_start, pos, last_unchanged_line);

			header.old.position += header.old.lines - diff;
			header.new.position += header.new.lines - diff;
			header.old.lines = header.new.lines = diff;

			chunk_start = view->line + chunk_start_lineno;
			last_changed_line = last_unchanged_line = NULL;
			chunks++;
		}

		if (*chunk_line == '-') {
			header.old.lines++;
			last_changed_line = pos;
		} else if (*chunk_line == '+') {
			header.new.lines++;
			last_changed_line = pos;
		}
	}

	if (chunks) {
		FUNC4(view, &header, chunk_start, NULL, NULL);
		FUNC2(view);
		FUNC3("Split the chunk in %d", chunks + 1);
	} else {
		FUNC3("The chunk cannot be split");
	}
}