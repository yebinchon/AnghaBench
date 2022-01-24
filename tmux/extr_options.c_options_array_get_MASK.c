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
typedef  union options_value {int dummy; } options_value ;
typedef  int /*<<< orphan*/  u_int ;
struct options_entry {int dummy; } ;
struct options_array_item {union options_value value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct options_entry*) ; 
 struct options_array_item* FUNC1 (struct options_entry*,int /*<<< orphan*/ ) ; 

union options_value *
FUNC2(struct options_entry *o, u_int idx)
{
	struct options_array_item	*a;

	if (!FUNC0(o))
		return (NULL);
	a = FUNC1(o, idx);
	if (a == NULL)
		return (NULL);
	return (&a->value);
}