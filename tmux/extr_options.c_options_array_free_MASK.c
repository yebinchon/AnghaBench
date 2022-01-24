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
struct options_array_item {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct options_array_item*) ; 
 int /*<<< orphan*/  FUNC1 (struct options_array_item*) ; 
 int /*<<< orphan*/  options_array ; 
 int /*<<< orphan*/  FUNC2 (struct options_entry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct options_entry *o, struct options_array_item *a)
{
	FUNC2(o, &a->value);
	FUNC0(options_array, &o->value.array, a);
	FUNC1(a);
}