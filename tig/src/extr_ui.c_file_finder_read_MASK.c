#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct io {int dummy; } ;
struct file_finder_line {int dummy; } ;
struct file_finder {TYPE_2__** line; TYPE_2__** file; } ;
struct buffer {scalar_t__ size; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int /*<<< orphan*/  text; } ;
struct TYPE_4__ {int /*<<< orphan*/  exec_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_RD ; 
 TYPE_2__* FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct io*) ; 
 scalar_t__ FUNC2 (struct io*) ; 
 scalar_t__ FUNC3 (struct io*,struct buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct io*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__***,size_t,size_t) ; 
 TYPE_1__ repo ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool
FUNC8(struct file_finder *finder, const char *commit)
{
	const char *tree = FUNC6(commit) ? "HEAD" : commit;
	const char *ls_tree_files_argv[] = {
		"git", "ls-tree", "-z", "-r", "--name-only", "--full-name",
			tree, NULL
	};
	struct buffer buf;
	struct io io;
	size_t files;
	bool ok = true;

	if (!FUNC4(&io, IO_RD, repo.exec_dir, NULL, ls_tree_files_argv))
		return false;

	for (files = 0; FUNC3(&io, &buf, 0, true); files++) {
		/* Alloc two to ensure NULL terminated array. */
		if (!FUNC5(&finder->file, files, 2)) {
			ok = false;
			break;
		}

		finder->file[files] = FUNC0(1, sizeof(struct file_finder_line) + buf.size);
		if (!finder->file[files]) {
			ok = false;
			break;
		}

		FUNC7(finder->file[files]->text, buf.data, buf.size);
	}

	if (FUNC2(&io) || !FUNC5(&finder->line, 0, files + 1))
		ok = false;
	FUNC1(&io);
	return ok;
}