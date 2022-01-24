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
struct line {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int /*<<< orphan*/  LINE_DIFF_ADD_FILE ; 
 int /*<<< orphan*/  LINE_DIFF_HEADER ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct line*) ; 
 struct line* FUNC3 (struct view*,struct line*,int /*<<< orphan*/ ) ; 
 struct line* FUNC4 (struct view*,struct line*,int /*<<< orphan*/ ) ; 
 scalar_t__ opt_diff_noprefix ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int FUNC6 (char const*) ; 
 char* FUNC7 (char*,char const*) ; 

const char *
FUNC8(struct view *view, struct line *line)
{
	struct line *header;
	const char *dst;
	const char *prefixes[] = { "diff --cc ", "diff --combined " };
	const char *name;
	int i;

	header = FUNC4(view, line, LINE_DIFF_HEADER);
	if (!header)
		return NULL;

	for (i = 0; i < FUNC0(prefixes); i++) {
		dst = FUNC7(FUNC2(header), prefixes[i]);
		if (dst)
			return dst + FUNC6(prefixes[i]);
	}

	header = FUNC3(view, header, LINE_DIFF_ADD_FILE);
	if (!header)
		return NULL;

	name = FUNC2(header);
	if (!FUNC5(name, "+++ "))
		name += FUNC1("+++ ");

	if (opt_diff_noprefix)
		return name;

	/* Handle mnemonic prefixes, such as "b/" and "w/". */
	if (!FUNC5(name, "b/") || !FUNC5(name, "w/"))
		name += FUNC1("b/");
	return name;
}