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
struct view_column {int type; int /*<<< orphan*/  opt; int /*<<< orphan*/  prev_opt; struct view_column* next; } ;
struct TYPE_4__ {struct view_column* current; } ;
struct view {struct view_column* columns; TYPE_2__ sort; int /*<<< orphan*/  name; TYPE_1__* ops; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
struct TYPE_3__ {int column_bits; } ;

/* Variables and functions */
 int ERROR_OUT_OF_MEMORY ; 
 int SUCCESS ; 
 int VIEW_COLUMN_COMMIT_TITLE ; 
 int VIEW_COLUMN_TEXT ; 
 size_t FUNC0 (char const**) ; 
 struct view_column* FUNC1 (size_t,int) ; 
 int FUNC2 (char*,char const*,...) ; 
 struct view* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct view_column*) ; 
 int FUNC5 (struct view_column*,char const*) ; 
 int FUNC6 (struct view_column*,char const**) ; 
 char* FUNC7 (int) ; 

enum status_code
FUNC8(struct view_column **column_ref, const char *view_name, const char *argv[])
{
	enum status_code code = SUCCESS;
	size_t size = FUNC0(argv);
	struct view_column *columns;
	struct view_column *column;
	struct view *view = FUNC3(view_name);
	int i;

	if (!view)
		return FUNC2("Unknown view: %s", view_name);

	columns = FUNC1(size, sizeof(*columns));
	if (!columns)
		return ERROR_OUT_OF_MEMORY;

	for (i = 0, column = NULL; code == SUCCESS && i < size; i++) {
		const char *arg = argv[i];

		if (column)
			column->next = &columns[i];
		column = &columns[i];

		code = FUNC6(column, &arg);
		if (code != SUCCESS)
			break;

		if (!(view->ops->column_bits & (1 << column->type)))
			return FUNC2("The %s view does not support %s column", view->name,
				     FUNC7(column->type));

		if ((column->type == VIEW_COLUMN_TEXT ||
		     column->type == VIEW_COLUMN_COMMIT_TITLE) &&
		     i + 1 < size)
			return FUNC2("The %s column must always be last",
				     FUNC7(column->type));

		code = FUNC5(column, arg);
		column->prev_opt = column->opt;
	}

	if (code == SUCCESS) {
		FUNC4(view->columns);
		view->columns = columns;
		view->sort.current = view->columns;
		*column_ref = columns;
	} else {
		FUNC4(columns);
	}

	return code;
}