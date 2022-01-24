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
struct ref_format {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct enum_map {int size; TYPE_1__* entries; } ;
typedef  int /*<<< orphan*/  name ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  enum reference_type { ____Placeholder_reference_type } reference_type ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int SIZEOF_STR ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 struct enum_map* reference_type_map ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,size_t*,char*,char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

enum status_code
FUNC3(struct ref_format **formats, char buf[], size_t bufsize)
{
	const struct enum_map *map = reference_type_map;
	char name[SIZEOF_STR];
	enum reference_type type;
	size_t bufpos = 0;
	const char *sep = "";

	if (!formats)
		return SUCCESS;

	for (type = 0; type < map->size; type++) {
		struct ref_format *format = formats[type];

		if (!format)
			continue;

		if (!FUNC0(name, sizeof(name), map->entries[type].name)
		    || !FUNC2(buf, bufsize, &bufpos, "%s%s%s%s",
				       sep, format->start, name, format->end))
			return FUNC1("No space left in buffer");

		sep = " ";
	}

	return SUCCESS;
}