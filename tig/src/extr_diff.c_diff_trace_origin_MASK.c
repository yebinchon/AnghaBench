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
struct view {char* vid; TYPE_1__* env; } ;
struct line {scalar_t__ type; } ;
struct blame_header {char* id; int orig_lineno; } ;
struct blame_commit {char const* filename; } ;
typedef  enum request { ____Placeholder_request } request ;
struct TYPE_2__ {char* ref; unsigned long goto_lineno; int /*<<< orphan*/  file; } ;

/* Variables and functions */
 scalar_t__ LINE_DIFF_ADD ; 
 int /*<<< orphan*/  LINE_DIFF_CHUNK ; 
 scalar_t__ LINE_DIFF_DEL ; 
 int /*<<< orphan*/  LINE_DIFF_HEADER ; 
 int REQ_NONE ; 
 int REQ_VIEW_BLAME ; 
 int SIZEOF_REF ; 
 int FUNC0 (char*) ; 
 char* FUNC1 (struct line*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned long,struct blame_header*,struct blame_commit*) ; 
 struct line* FUNC3 (struct view*,struct line*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

__attribute__((used)) static enum request
FUNC12(struct view *view, struct line *line)
{
	struct line *diff = FUNC3(view, line, LINE_DIFF_HEADER);
	struct line *chunk = FUNC3(view, line, LINE_DIFF_CHUNK);
	const char *chunk_data;
	int chunk_marker = line->type == LINE_DIFF_DEL ? '-' : '+';
	unsigned long lineno = 0;
	const char *file = NULL;
	char ref[SIZEOF_REF];
	struct blame_header header;
	struct blame_commit commit;

	if (!diff || !chunk || chunk == line) {
		FUNC6("The line to trace must be inside a diff chunk");
		return REQ_NONE;
	}

	for (; diff < line && !file; diff++) {
		const char *data = FUNC1(diff);

		if (!FUNC5(data, "--- a/")) {
			file = data + FUNC0("--- a/");
			break;
		}
	}

	if (diff == line || !file) {
		FUNC6("Failed to read the file name");
		return REQ_NONE;
	}

	chunk_data = FUNC1(chunk);

	if (!FUNC4(&lineno, chunk_data, chunk_marker)) {
		FUNC6("Failed to read the line number");
		return REQ_NONE;
	}

	if (lineno == 0) {
		FUNC6("This is the origin of the line");
		return REQ_NONE;
	}

	for (chunk += 1; chunk < line; chunk++) {
		if (chunk->type == LINE_DIFF_ADD) {
			lineno += chunk_marker == '+';
		} else if (chunk->type == LINE_DIFF_DEL) {
			lineno += chunk_marker == '-';
		} else {
			lineno++;
		}
	}

	if (chunk_marker == '+')
		FUNC7(ref, view->vid);
	else
		FUNC8(ref, "%s^", view->vid);

	if (FUNC10(ref)) {
		FUNC9(view->env->file, file, FUNC11(file));
		FUNC7(view->env->ref, "");
		view->env->goto_lineno = lineno - 1;

	} else {
		if (!FUNC2(ref, file, lineno, &header, &commit)) {
			FUNC6("Failed to read blame data");
			return REQ_NONE;
		}

		FUNC9(view->env->file, commit.filename, FUNC11(commit.filename));
		FUNC7(view->env->ref, header.id);
		view->env->goto_lineno = header.orig_lineno - 1;
	}

	return REQ_VIEW_BLAME;
}