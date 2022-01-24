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
struct winlink {int dummy; } ;
struct session {int dummy; } ;
struct TYPE_2__ {struct winlink* wl; struct session* s; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct args {int dummy; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_NORMAL ; 
 scalar_t__ FUNC0 (struct args*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct cmd*,struct cmdq_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd*,struct session*,struct cmdq_item*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cmd*,struct session*,struct winlink*,struct cmdq_item*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum cmd_retval
FUNC4(struct cmd *self, struct cmdq_item *item)
{
	struct args	*args = self->args;
	struct session	*s = item->target.s;
	struct winlink	*wl = item->target.wl;

	if (FUNC0(args, 'a'))
		FUNC1(self, item);
	else if (FUNC0(args, 's'))
		FUNC2(self, s, item, 1);
	else
		FUNC3(self, s, wl, item, 0);

	return (CMD_RETURN_NORMAL);
}