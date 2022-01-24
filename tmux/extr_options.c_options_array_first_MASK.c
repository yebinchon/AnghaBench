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
struct TYPE_2__ {int /*<<< orphan*/  array; } ;
struct options_entry {TYPE_1__ value; } ;
struct options_array_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct options_entry*) ; 
 struct options_array_item* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  options_array ; 

struct options_array_item *
FUNC2(struct options_entry *o)
{
	if (!FUNC0(o))
		return (NULL);
	return (FUNC1(options_array, &o->value.array));
}