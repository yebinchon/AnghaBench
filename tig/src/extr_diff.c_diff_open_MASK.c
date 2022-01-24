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
struct view {int /*<<< orphan*/  private; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;

/* Variables and functions */
 char* DIFF_ARGS ; 
 int SUCCESS ; 
 int FUNC0 (struct view*,int /*<<< orphan*/ *,char const**,int) ; 
 char* FUNC1 () ; 
 int FUNC2 (struct view*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct view*,int /*<<< orphan*/ ,int) ; 
 char* encoding_arg ; 
 char* FUNC4 () ; 
 char* FUNC5 () ; 
 char* FUNC6 () ; 

__attribute__((used)) static enum status_code
FUNC7(struct view *view, enum open_flags flags)
{
	const char *diff_argv[] = {
		"git", "show", encoding_arg, "--pretty=fuller", "--root",
			"--patch-with-stat", FUNC6(),
			FUNC5(), FUNC1(), FUNC4(),
			DIFF_ARGS, "%(cmdlineargs)", "--no-color", "%(commit)",
			"--", "%(fileargs)", NULL
	};
	enum status_code code;

	FUNC3(view, view->private, flags);

	code = FUNC0(view, NULL, diff_argv, flags);
	if (code != SUCCESS)
		return code;

	return FUNC2(view, view->private);
}