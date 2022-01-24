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
struct cmdq_item {int dummy; } ;
struct cmd_parse_result {int status; char* error; int /*<<< orphan*/  cmdlist; } ;
struct cmd_find_state {int dummy; } ;
struct client {int dummy; } ;

/* Variables and functions */
#define  CMD_PARSE_EMPTY 130 
#define  CMD_PARSE_ERROR 129 
#define  CMD_PARSE_SUCCESS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct cmd_parse_result* FUNC1 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct client*,struct cmdq_item*) ; 
 struct cmdq_item* FUNC4 (int /*<<< orphan*/ ,struct cmd_find_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct client*,char*,char*) ; 
 char FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct client *c, struct cmd_find_state *fs,
    const char *template, const char *name)
{
	struct cmdq_item	*new_item;
	char			*command;
	struct cmd_parse_result	*pr;

	command = FUNC2(template, name, 1);
	if (command == NULL || *command == '\0') {
		FUNC5(command);
		return;
	}

	pr = FUNC1(command, NULL);
	switch (pr->status) {
	case CMD_PARSE_EMPTY:
		break;
	case CMD_PARSE_ERROR:
		if (c != NULL) {
			*pr->error = FUNC7((u_char)*pr->error);
			FUNC6(c, "%s", pr->error);
		}
		FUNC5(pr->error);
		break;
	case CMD_PARSE_SUCCESS:
		new_item = FUNC4(pr->cmdlist, fs, NULL, 0);
		FUNC3(c, new_item);
		FUNC0(pr->cmdlist);
		break;
	}

	FUNC5(command);
}