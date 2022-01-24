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
struct cmdq_item {TYPE_1__* cmd; } ;
struct cmd_find_state {int dummy; } ;
struct cmd_entry_flag {scalar_t__ flag; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_2__ {int /*<<< orphan*/  args; } ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 char* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_find_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cmd_find_state*,struct cmdq_item*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum cmd_retval
FUNC3(struct cmdq_item *item, struct cmd_find_state *fs,
    const struct cmd_entry_flag *flag)
{
	const char	*value;

	if (flag->flag == 0) {
		FUNC1(fs, 0);
		return (CMD_RETURN_NORMAL);
	}

	value = FUNC0(item->cmd->args, flag->flag);
	if (FUNC2(fs, item, value, flag->type, flag->flags) != 0) {
		FUNC1(fs, 0);
		return (CMD_RETURN_ERROR);
	}
	return (CMD_RETURN_NORMAL);
}