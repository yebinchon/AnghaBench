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
struct string_map {int /*<<< orphan*/  htab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void**) ; 
 void** FUNC1 (struct string_map*,char const*) ; 

void *
FUNC2(struct string_map *map, const char *key)
{
	void *value = NULL;
	void **slot = FUNC1(map, key);

	if (slot) {
		value = *slot;
		FUNC0(map->htab, slot);
	}

	return value;
}