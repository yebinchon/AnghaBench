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
struct winlink {struct window* window; } ;
struct window_pane {int dummy; } ;
struct window {char* old_layout; int lastlayout; int /*<<< orphan*/  layout_root; } ;
struct TYPE_2__ {struct window_pane* wp; struct winlink* wl; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {int /*<<< orphan*/ * entry; struct args* args; } ;
struct args {scalar_t__ argc; char** argv; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 scalar_t__ FUNC0 (struct args*,char) ; 
 int /*<<< orphan*/  cmd_next_layout_entry ; 
 int /*<<< orphan*/  cmd_previous_layout_entry ; 
 int /*<<< orphan*/  FUNC1 (struct cmdq_item*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct window*,char const*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct window*) ; 
 int /*<<< orphan*/  FUNC7 (struct window*) ; 
 int /*<<< orphan*/  FUNC8 (struct window*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct window_pane*) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct window*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct window*) ; 
 int /*<<< orphan*/  FUNC13 (struct window*) ; 

__attribute__((used)) static enum cmd_retval
FUNC14(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct winlink		*wl = item->target.wl;
	struct window		*w = wl->window;
	struct window_pane	*wp = item->target.wp;
	const char		*layoutname;
	char			*oldlayout;
	int			 next, previous, layout;

	FUNC13(w);

	next = self->entry == &cmd_next_layout_entry;
	if (FUNC0(args, 'n'))
		next = 1;
	previous = self->entry == &cmd_previous_layout_entry;
	if (FUNC0(args, 'p'))
		previous = 1;

	oldlayout = w->old_layout;
	w->old_layout = FUNC3(w->layout_root);

	if (next || previous) {
		if (next)
			FUNC6(w);
		else
			FUNC7(w);
		goto changed;
	}

	if (FUNC0(args, 'E')) {
		FUNC9(wp);
		goto changed;
	}

	if (!FUNC0(args, 'o')) {
		if (args->argc == 0)
			layout = w->lastlayout;
		else
			layout = FUNC5(args->argv[0]);
		if (layout != -1) {
			FUNC8(w, layout);
			goto changed;
		}
	}

	if (args->argc != 0)
		layoutname = args->argv[0];
	else if (FUNC0(args, 'o'))
		layoutname = oldlayout;
	else
		layoutname = NULL;

	if (layoutname != NULL) {
		if (FUNC4(w, layoutname) == -1) {
			FUNC1(item, "can't set layout: %s", layoutname);
			goto error;
		}
		goto changed;
	}

	FUNC2(oldlayout);
	return (CMD_RETURN_NORMAL);

changed:
	FUNC2(oldlayout);
	FUNC11();
	FUNC12(w);
	FUNC10("window-layout-changed", w);
	return (CMD_RETURN_NORMAL);

error:
	FUNC2(w->old_layout);
	w->old_layout = oldlayout;
	return (CMD_RETURN_ERROR);
}