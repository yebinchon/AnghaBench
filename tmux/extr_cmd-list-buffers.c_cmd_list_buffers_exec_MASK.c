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
struct paste_buffer {int dummy; } ;
struct format_tree {int dummy; } ;
struct cmdq_item {int /*<<< orphan*/  client; } ;
struct cmd {struct args* args; } ;
struct args {int dummy; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_NORMAL ; 
 int /*<<< orphan*/  FORMAT_NONE ; 
 char* LIST_BUFFERS_TEMPLATE ; 
 char* FUNC0 (struct args*,float) ; 
 int /*<<< orphan*/  FUNC1 (struct cmdq_item*,char*,char*) ; 
 struct format_tree* FUNC2 (int /*<<< orphan*/ ,struct cmdq_item*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct format_tree*,struct paste_buffer*) ; 
 char* FUNC4 (struct format_tree*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct format_tree*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct paste_buffer* FUNC7 (struct paste_buffer*) ; 

__attribute__((used)) static enum cmd_retval
FUNC8(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct paste_buffer	*pb;
	struct format_tree	*ft;
	char			*line;
	const char		*template;

	if ((template = FUNC0(args, 'F')) == NULL)
		template = LIST_BUFFERS_TEMPLATE;

	pb = NULL;
	while ((pb = FUNC7(pb)) != NULL) {
		ft = FUNC2(item->client, item, FORMAT_NONE, 0);
		FUNC3(ft, pb);

		line = FUNC4(ft, template);
		FUNC1(item, "%s", line);
		FUNC6(line);

		FUNC5(ft);
	}

	return (CMD_RETURN_NORMAL);
}