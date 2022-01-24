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
struct enum_map_entry {int value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct enum_map_entry const,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 

bool
FUNC2(const struct enum_map_entry *map, size_t map_size, int *value, const char *name)
{
	size_t namelen = FUNC1(name);
	int i;

	for (i = 0; i < map_size; i++)
		if (FUNC0(map[i], name, namelen)) {
			*value = map[i].value;
			return true;
		}

	return false;
}