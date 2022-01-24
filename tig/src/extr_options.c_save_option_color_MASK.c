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
struct line_info {char* prefix; int /*<<< orphan*/  attr; int /*<<< orphan*/  bg; int /*<<< orphan*/  fg; struct line_info* next; } ;
struct line_rule {char* line; int /*<<< orphan*/  name; struct line_info info; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,char const*,char const*,char const*,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static bool
FUNC5(void *data, const struct line_rule *rule)
{
	FILE *file = data;
	const struct line_info *info;

	for (info = &rule->info; info; info = info->next) {
		const char *prefix = info->prefix ? info->prefix : "";
		const char *prefix_sep = info->prefix ? "." : "";
		const char *quote = *rule->line ? "\"" : "";
		const char *name = *rule->line ? rule->line : FUNC0(rule->name);
		int name_width = FUNC4(prefix) + FUNC4(prefix_sep) + 2 * FUNC4(quote) + FUNC4(name);
		int padding = name_width > 30 ? 0 : 30 - name_width;

		if (!FUNC1(file, "\ncolor %s%s%s%s%s%-*s",
				      prefix, prefix_sep, quote, name, quote, padding, "")
		    || !FUNC3(file, info->fg)
		    || !FUNC3(file, info->bg)
		    || !FUNC2(file, info->attr))
			return false;
	}

	return true;
}