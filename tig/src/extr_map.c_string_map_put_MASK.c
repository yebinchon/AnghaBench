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
struct string_map {int dummy; } ;

/* Variables and functions */
 void** FUNC0 (struct string_map*,char const*) ; 

void *
FUNC1(struct string_map *map, const char *key, void *value)
{
	void **slot = FUNC0(map, key);

	if (!slot)
		return NULL;

	*slot = value;
	return value;
}