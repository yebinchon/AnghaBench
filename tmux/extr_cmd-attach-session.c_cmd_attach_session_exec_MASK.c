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
struct args {int dummy; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct args*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct args*,char) ; 
 int FUNC2 (struct cmdq_item*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum cmd_retval
FUNC3(struct cmd *self, struct cmdq_item *item)
{
	struct args	*args = self->args;

	return (FUNC2(item, FUNC0(args, 't'),
	    FUNC1(args, 'd'), FUNC1(args, 'x'), FUNC1(args, 'r'),
	    FUNC0(args, 'c'), FUNC1(args, 'E')));
}