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
struct view_column {int /*<<< orphan*/  opt; int /*<<< orphan*/  type; struct view_column* next; } ;
struct sort_state {scalar_t__ reverse; } ;
struct view {char const* name; struct view_column* columns; struct sort_state sort; } ;
struct option_info {int dummy; } ;
typedef  enum view_flag { ____Placeholder_view_flag } view_flag ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIEW_SORTABLE ; 
 int FUNC1 (char*,char const*,size_t) ; 
 int FUNC2 (char*,char const*) ; 
 struct option_info* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,struct option_info*,char const**) ; 
 struct option_info* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct view*) ; 
 int /*<<< orphan*/  option_toggles ; 
 int FUNC6 (struct view*,char const**,char const*,struct option_info*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct view*,int) ; 
 size_t FUNC8 (char const*) ; 
 int FUNC9 (char*,char const*,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct view*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum status_code
FUNC12(struct view *view, const char *argv[], enum view_flag *flags)
{
	const char *option = argv[1];
	size_t optionlen = option ? FUNC8(option) : 0;
	struct option_info template;
	struct option_info *toggle;
	struct view_column *column;
	const char *column_name;

	if (!option)
		return FUNC2("%s", "No option name given to :toggle");

	if (FUNC1("sort-field", option, optionlen) ||
	    FUNC1("sort-order", option, optionlen)) {
		if (!FUNC11(view, VIEW_SORTABLE)) {
			return FUNC2("Sorting is not yet supported for the %s view", view->name);
		} else {
			bool sort_field = FUNC1("sort-field", option, optionlen);
			struct sort_state *sort = &view->sort;

			FUNC7(view, sort_field);
			return FUNC9("set %s = %s", option,
				sort_field ? FUNC10(FUNC5(view))
					   : sort->reverse ? "descending" : "ascending");
		}
	}

	toggle = FUNC4(option_toggles, FUNC0(option_toggles), "", option);
	if (toggle)
		return FUNC6(view, argv, "", toggle, flags);

	for (column = view->columns; column; column = column->next) {
		toggle = FUNC3(column->type, &column->opt, option, &template, &column_name);
		if (toggle)
			return FUNC6(view, argv, column_name, toggle, flags);
	}

	return FUNC2("`:toggle %s` not supported", option);
}