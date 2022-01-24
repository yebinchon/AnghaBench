#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct view_column {int dummy; } ;
struct view {int /*<<< orphan*/  name; TYPE_1__* ops; } ;
typedef  enum view_column_type { ____Placeholder_view_column_type } view_column_type ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
struct TYPE_2__ {int column_bits; } ;

/* Variables and functions */
 int FUNC0 (char*,char const*,...) ; 
 struct view* FUNC1 (char const*) ; 
 struct view_column* FUNC2 (struct view*,int) ; 
 int FUNC3 (struct view_column*,char const*) ; 
 int FUNC4 (struct view_column*,char const*,char const*) ; 
 char* FUNC5 (int) ; 

enum status_code
FUNC6(const char *view_name, enum view_column_type type,
			 const char *option_name, const char *argv[])
{
	struct view_column *column;
	struct view *view = FUNC1(view_name);

	if (!view)
		return FUNC0("Unknown view: %s", view_name);

	if (!(view->ops->column_bits & (1 << type)))
		return FUNC0("The %s view does not support %s column", view->name,
			     FUNC5(type));

	column = FUNC2(view, type);
	if (!column)
		return FUNC0("The %s view does not have a %s column configured", view->name,
			     FUNC5(type));

	if (option_name)
		return FUNC4(column, option_name, argv[0]);
	return FUNC3(column, argv[0]);
}