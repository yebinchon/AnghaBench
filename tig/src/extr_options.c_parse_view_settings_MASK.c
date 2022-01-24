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
struct enum_map_entry {int namelen; } ;
typedef  enum view_column_type { ____Placeholder_view_column_type } view_column_type ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int size; struct enum_map_entry* entries; } ;

/* Variables and functions */
 int SIZEOF_STR ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct enum_map_entry const,char const*,size_t) ; 
 scalar_t__ FUNC2 (struct enum_map_entry const,char const*,size_t) ; 
 scalar_t__ FUNC3 (char*,int,char const*) ; 
 int FUNC4 (char const*,int,char const*,char const**) ; 
 int FUNC5 (struct view_column**,char const*,char const**) ; 
 size_t FUNC6 (char const*) ; 
 char* FUNC7 (char const*,char*) ; 
 TYPE_1__* view_column_type_map ; 

__attribute__((used)) static enum status_code
FUNC8(struct view_column **view_column, const char *name_, const char *argv[])
{
	char buf[SIZEOF_STR];
	const char *name = FUNC3(buf, sizeof(buf), name_) ? buf : name_;
	const char *prefixed;

	if ((prefixed = FUNC7(name, "-view-"))) {
		const char *column_name = prefixed + FUNC0("-view-");
		size_t column_namelen = FUNC6(column_name);
		enum view_column_type type;

		for (type = 0; type < view_column_type_map->size; type++) {
			const struct enum_map_entry *column = &view_column_type_map->entries[type];

			if (FUNC1(*column, column_name, column_namelen))
				return FUNC4(name, type, NULL, argv);

			if (FUNC2(*column, column_name, column_namelen))
				return FUNC4(name, type,
								column_name + column->namelen + 1,
								argv);
		}
	}

	return FUNC5(view_column, name, argv);
}