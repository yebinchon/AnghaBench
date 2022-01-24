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
struct string_map {char const* key; scalar_t__ htab; } ;

/* Variables and functions */
 int /*<<< orphan*/  NO_INSERT ; 
 void** FUNC0 (scalar_t__,struct string_map*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

void **
FUNC2(struct string_map *map, const char *key)
{
	if (map->htab) {
		map->key = key;
		return FUNC0(map->htab, map, FUNC1(key), NO_INSERT);
	}

	return NULL;
}