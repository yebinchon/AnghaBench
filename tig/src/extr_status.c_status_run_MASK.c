#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct view {int lines; int /*<<< orphan*/  watch; TYPE_3__* line; } ;
struct TYPE_6__ {int /*<<< orphan*/ * name; } ;
struct TYPE_5__ {int /*<<< orphan*/ * name; int /*<<< orphan*/ * rev; } ;
struct status {char status; TYPE_2__ new; TYPE_1__ old; int /*<<< orphan*/  member_0; } ;
struct line {int dummy; } ;
struct io {int dummy; } ;
struct buffer {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  enum line_type { ____Placeholder_line_type } line_type ;
struct TYPE_8__ {int /*<<< orphan*/  exec_dir; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_RD ; 
 int LINE_STAT_NONE ; 
 int LINE_STAT_STAGED ; 
 int LINE_STAT_UNSTAGED ; 
 int LINE_STAT_UNTRACKED ; 
 int /*<<< orphan*/ * NULL_ID ; 
 int /*<<< orphan*/  WATCH_INDEX_STAGED_NO ; 
 int /*<<< orphan*/  WATCH_INDEX_STAGED_YES ; 
 int /*<<< orphan*/  WATCH_INDEX_UNSTAGED_NO ; 
 int /*<<< orphan*/  WATCH_INDEX_UNSTAGED_YES ; 
 int /*<<< orphan*/  WATCH_INDEX_UNTRACKED_NO ; 
 int /*<<< orphan*/  WATCH_INDEX_UNTRACKED_YES ; 
 struct line* FUNC0 (struct view*,struct status**,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct io*) ; 
 scalar_t__ FUNC3 (struct io*) ; 
 scalar_t__ FUNC4 (struct io*,struct buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct io*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const**) ; 
 TYPE_4__ repo ; 
 int /*<<< orphan*/  FUNC6 (struct status*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct view*,struct line*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC12(struct view *view, const char *argv[], char status, enum line_type type)
{
	struct status *unmerged = NULL;
	struct buffer buf;
	struct io io;

	if (!FUNC5(&io, IO_RD, repo.exec_dir, NULL, argv))
		return false;

	FUNC1(view, type);

	while (FUNC4(&io, &buf, 0, true)) {
		struct line *line;
		struct status parsed = {0};
		struct status *file = &parsed;

		/* Parse diff info part. */
		if (status) {
			file->status = status;
			if (status == 'A')
				FUNC8(file->old.rev, NULL_ID);

		} else {
			if (!FUNC6(&parsed, buf.data, buf.size))
				goto error_out;

			if (!FUNC4(&io, &buf, 0, true))
				break;
		}

		/* Grab the old name for rename/copy. */
		if (!*file->old.name &&
		    (file->status == 'R' || file->status == 'C')) {
			FUNC9(file->old.name, buf.data, buf.size);

			if (!FUNC4(&io, &buf, 0, true))
				break;
		}

		/* git-ls-files just delivers a NUL separated list of
		 * file names similar to the second half of the
		 * git-diff-* output. */
		FUNC9(file->new.name, buf.data, buf.size);
		if (!*file->old.name)
			FUNC8(file->old.name, file->new.name);

		/* Collapse all modified entries that follow an associated
		 * unmerged entry. */
		if (unmerged && !FUNC7(unmerged->new.name, file->new.name)) {
			unmerged->status = 'U';
			unmerged = NULL;
			continue;
		}

		line = FUNC0(view, &file, type, 0, false);
		if (!line)
			goto error_out;
		*file = parsed;
		FUNC10(view, line);
		if (file->status == 'U')
			unmerged = file;
	}

	if (FUNC3(&io)) {
error_out:
		FUNC2(&io);
		return false;
	}

	if (!view->line[view->lines - 1].data) {
		FUNC1(view, LINE_STAT_NONE);
		if (type == LINE_STAT_STAGED)
			FUNC11(&view->watch, WATCH_INDEX_STAGED_NO);
		else if (type == LINE_STAT_UNSTAGED)
			FUNC11(&view->watch, WATCH_INDEX_UNSTAGED_NO);
		else if (type == LINE_STAT_UNTRACKED)
			FUNC11(&view->watch, WATCH_INDEX_UNTRACKED_NO);
	} else {
		if (type == LINE_STAT_STAGED)
			FUNC11(&view->watch, WATCH_INDEX_STAGED_YES);
		else if (type == LINE_STAT_UNSTAGED)
			FUNC11(&view->watch, WATCH_INDEX_UNSTAGED_YES);
		else if (type == LINE_STAT_UNTRACKED)
			FUNC11(&view->watch, WATCH_INDEX_UNTRACKED_YES);
	}

	FUNC2(&io);
	return true;
}