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
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  type ;
struct view_column {size_t type; struct view_column* next; } ;
struct enum_map {TYPE_1__* entries; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int SIZEOF_STR ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (struct view_column*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,size_t*,char*,char const*,char*,char*) ; 
 struct enum_map* view_column_type_map ; 

enum status_code
FUNC4(struct view_column *column, char buf[], size_t bufsize)
{
	const struct enum_map *map = view_column_type_map;
	const char *sep = "";
	size_t bufpos = 0;
	char type[SIZEOF_STR];
	char value[SIZEOF_STR];

	for (; column; column = column->next) {
		enum status_code code = FUNC2(column, value, sizeof(value));

		if (code != SUCCESS)
			return code;

		if (!FUNC0(type, sizeof(type), map->entries[column->type].name)
		    || !FUNC3(buf, bufsize, &bufpos, "%s%s%s",
				       sep, type, value))
			return FUNC1("No space left in buffer");

		sep = " ";
	}

	return SUCCESS;
}