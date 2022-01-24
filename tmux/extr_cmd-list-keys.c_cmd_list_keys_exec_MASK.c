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
struct key_table {char* name; } ;
struct key_binding {int flags; int /*<<< orphan*/  cmdlist; int /*<<< orphan*/  key; } ;
struct cmdq_item {int dummy; } ;
struct cmd {int /*<<< orphan*/ * entry; struct args* args; } ;
struct args {int dummy; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int KEY_BINDING_REPEAT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct args*,char) ; 
 int /*<<< orphan*/  cmd_list_commands_entry ; 
 int FUNC2 (struct cmd*,struct cmdq_item*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cmdq_item*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct cmdq_item*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct key_binding* FUNC7 (struct key_table*) ; 
 struct key_table* FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 struct key_binding* FUNC10 (struct key_table*,struct key_binding*) ; 
 struct key_table* FUNC11 (struct key_table*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char*,char const*) ; 
 size_t FUNC14 (char*,char*,size_t) ; 
 int FUNC15 (char*) ; 
 int FUNC16 (char*) ; 
 char* FUNC17 (char*,int) ; 
 char* FUNC18 (size_t) ; 
 char* FUNC19 (char*,size_t) ; 
 size_t FUNC20 (char*,size_t,char*,char const*) ; 

__attribute__((used)) static enum cmd_retval
FUNC21(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct key_table	*table;
	struct key_binding	*bd;
	const char		*tablename, *r;
	char			*key, *cp, *tmp;
	int			 repeat, width, tablewidth, keywidth;
	size_t			 tmpsize, tmpused, cplen;

	if (self->entry == &cmd_list_commands_entry)
		return (FUNC2(self, item));

	tablename = FUNC1(args, 'T');
	if (tablename != NULL && FUNC9(tablename, 0) == NULL) {
		FUNC4(item, "table %s doesn't exist", tablename);
		return (CMD_RETURN_ERROR);
	}

	repeat = 0;
	tablewidth = keywidth = 0;
	table = FUNC8 ();
	while (table != NULL) {
		if (tablename != NULL && FUNC13(table->name, tablename) != 0) {
			table = FUNC11(table);
			continue;
		}
		bd = FUNC7(table);
		while (bd != NULL) {
			key = FUNC0(FUNC12(bd->key));

			if (bd->flags & KEY_BINDING_REPEAT)
				repeat = 1;

			width = FUNC16(table->name);
			if (width > tablewidth)
				tablewidth = width;
			width = FUNC16(key);
			if (width > keywidth)
				keywidth = width;

			FUNC6(key);
			bd = FUNC10(table, bd);
		}
		table = FUNC11(table);
	}

	tmpsize = 256;
	tmp = FUNC18(tmpsize);

	table = FUNC8 ();
	while (table != NULL) {
		if (tablename != NULL && FUNC13(table->name, tablename) != 0) {
			table = FUNC11(table);
			continue;
		}
		bd = FUNC7(table);
		while (bd != NULL) {
			key = FUNC0(FUNC12(bd->key));

			if (!repeat)
				r = "";
			else if (bd->flags & KEY_BINDING_REPEAT)
				r = "-r ";
			else
				r = "   ";
			tmpused = FUNC20(tmp, tmpsize, "%s-T ", r);

			cp = FUNC17(table->name, tablewidth);
			cplen = FUNC15(cp) + 1;
			while (tmpused + cplen + 1 >= tmpsize) {
				tmpsize *= 2;
				tmp = FUNC19(tmp, tmpsize);
			}
			tmpused = FUNC14(tmp, cp, tmpsize);
			tmpused = FUNC14(tmp, " ", tmpsize);
			FUNC6(cp);

			cp = FUNC17(key, keywidth);
			cplen = FUNC15(cp) + 1;
			while (tmpused + cplen + 1 >= tmpsize) {
				tmpsize *= 2;
				tmp = FUNC19(tmp, tmpsize);
			}
			tmpused = FUNC14(tmp, cp, tmpsize);
			tmpused = FUNC14(tmp, " ", tmpsize);
			FUNC6(cp);

			cp = FUNC3(bd->cmdlist, 1);
			cplen = FUNC15(cp);
			while (tmpused + cplen + 1 >= tmpsize) {
				tmpsize *= 2;
				tmp = FUNC19(tmp, tmpsize);
			}
			FUNC14(tmp, cp, tmpsize);
			FUNC6(cp);

			FUNC5(item, "bind-key %s", tmp);

			FUNC6(key);
			bd = FUNC10(table, bd);
		}
		table = FUNC11(table);
	}

	FUNC6(tmp);

	return (CMD_RETURN_NORMAL);
}