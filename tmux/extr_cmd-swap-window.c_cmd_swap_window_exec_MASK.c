#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct winlink {int /*<<< orphan*/  idx; struct window* window; } ;
struct window {int /*<<< orphan*/  winlinks; } ;
struct session_group {int dummy; } ;
struct session {int dummy; } ;
struct TYPE_4__ {struct session* s; struct winlink* wl; } ;
struct TYPE_3__ {struct session* s; struct winlink* wl; } ;
struct cmdq_item {TYPE_2__ target; TYPE_1__ source; } ;
struct cmd {int /*<<< orphan*/  args; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct winlink*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct winlink*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (struct cmdq_item*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct session*) ; 
 struct session_group* FUNC6 (struct session*) ; 
 int /*<<< orphan*/  FUNC7 (struct session*) ; 
 int /*<<< orphan*/  FUNC8 (struct session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wentry ; 

__attribute__((used)) static enum cmd_retval
FUNC9(struct cmd *self, struct cmdq_item *item)
{
	struct session		*src, *dst;
	struct session_group	*sg_src, *sg_dst;
	struct winlink		*wl_src, *wl_dst;
	struct window		*w_src, *w_dst;

	wl_src = item->source.wl;
	src = item->source.s;
	sg_src = FUNC6(src);

	wl_dst = item->target.wl;
	dst = item->target.s;
	sg_dst = FUNC6(dst);

	if (src != dst && sg_src != NULL && sg_dst != NULL &&
	    sg_src == sg_dst) {
		FUNC3(item, "can't move window, sessions are grouped");
		return (CMD_RETURN_ERROR);
	}

	if (wl_dst->window == wl_src->window)
		return (CMD_RETURN_NORMAL);

	w_dst = wl_dst->window;
	FUNC1(&w_dst->winlinks, wl_dst, wentry);
	w_src = wl_src->window;
	FUNC1(&w_src->winlinks, wl_src, wentry);

	wl_dst->window = w_src;
	FUNC0(&w_src->winlinks, wl_dst, wentry);
	wl_src->window = w_dst;
	FUNC0(&w_dst->winlinks, wl_src, wentry);

	if (FUNC2(self->args, 'd')) {
		FUNC8(dst, wl_dst->idx);
		if (src != dst)
			FUNC8(src, wl_src->idx);
	}
	FUNC7(src);
	FUNC5(src);
	if (src != dst) {
		FUNC7(dst);
		FUNC5(dst);
	}
	FUNC4();

	return (CMD_RETURN_NORMAL);
}