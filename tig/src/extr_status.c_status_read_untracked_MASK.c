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
struct view {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  LINE_STAT_NONE ; 
 int /*<<< orphan*/  LINE_STAT_UNTRACKED ; 
 scalar_t__ FUNC1 (struct view*,int /*<<< orphan*/ ) ; 
 scalar_t__ opt_status_show_untracked_dirs ; 
 int /*<<< orphan*/  opt_status_show_untracked_files ; 
 char** status_list_other_argv ; 
 int FUNC2 (struct view*,char**,char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(struct view *view)
{
	if (!opt_status_show_untracked_files)
		return FUNC1(view, LINE_STAT_UNTRACKED)
		    && FUNC1(view, LINE_STAT_NONE);

	status_list_other_argv[FUNC0(status_list_other_argv) - 3] =
		opt_status_show_untracked_dirs ? NULL : "--directory";
	status_list_other_argv[FUNC0(status_list_other_argv) - 2] =
		opt_status_show_untracked_dirs ? NULL : "--no-empty-directory";

	return FUNC2(view, status_list_other_argv, '?', LINE_STAT_UNTRACKED);
}