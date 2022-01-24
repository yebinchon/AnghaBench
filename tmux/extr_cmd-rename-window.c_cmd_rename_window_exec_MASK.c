#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct winlink {TYPE_2__* window; } ;
struct session {int dummy; } ;
struct TYPE_4__ {struct winlink* wl; struct session* s; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct client {int dummy; } ;
struct args {int /*<<< orphan*/ * argv; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_5__ {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int CMD_RETURN_NORMAL ; 
 struct client* FUNC0 (struct cmdq_item*,int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (struct cmdq_item*,int /*<<< orphan*/ ,struct client*,struct session*,struct winlink*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 

__attribute__((used)) static enum cmd_retval
FUNC6(struct cmd *self, struct cmdq_item *item)
{
	struct args	*args = self->args;
	struct client	*c = FUNC0(item, NULL, 1);
	struct session	*s = item->target.s;
	struct winlink	*wl = item->target.wl;
	char		*newname;

	newname = FUNC1(item, args->argv[0], c, s, wl, NULL);
	FUNC5(wl->window, newname);
	FUNC3(wl->window->options, "automatic-rename", 0);

	FUNC4(wl->window);
	FUNC2(newname);

	return (CMD_RETURN_NORMAL);
}