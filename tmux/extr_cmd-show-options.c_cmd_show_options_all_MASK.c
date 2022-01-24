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
typedef  int u_int ;
struct options_table_entry {int scope; int flags; int /*<<< orphan*/ * name; } ;
struct options_entry {int dummy; } ;
struct options_array_item {int dummy; } ;
struct options {int dummy; } ;
struct cmdq_item {int dummy; } ;
struct cmd {int /*<<< orphan*/  args; int /*<<< orphan*/ * entry; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_NORMAL ; 
 int OPTIONS_TABLE_IS_HOOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  cmd_show_hooks_entry ; 
 int /*<<< orphan*/  FUNC1 (struct cmd*,struct cmdq_item*,struct options_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cmdq_item*,char*,char const*) ; 
 struct options_array_item* FUNC3 (struct options_entry*) ; 
 int FUNC4 (struct options_array_item*) ; 
 struct options_array_item* FUNC5 (struct options_array_item*) ; 
 struct options_entry* FUNC6 (struct options*) ; 
 struct options_entry* FUNC7 (struct options*,int /*<<< orphan*/ *) ; 
 struct options_entry* FUNC8 (struct options*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct options_entry*) ; 
 char* FUNC10 (struct options_entry*) ; 
 struct options_entry* FUNC11 (struct options_entry*) ; 
 struct options_table_entry* options_table ; 
 int /*<<< orphan*/ * FUNC12 (struct options_entry*) ; 

__attribute__((used)) static enum cmd_retval
FUNC13(struct cmd *self, struct cmdq_item *item, int scope,
    struct options *oo)
{
	const struct options_table_entry	*oe;
	struct options_entry			*o;
	struct options_array_item		*a;
	const char				*name;
	u_int					 idx;
	int					 parent;

	o = FUNC6(oo);
	while (o != NULL) {
		if (FUNC12(o) == NULL)
			FUNC1(self, item, o, -1, 0);
		o = FUNC11(o);
	}
	for (oe = options_table; oe->name != NULL; oe++) {
		if (~oe->scope & scope)
			continue;

		if ((self->entry != &cmd_show_hooks_entry &&
		    !FUNC0(self->args, 'H') &&
		    oe != NULL &&
		    (oe->flags & OPTIONS_TABLE_IS_HOOK)) ||
		    (self->entry == &cmd_show_hooks_entry &&
		    (oe == NULL ||
		    (~oe->flags & OPTIONS_TABLE_IS_HOOK))))
			continue;

		o = FUNC8(oo, oe->name);
		if (o == NULL) {
			if (!FUNC0(self->args, 'A'))
				continue;
			o = FUNC7(oo, oe->name);
			if (o == NULL)
				continue;
			parent = 1;
		} else
			parent = 0;

		if (!FUNC9(o))
			FUNC1(self, item, o, -1, parent);
		else if ((a = FUNC3(o)) == NULL) {
			if (!FUNC0(self->args, 'v')) {
				name = FUNC10(o);
				if (parent)
					FUNC2(item, "%s*", name);
				else
					FUNC2(item, "%s", name);
			}
		} else {
			while (a != NULL) {
				idx = FUNC4(a);
				FUNC1(self, item, o, idx,
				    parent);
				a = FUNC5(a);
			}
		}
	}
	return (CMD_RETURN_NORMAL);
}