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
typedef  int /*<<< orphan*/  u_char ;
struct args_value {char const* value; } ;
struct args_entry {int /*<<< orphan*/  values; } ;
struct args {int dummy; } ;

/* Variables and functions */
 struct args_value* FUNC0 (int /*<<< orphan*/ *) ; 
 struct args_entry* FUNC1 (struct args*,int /*<<< orphan*/ ) ; 

const char *
FUNC2(struct args *args, u_char ch, struct args_value **value)
{
	struct args_entry	*entry;

	if ((entry = FUNC1(args, ch)) == NULL)
		return (NULL);

	*value = FUNC0(&entry->values);
	if (*value == NULL)
		return (NULL);
	return ((*value)->value);
}