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
struct cmdq_item {int dummy; } ;
struct cmd {struct args* args; } ;
struct args {int argc; char const** argv; } ;
typedef  scalar_t__ key_code ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 scalar_t__ KEYC_NONE ; 
 scalar_t__ KEYC_UNKNOWN ; 
 char* FUNC0 (struct args*,char) ; 
 scalar_t__ FUNC1 (struct args*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct cmdq_item*,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static enum cmd_retval
FUNC7(struct cmd *self, struct cmdq_item *item)
{
	struct args	*args = self->args;
	key_code	 key;
	const char	*tablename;

	if (!FUNC1(args, 'a')) {
		if (args->argc != 1) {
			FUNC2(item, "missing key");
			return (CMD_RETURN_ERROR);
		}
		key = FUNC6(args->argv[0]);
		if (key == KEYC_NONE || key == KEYC_UNKNOWN) {
			FUNC2(item, "unknown key: %s", args->argv[0]);
			return (CMD_RETURN_ERROR);
		}
	} else {
		if (args->argc != 0) {
			FUNC2(item, "key given with -a");
			return (CMD_RETURN_ERROR);
		}
		key = KEYC_UNKNOWN;
	}

	if (key == KEYC_UNKNOWN) {
		tablename = FUNC0(args, 'T');
		if (tablename == NULL) {
			FUNC5("root");
			FUNC5("prefix");
			return (CMD_RETURN_NORMAL);
		}
		if (FUNC3(tablename, 0) == NULL) {
			FUNC2(item, "table %s doesn't exist", tablename);
			return (CMD_RETURN_ERROR);
		}
		FUNC5(tablename);
		return (CMD_RETURN_NORMAL);
	}

	if (FUNC1(args, 'T')) {
		tablename = FUNC0(args, 'T');
		if (FUNC3(tablename, 0) == NULL) {
			FUNC2(item, "table %s doesn't exist", tablename);
			return (CMD_RETURN_ERROR);
		}
	} else if (FUNC1(args, 'n'))
		tablename = "root";
	else
		tablename = "prefix";
	FUNC4(tablename, key);
	return (CMD_RETURN_NORMAL);
}