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
struct cmd_parse_result {int status; char* error; int /*<<< orphan*/  cmdlist; } ;
struct cmd {struct args* args; } ;
struct args {char** argv; int argc; } ;
typedef  scalar_t__ key_code ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
#define  CMD_PARSE_EMPTY 130 
#define  CMD_PARSE_ERROR 129 
#define  CMD_PARSE_SUCCESS 128 
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 scalar_t__ KEYC_NONE ; 
 scalar_t__ KEYC_UNKNOWN ; 
 char* FUNC0 (struct args*,char) ; 
 scalar_t__ FUNC1 (struct args*,char) ; 
 struct cmd_parse_result* FUNC2 (int,char**,int /*<<< orphan*/ *) ; 
 struct cmd_parse_result* FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cmdq_item*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static enum cmd_retval
FUNC8(struct cmd *self, struct cmdq_item *item)
{
	struct args		 *args = self->args;
	key_code		  key;
	const char		 *tablename;
	struct cmd_parse_result	 *pr;
	char			**argv = args->argv;
	int			  argc = args->argc;

	key = FUNC7(argv[0]);
	if (key == KEYC_NONE || key == KEYC_UNKNOWN) {
		FUNC4(item, "unknown key: %s", argv[0]);
		return (CMD_RETURN_ERROR);
	}

	if (FUNC1(args, 'T'))
		tablename = FUNC0(args, 'T');
	else if (FUNC1(args, 'n'))
		tablename = "root";
	else
		tablename = "prefix";

	if (argc == 2)
		pr = FUNC3(argv[1], NULL);
	else
		pr = FUNC2(argc - 1, argv + 1, NULL);
	switch (pr->status) {
	case CMD_PARSE_EMPTY:
		FUNC4(item, "empty command");
		return (CMD_RETURN_ERROR);
	case CMD_PARSE_ERROR:
		FUNC4(item, "%s", pr->error);
		FUNC5(pr->error);
		return (CMD_RETURN_ERROR);
	case CMD_PARSE_SUCCESS:
		break;
	}
	FUNC6(tablename, key, FUNC1(args, 'r'), pr->cmdlist);
	return (CMD_RETURN_NORMAL);
}