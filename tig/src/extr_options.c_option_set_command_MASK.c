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
struct option_info {int dummy; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const***) ; 
 int SUCCESS ; 
 int FUNC1 (char*,...) ; 
 struct option_info* FUNC2 (char const***,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (char const***,int /*<<< orphan*/ ,char const*) ; 
 char const*** option_info ; 
 int FUNC4 (struct option_info*,int,char const**) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static enum status_code
FUNC6(int argc, const char *argv[])
{
	struct option_info *option;

	if (argc < 2)
		return FUNC1("Invalid set command: set option = value");

	if (FUNC5(argv[1], "="))
		return FUNC1("No value assigned to %s", argv[0]);

	option = FUNC2(option_info, FUNC0(option_info), "", argv[0]);
	if (option)
		return FUNC4(option, argc, argv);

	{
		const char *obsolete[][2] = {
			{ "status-untracked-dirs", "status-show-untracked-dirs" },
		};
		int index = FUNC3(obsolete, FUNC0(obsolete), argv[0]);

		if (index != -1) {
			option = FUNC2(option_info, FUNC0(option_info), "", obsolete[index][1]);
			if (option) {
				enum status_code code = FUNC4(option, argc, argv);

				if (code != SUCCESS)
					return code;
				return FUNC1("%s has been renamed to %s",
					     obsolete[index][0], obsolete[index][1]);
			}
		}
	}

	{
		const char *obsolete[][2] = {
			{ "author-width",		"author" },
			{ "filename-width",		"file-name" },
			{ "line-number-interval",	"line-number" },
			{ "show-author",		"author" },
			{ "show-date",			"date" },
			{ "show-file-size",		"file-size" },
			{ "show-filename",		"file-name" },
			{ "show-id",			"id" },
			{ "show-line-numbers",		"line-number" },
			{ "show-refs",			"commit-title" },
			{ "show-rev-graph",		"commit-title" },
			{ "title-overflow",		"commit-title and text" },
		};
		int index = FUNC3(obsolete, FUNC0(obsolete), argv[0]);

		if (index != -1)
			return FUNC1("%s is obsolete; see tigrc(5) for how to set the %s column option",
				     obsolete[index][0], obsolete[index][1]);

		if (!FUNC5(argv[0], "read-git-colors"))
			return FUNC1("read-git-colors has been obsoleted by the git-colors option");

		if (!FUNC5(argv[0], "cmdline-args"))
			return FUNC1("cmdline-args is obsolete; use view-specific options instead, e.g. main-options");
	}

	return FUNC1("Unknown option name: %s", argv[0]);
}