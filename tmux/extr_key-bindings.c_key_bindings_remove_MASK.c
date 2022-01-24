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
struct key_table {int key; int /*<<< orphan*/  key_bindings; int /*<<< orphan*/  cmdlist; } ;
struct key_binding {int key; int /*<<< orphan*/  key_bindings; int /*<<< orphan*/  cmdlist; } ;
typedef  int key_code ;

/* Variables and functions */
 int KEYC_XTERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct key_table* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct key_table*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct key_table*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct key_table*) ; 
 int /*<<< orphan*/  key_bindings ; 
 struct key_table* FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct key_table*) ; 
 int /*<<< orphan*/  key_tables ; 

void
FUNC7(const char *name, key_code key)
{
	struct key_table	*table;
	struct key_binding	 bd_find, *bd;

	table = FUNC5(name, 0);
	if (table == NULL)
		return;

	bd_find.key = (key & ~KEYC_XTERM);
	bd = FUNC1(key_bindings, &table->key_bindings, &bd_find);
	if (bd == NULL)
		return;

	FUNC2(key_bindings, &table->key_bindings, bd);
	FUNC3(bd->cmdlist);
	FUNC4(bd);

	if (FUNC0(&table->key_bindings)) {
		FUNC2(key_tables, &key_tables, table);
		FUNC6(table);
	}
}