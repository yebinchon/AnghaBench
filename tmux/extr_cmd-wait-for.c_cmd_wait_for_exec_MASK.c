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
struct wait_channel {char const* name; } ;
struct cmdq_item {int dummy; } ;
struct cmd {struct args* args; } ;
struct args {char** argv; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 struct wait_channel* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct wait_channel*) ; 
 scalar_t__ FUNC1 (struct args*,unsigned char) ; 
 int FUNC2 (struct cmdq_item*,char const*,struct wait_channel*) ; 
 int FUNC3 (struct cmdq_item*,char const*,struct wait_channel*) ; 
 int FUNC4 (struct cmdq_item*,char const*,struct wait_channel*) ; 
 int FUNC5 (struct cmdq_item*,char const*,struct wait_channel*) ; 
 int /*<<< orphan*/  wait_channels ; 

__attribute__((used)) static enum cmd_retval
FUNC6(struct cmd *self, struct cmdq_item *item)
{
	struct args     	*args = self->args;
	const char		*name = args->argv[0];
	struct wait_channel	*wc, wc0;

	wc0.name = name;
	wc = FUNC0(wait_channels, &wait_channels, &wc0);

	if (FUNC1(args, 'S'))
		return (FUNC3(item, name, wc));
	if (FUNC1(args, 'L'))
		return (FUNC2(item, name, wc));
	if (FUNC1(args, 'U'))
		return (FUNC4(item, name, wc));
	return (FUNC5(item, name, wc));
}