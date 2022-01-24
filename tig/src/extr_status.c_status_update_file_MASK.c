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
struct TYPE_3__ {char* name; } ;
struct status {TYPE_1__ new; } ;
struct io {int dummy; } ;
typedef  enum line_type { ____Placeholder_line_type } line_type ;
struct TYPE_4__ {int /*<<< orphan*/  exec_dir; } ;

/* Variables and functions */
 int LINE_STAT_UNTRACKED ; 
 scalar_t__ FUNC0 (struct io*) ; 
 int FUNC1 (char const**,int /*<<< orphan*/ ) ; 
 TYPE_2__ repo ; 
 int /*<<< orphan*/  FUNC2 (struct io*,int) ; 
 int FUNC3 (struct io*,struct status*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,char*) ; 

bool
FUNC6(struct status *status, enum line_type type)
{
	const char *name = status->new.name;
	struct io io;
	bool result;

	if (type == LINE_STAT_UNTRACKED && !FUNC5(name, FUNC4(name), "/")) {
		const char *add_argv[] = { "git", "add", "--", name, NULL };

		return FUNC1(add_argv, repo.exec_dir);
	}

	if (!FUNC2(&io, type))
		return false;

	result = FUNC3(&io, status, type);
	return FUNC0(&io) && result;
}