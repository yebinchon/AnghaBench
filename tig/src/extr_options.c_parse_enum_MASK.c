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
struct enum_map {int size; TYPE_1__* entries; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
struct TYPE_2__ {unsigned int value; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char const*,char const*,char const*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int,int*,char const*) ; 
 int FUNC4 (int*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static enum status_code
FUNC7(const char *name, unsigned int *opt, const char *arg,
	   const struct enum_map *map)
{
	bool is_true;
	enum status_code code;

	FUNC0(map->size > 1);

	if (FUNC3(map->entries, map->size, (int *) opt, arg))
		return SUCCESS;

	code = FUNC4(&is_true, arg);
	*opt = is_true ? map->entries[1].value : map->entries[0].value;
	if (code == SUCCESS)
		return code;

	if (!FUNC6(name, "date-display")) {
		const char *msg = "";

		if (!FUNC5(arg, "local"))
			msg = ", use the 'date-local' column option";
		else if (!FUNC5(arg, "short"))
			msg = ", use the 'custom' display mode and set 'date-format'";

		*opt = map->entries[1].value;
		return FUNC2("'%s' is no longer supported for %s%s", arg, name, msg);
	}

	return FUNC2("'%s' is not a valid value for %s; using %s",
		     arg, name, FUNC1(map->entries[*opt].name));
}