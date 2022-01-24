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
struct cmdq_item {struct client* client; } ;
struct client {int dummy; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct cmdq_item*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct client*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static enum cmd_retval
FUNC3(struct cmdq_item *item, void *data)
{
	struct client	*c = item->client;
	char		*error = data;

	FUNC0(item, "begin", 1);
	FUNC1(c, "parse error: %s", error);
	FUNC0(item, "error", 1);

	FUNC2(error);
	return (CMD_RETURN_NORMAL);
}