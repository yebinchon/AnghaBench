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
typedef  int /*<<< orphan*/  u_char ;
struct args_entry {int /*<<< orphan*/  values; } ;
struct args {int dummy; } ;
struct TYPE_2__ {char const* value; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct args_entry* FUNC1 (struct args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  args_values ; 

const char *
FUNC2(struct args *args, u_char ch)
{
	struct args_entry	*entry;

	if ((entry = FUNC1(args, ch)) == NULL)
		return (NULL);
	return (FUNC0(&entry->values, args_values)->value);
}