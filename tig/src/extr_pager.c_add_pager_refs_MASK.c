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
struct ref_format {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct ref {int /*<<< orphan*/  name; struct ref* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_PP_REFS ; 
 int SIZEOF_STR ; 
 int /*<<< orphan*/  VIEW_ADD_DESCRIBE_REF ; 
 int /*<<< orphan*/  FUNC0 (struct view*,char const*,int /*<<< orphan*/ ) ; 
 struct ref_format* FUNC1 (int /*<<< orphan*/ ,struct ref const*) ; 
 struct ref* FUNC2 (char const*) ; 
 int /*<<< orphan*/  opt_reference_format ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct view*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct view *view, const char *commit_id)
{
	char buf[SIZEOF_STR];
	const struct ref *list;
	size_t bufpos = 0;
	const char *sep = "Refs: ";

	list = FUNC2(commit_id);
	if (!list) {
		if (FUNC5(view, VIEW_ADD_DESCRIBE_REF) && FUNC3())
			FUNC0(view, sep, LINE_PP_REFS);
		return;
	}

	for (; list; list = list->next) {
		const struct ref *ref = list;
		const struct ref_format *fmt = FUNC1(opt_reference_format, ref);

		if (!FUNC4(buf, &bufpos, "%s%s%s%s", sep,
					fmt->start, ref->name, fmt->end))
			return;
		sep = ", ";
	}

	if (bufpos == 0)
		return;

	FUNC0(view, buf, LINE_PP_REFS);
}