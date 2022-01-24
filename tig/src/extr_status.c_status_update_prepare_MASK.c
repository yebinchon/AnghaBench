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
typedef  enum line_type { ____Placeholder_line_type } line_type ;
struct TYPE_2__ {int /*<<< orphan*/  exec_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_WR ; 
#define  LINE_STAT_STAGED 130 
#define  LINE_STAT_UNSTAGED 129 
#define  LINE_STAT_UNTRACKED 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct io*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const**) ; 
 TYPE_1__ repo ; 

__attribute__((used)) static bool
FUNC2(struct io *io, enum line_type type)
{
	const char *staged_argv[] = {
		"git", "update-index", "-z", "--index-info", NULL
	};
	const char *others_argv[] = {
		"git", "update-index", "-z", "--add", "--remove", "--stdin", NULL
	};

	switch (type) {
	case LINE_STAT_STAGED:
		return FUNC1(io, IO_WR, repo.exec_dir, NULL, staged_argv);

	case LINE_STAT_UNSTAGED:
	case LINE_STAT_UNTRACKED:
		return FUNC1(io, IO_WR, repo.exec_dir, NULL, others_argv);

	default:
		FUNC0("line type %d not handled in switch", type);
		return false;
	}
}