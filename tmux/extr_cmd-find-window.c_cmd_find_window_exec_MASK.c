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
struct window_pane {int dummy; } ;
struct TYPE_2__ {struct window_pane* wp; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct args {char** argv; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct args*) ; 
 int FUNC1 (struct args*,char) ; 
 struct args* FUNC2 (char*,int,char**) ; 
 int /*<<< orphan*/  FUNC3 (struct args*,float,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct window_pane*,int /*<<< orphan*/ *,TYPE_1__*,struct args*) ; 
 int /*<<< orphan*/  window_tree_mode ; 
 int /*<<< orphan*/  FUNC6 (char**,char*,char const*,...) ; 

__attribute__((used)) static enum cmd_retval
FUNC7(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args, *new_args;
	struct window_pane	*wp = item->target.wp;
	const char		*s = args->argv[0];
	char			*filter, *argv = { NULL };
	int			 C, N, T;

	C = FUNC1(args, 'C');
	N = FUNC1(args, 'N');
	T = FUNC1(args, 'T');

	if (!C && !N && !T)
		C = N = T = 1;

	if (!FUNC1(args, 'r')) {
		if (C && N && T) {
			FUNC6(&filter,
			    "#{||:"
			    "#{C:%s},#{||:#{m:*%s*,#{window_name}},"
			    "#{m:*%s*,#{pane_title}}}}",
			    s, s, s);
		} else if (C && N) {
			FUNC6(&filter,
			    "#{||:#{C:%s},#{m:*%s*,#{window_name}}}",
			    s, s);
		} else if (C && T) {
			FUNC6(&filter,
			    "#{||:#{C:%s},#{m:*%s*,#{pane_title}}}",
			    s, s);
		} else if (N && T) {
			FUNC6(&filter,
			    "#{||:#{m:*%s*,#{window_name}},"
			    "#{m:*%s*,#{pane_title}}}",
			    s, s);
		} else if (C)
			FUNC6(&filter, "#{C:%s}", s);
		else if (N)
			FUNC6(&filter, "#{m:*%s*,#{window_name}}", s);
		else
			FUNC6(&filter, "#{m:*%s*,#{pane_title}}", s);
	} else {
		if (C && N && T) {
			FUNC6(&filter,
			    "#{||:"
			    "#{C/r:%s},#{||:#{m/r:%s,#{window_name}},"
			    "#{m/r:%s,#{pane_title}}}}",
			    s, s, s);
		} else if (C && N) {
			FUNC6(&filter,
			    "#{||:#{C/r:%s},#{m/r:%s,#{window_name}}}",
			    s, s);
		} else if (C && T) {
			FUNC6(&filter,
			    "#{||:#{C/r:%s},#{m/r:%s,#{pane_title}}}",
			    s, s);
		} else if (N && T) {
			FUNC6(&filter,
			    "#{||:#{m/r:%s,#{window_name}},"
			    "#{m/r:%s,#{pane_title}}}",
			    s, s);
		} else if (C)
			FUNC6(&filter, "#{C/r:%s}", s);
		else if (N)
			FUNC6(&filter, "#{m/r:%s,#{window_name}}", s);
		else
			FUNC6(&filter, "#{m/r:%s,#{pane_title}}", s);
	}

	new_args = FUNC2("", 1, &argv);
	if (FUNC1(args, 'Z'))
		FUNC3(new_args, 'Z', NULL);
	FUNC3(new_args, 'f', filter);

	FUNC5(wp, &window_tree_mode, &item->target, new_args);

	FUNC0(new_args);
	FUNC4(filter);

	return (CMD_RETURN_NORMAL);
}