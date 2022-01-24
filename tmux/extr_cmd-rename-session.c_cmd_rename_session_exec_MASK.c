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
struct session {char* name; } ;
struct TYPE_2__ {struct session* s; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct client {int dummy; } ;
struct args {int /*<<< orphan*/ * argv; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct session*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct session*) ; 
 struct client* FUNC2 (struct cmdq_item*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cmdq_item*,char*,char*) ; 
 char* FUNC4 (struct cmdq_item*,int /*<<< orphan*/ ,struct client*,struct session*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct session*) ; 
 int /*<<< orphan*/  FUNC7 (struct session*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int /*<<< orphan*/  sessions ; 
 scalar_t__ FUNC10 (char*,char*) ; 

__attribute__((used)) static enum cmd_retval
FUNC11(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct client		*c = FUNC2(item, NULL, 1);
	struct session		*s = item->target.s;
	char			*newname;

	newname = FUNC4(item, args->argv[0], c, s, NULL, NULL);
	if (FUNC10(newname, s->name) == 0) {
		FUNC5(newname);
		return (CMD_RETURN_NORMAL);
	}

	if (!FUNC8(newname)) {
		FUNC3(item, "bad session name: %s", newname);
		FUNC5(newname);
		return (CMD_RETURN_ERROR);
	}
	if (FUNC9(newname) != NULL) {
		FUNC3(item, "duplicate session: %s", newname);
		FUNC5(newname);
		return (CMD_RETURN_ERROR);
	}

	FUNC1(sessions, &sessions, s);
	FUNC5(s->name);
	s->name = newname;
	FUNC0(sessions, &sessions, s);

	FUNC7(s);
	FUNC6("session-renamed", s);

	return (CMD_RETURN_NORMAL);
}