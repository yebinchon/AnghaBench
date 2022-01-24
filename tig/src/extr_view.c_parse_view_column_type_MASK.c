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
struct view_column {int type; } ;
typedef  enum view_column_type { ____Placeholder_view_column_type } view_column_type ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
struct TYPE_2__ {int size; int /*<<< orphan*/ * entries; } ;

/* Variables and functions */
 int SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int FUNC1 (char*,int,char const*) ; 
 size_t FUNC2 (char const*,char*) ; 
 TYPE_1__* view_column_type_map ; 

__attribute__((used)) static enum status_code
FUNC3(struct view_column *column, const char **arg)
{
	enum view_column_type type;
	size_t typelen = FUNC2(*arg, ":,");

	for (type = 0; type < view_column_type_map->size; type++)
		if (FUNC0(view_column_type_map->entries[type], *arg, typelen)) {
			*arg += typelen + !!(*arg)[typelen];
			column->type = type;
			return SUCCESS;
		}

	return FUNC1("Failed to parse view column type: %.*s", (int) typelen, *arg);
}