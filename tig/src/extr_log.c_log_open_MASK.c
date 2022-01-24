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
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;

/* Variables and functions */
 int FUNC0 (struct view*,int /*<<< orphan*/ *,char const**,int) ; 
 char* FUNC1 () ; 
 char* encoding_arg ; 

__attribute__((used)) static enum status_code
FUNC2(struct view *view, enum open_flags flags)
{
	const char *log_argv[] = {
		"git", "log", encoding_arg, FUNC1(), "--cc",
			"--stat", "%(logargs)", "%(cmdlineargs)", "%(revargs)",
			"--no-color", "--", "%(fileargs)", NULL
	};

	return FUNC0(view, NULL, log_argv, flags);
}