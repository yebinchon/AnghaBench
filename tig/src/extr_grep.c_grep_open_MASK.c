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
struct TYPE_3__ {scalar_t__ display; } ;
struct TYPE_4__ {TYPE_1__ file_name; } ;
struct view_column {TYPE_2__ opt; } ;
struct view {struct grep_state* private; } ;
struct grep_state {int no_file_group; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;

/* Variables and functions */
 int ERROR_OUT_OF_MEMORY ; 
 scalar_t__ FILENAME_NO ; 
 int /*<<< orphan*/  VIEW_COLUMN_FILE_NAME ; 
 int /*<<< orphan*/  FUNC0 (char const***,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const**) ; 
 int FUNC2 (struct view*,int /*<<< orphan*/ *,char const**,int) ; 
 int /*<<< orphan*/  FUNC3 (char const**) ; 
 struct view_column* FUNC4 (struct view*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * grep_args ; 
 int /*<<< orphan*/ * grep_argv ; 
 scalar_t__ FUNC5 (struct view*) ; 
 int /*<<< orphan*/ * opt_cmdline_args ; 

__attribute__((used)) static enum status_code
FUNC6(struct view *view, enum open_flags flags)
{
	struct grep_state *state = view->private;
	const char **argv = NULL;
	enum status_code code;

	if (FUNC5(view)) {
		grep_argv = opt_cmdline_args;
		opt_cmdline_args = NULL;
	}

	if (!FUNC0(&argv, grep_args) ||
	    !FUNC0(&argv, grep_argv))
		return ERROR_OUT_OF_MEMORY;

	{
		struct view_column *column = FUNC4(view, VIEW_COLUMN_FILE_NAME);

		state->no_file_group = !column || column->opt.file_name.display != FILENAME_NO;
	}

	code = FUNC2(view, NULL, argv, flags);
	FUNC1(argv);
	FUNC3(argv);
	return code;
}