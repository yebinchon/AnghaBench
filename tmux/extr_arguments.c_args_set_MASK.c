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
struct args_value {int /*<<< orphan*/  value; } ;
struct args_entry {int count; int /*<<< orphan*/  values; int /*<<< orphan*/  flag; } ;
struct args {int /*<<< orphan*/  tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct args_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct args_value*,struct args_entry*) ; 
 struct args_entry* FUNC3 (struct args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  args_tree ; 
 void* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

void
FUNC6(struct args *args, u_char ch, const char *s)
{
	struct args_entry	*entry;
	struct args_value	*value;

	entry = FUNC3(args, ch);
	if (entry == NULL) {
		entry = FUNC4(1, sizeof *entry);
		entry->flag = ch;
		entry->count = 1;
		FUNC1(&entry->values);
		FUNC0(args_tree, &args->tree, entry);
	} else
		entry->count++;

	if (s != NULL) {
		value = FUNC4(1, sizeof *value);
		value->value = FUNC5(s);
		FUNC2(&entry->values, value, entry);
	}
}