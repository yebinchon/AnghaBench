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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_2__ {int /*<<< orphan*/  array; } ;
struct options_entry {TYPE_1__ value; } ;
struct options_array_item {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct options_array_item*) ; 
 int /*<<< orphan*/  options_array ; 
 struct options_array_item* FUNC1 (int,int) ; 

__attribute__((used)) static struct options_array_item *
FUNC2(struct options_entry *o, u_int idx)
{
	struct options_array_item	*a;

	a = FUNC1(1, sizeof *a);
	a->index = idx;
	FUNC0(options_array, &o->value.array, a);
	return (a);
}