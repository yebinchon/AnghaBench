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
struct io {int dummy; } ;
struct index_diff {scalar_t__ untracked; scalar_t__ unstaged; scalar_t__ staged; } ;
struct buffer {int size; char* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  exec_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_RD ; 
 int /*<<< orphan*/  FUNC0 (struct io*) ; 
 scalar_t__ FUNC1 (struct io*) ; 
 scalar_t__ FUNC2 (struct io*,struct buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct io*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC4 (struct index_diff*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ repo ; 

bool
FUNC5(struct index_diff *diff, bool untracked, bool count_all)
{
	const char *untracked_arg = !untracked ? "--untracked-files=no" :
				     count_all ? "--untracked-files=all" :
						 "--untracked-files=normal";
	const char *status_argv[] = {
		"git", "status", "--porcelain", "-z", untracked_arg, NULL
	};
	struct io io;
	struct buffer buf;
	bool ok = true;

	FUNC4(diff, 0, sizeof(*diff));

	if (!FUNC3(&io, IO_RD, repo.exec_dir, NULL, status_argv))
		return false;

	while (FUNC2(&io, &buf, 0, true) && (ok = buf.size > 3)) {
		if (buf.data[0] == '?')
			diff->untracked++;
		/* Ignore staged but unmerged entries. */
		else if (buf.data[0] != ' ' && buf.data[0] != 'U')
			diff->staged++;
		if (buf.data[1] != ' ' && buf.data[1] != '?')
			diff->unstaged++;
		if (!count_all && diff->staged && diff->unstaged &&
		    (!untracked || diff->untracked))
			break;

		/* Skip source filename in rename */
		if (buf.data[0] == 'R') {
			FUNC2(&io, &buf, 0, true);
		}
	}

	if (FUNC1(&io))
		ok = false;

	FUNC0(&io);
	return ok;
}