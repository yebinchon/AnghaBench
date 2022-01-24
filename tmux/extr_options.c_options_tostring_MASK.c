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
struct options_entry {int /*<<< orphan*/  value; } ;
struct options_array_item {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct options_entry*) ; 
 struct options_array_item* FUNC1 (struct options_entry*,int) ; 
 char* FUNC2 (struct options_entry*,int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (char*) ; 

char *
FUNC4(struct options_entry *o, int idx, int numeric)
{
	struct options_array_item	*a;

	if (FUNC0(o)) {
		if (idx == -1)
			return (FUNC3(""));
		a = FUNC1(o, idx);
		if (a == NULL)
			return (FUNC3(""));
		return (FUNC2(o, &a->value, numeric));
	}
	return (FUNC2(o, &o->value, numeric));
}