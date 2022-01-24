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
struct TYPE_2__ {int /*<<< orphan*/  s; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {int /*<<< orphan*/ * entry; struct args* args; } ;
struct client {int dummy; } ;
struct args {int dummy; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct args*,char) ; 
 struct client* FUNC1 (struct cmdq_item*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmd_lock_server_entry ; 
 int /*<<< orphan*/  cmd_lock_session_entry ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum cmd_retval
FUNC6(struct cmd *self, struct cmdq_item *item)
{
	struct args	*args = self->args;
	struct client	*c;

	if (self->entry == &cmd_lock_server_entry)
		FUNC3();
	else if (self->entry == &cmd_lock_session_entry)
		FUNC5(item->target.s);
	else {
		if ((c = FUNC1(item, FUNC0(args, 't'), 0)) == NULL)
			return (CMD_RETURN_ERROR);
		FUNC4(c);
	}
	FUNC2();

	return (CMD_RETURN_NORMAL);
}