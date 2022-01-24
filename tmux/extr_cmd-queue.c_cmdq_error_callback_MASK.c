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
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct cmdq_item*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static enum cmd_retval
FUNC2(struct cmdq_item *item, void *data)
{
	char	*error = data;

	FUNC0(item, "%s", error);
	FUNC1(error);

	return (CMD_RETURN_NORMAL);
}