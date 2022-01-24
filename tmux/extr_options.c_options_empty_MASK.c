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
struct options_table_entry {int flags; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  array; } ;
struct options_entry {TYPE_1__ value; struct options_table_entry const* tableentry; } ;
struct options {int dummy; } ;

/* Variables and functions */
 int OPTIONS_TABLE_IS_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct options_entry* FUNC1 (struct options*,int /*<<< orphan*/ ) ; 

struct options_entry *
FUNC2(struct options *oo, const struct options_table_entry *oe)
{
	struct options_entry	*o;

	o = FUNC1(oo, oe->name);
	o->tableentry = oe;

	if (oe->flags & OPTIONS_TABLE_IS_ARRAY)
		FUNC0(&o->value.array);

	return (o);
}