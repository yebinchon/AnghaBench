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
struct line_rule {int /*<<< orphan*/  name; int /*<<< orphan*/  member_0; } ;
struct line_info {int attr; int /*<<< orphan*/  bg; int /*<<< orphan*/  fg; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const***) ; 
 int SUCCESS ; 
 struct line_info* FUNC1 (char const*,struct line_rule*) ; 
 int FUNC2 (char*,...) ; 
 int FUNC3 (char const***,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,struct line_rule*,char const**) ; 
 int /*<<< orphan*/  FUNC5 (int*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static enum status_code
FUNC7(int argc, const char *argv[])
{
	struct line_rule rule = {0};
	const char *prefix = NULL;
	struct line_info *info;
	enum status_code code;

	if (argc < 3)
		return FUNC2("Invalid color mapping: color area fgcolor bgcolor [attrs]");

	code = FUNC4(argv[0], &rule, &prefix);
	if (code != SUCCESS)
		return code;

	info = FUNC1(prefix, &rule);
	if (!info) {
		static const char *obsolete[][2] = {
			{ "acked",			"'    Acked-by'" },
			{ "diff-copy-from",		"'copy from '" },
			{ "diff-copy-to",		"'copy to '" },
			{ "diff-deleted-file-mode",	"'deleted file mode '" },
			{ "diff-dissimilarity",		"'dissimilarity '" },
			{ "diff-rename-from",		"'rename from '" },
			{ "diff-rename-to",		"'rename to '" },
			{ "diff-tree",			"'diff-tree '" },
			{ "filename",			"file" },
			{ "help-keymap",		"help.section" },
			{ "main-revgraph",		"" },
			{ "pp-adate",			"'AuthorDate: '" },
			{ "pp-author",			"'Author: '" },
			{ "pp-cdate",			"'CommitDate: '" },
			{ "pp-commit",			"'Commit: '" },
			{ "pp-date",			"'Date: '" },
			{ "reviewed",			"'    Reviewed-by'" },
			{ "signoff",			"'    Signed-off-by'" },
			{ "stat-head",			"status.header" },
			{ "stat-section",		"status.section" },
			{ "tested",			"'    Tested-by'" },
			{ "tree-dir",			"tree.directory" },
			{ "tree-file",			"tree.file" },
			{ "tree-head",			"tree.header" },
		};
		int index;

		index = FUNC3(obsolete, FUNC0(obsolete), rule.name);
		if (index != -1) {
			if (!*obsolete[index][1])
				return FUNC2("%s is obsolete", argv[0]);
			/* Keep the initial prefix if defined. */
			code = FUNC4(obsolete[index][1], &rule, prefix ? NULL : &prefix);
			if (code != SUCCESS)
				return code;
			info = FUNC1(prefix, &rule);
		}

		if (!info)
			return FUNC2("Unknown color name: %s", argv[0]);

		code = FUNC2("%s has been replaced by %s",
			     obsolete[index][0], obsolete[index][1]);
	}

	if (!FUNC6(&info->fg, argv[1]))
		return FUNC2("Unknown color: %s", argv[1]);

	if (!FUNC6(&info->bg, argv[2]))
		return FUNC2("Unknown color: %s", argv[2]);

	info->attr = 0;
	while (argc-- > 3) {
		int attr;

		if (!FUNC5(&attr, argv[argc]))
			return FUNC2("Unknown color attribute: %s", argv[argc]);
		info->attr |= attr;
	}

	return code;
}