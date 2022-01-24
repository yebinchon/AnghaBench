#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_int ;
struct window_pane {void* sx; void* sy; void* yoff; void* xoff; int /*<<< orphan*/  flags; int /*<<< orphan*/  options; struct window* window; struct layout_cell* layout_cell; } ;
struct window {struct window_pane* last; struct window_pane* active; int /*<<< orphan*/  options; int /*<<< orphan*/  panes; } ;
struct layout_cell {struct window_pane* wp; } ;
struct TYPE_8__ {struct window_pane* wp; TYPE_3__* wl; } ;
struct TYPE_6__ {struct window_pane* wp; TYPE_1__* wl; } ;
struct cmdq_item {TYPE_4__ source; TYPE_2__ target; } ;
struct cmd {struct args* args; } ;
struct args {int dummy; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_7__ {struct window* window; } ;
struct TYPE_5__ {struct window* window; } ;

/* Variables and functions */
 int CMD_RETURN_NORMAL ; 
 int /*<<< orphan*/  PANE_STYLECHANGED ; 
 struct window_pane* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct window_pane*,struct window_pane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct window_pane*,int /*<<< orphan*/ ) ; 
 struct window_pane* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct window_pane* FUNC4 (struct window_pane*,int /*<<< orphan*/ ) ; 
 struct window_pane* FUNC5 (struct window_pane*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct window_pane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct window_pane*,struct window_pane*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct args*,char) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct window*) ; 
 int /*<<< orphan*/  FUNC11 (struct window_pane*,void*,void*) ; 
 int /*<<< orphan*/  window_panes ; 
 scalar_t__ FUNC12 (struct window*) ; 
 scalar_t__ FUNC13 (struct window*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct window*,struct window_pane*,int) ; 

__attribute__((used)) static enum cmd_retval
FUNC15(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct window		*src_w, *dst_w;
	struct window_pane	*tmp_wp, *src_wp, *dst_wp;
	struct layout_cell	*src_lc, *dst_lc;
	u_int			 sx, sy, xoff, yoff;

	dst_w = item->target.wl->window;
	dst_wp = item->target.wp;
	src_w = item->source.wl->window;
	src_wp = item->source.wp;

	if (FUNC13(dst_w, FUNC8(args, 'Z')))
		FUNC10(dst_w);

	if (FUNC8(args, 'D')) {
		src_w = dst_w;
		src_wp = FUNC4(dst_wp, entry);
		if (src_wp == NULL)
			src_wp = FUNC0(&dst_w->panes);
	} else if (FUNC8(args, 'U')) {
		src_w = dst_w;
		src_wp = FUNC5(dst_wp, window_panes, entry);
		if (src_wp == NULL)
			src_wp = FUNC3(&dst_w->panes, window_panes);
	}

	if (src_w != dst_w && FUNC13(src_w, FUNC8(args, 'Z')))
		FUNC10(src_w);

	if (src_wp == dst_wp)
		goto out;

	tmp_wp = FUNC5(dst_wp, window_panes, entry);
	FUNC6(&dst_w->panes, dst_wp, entry);
	FUNC7(&src_w->panes, src_wp, dst_wp, entry);
	if (tmp_wp == src_wp)
		tmp_wp = dst_wp;
	if (tmp_wp == NULL)
		FUNC2(&dst_w->panes, src_wp, entry);
	else
		FUNC1(&dst_w->panes, tmp_wp, src_wp, entry);

	src_lc = src_wp->layout_cell;
	dst_lc = dst_wp->layout_cell;
	src_lc->wp = dst_wp;
	dst_wp->layout_cell = src_lc;
	dst_lc->wp = src_wp;
	src_wp->layout_cell = dst_lc;

	src_wp->window = dst_w;
	FUNC9(src_wp->options, dst_w->options);
	src_wp->flags |= PANE_STYLECHANGED;
	dst_wp->window = src_w;
	FUNC9(dst_wp->options, src_w->options);
	dst_wp->flags |= PANE_STYLECHANGED;

	sx = src_wp->sx; sy = src_wp->sy;
	xoff = src_wp->xoff; yoff = src_wp->yoff;
	src_wp->xoff = dst_wp->xoff; src_wp->yoff = dst_wp->yoff;
	FUNC11(src_wp, dst_wp->sx, dst_wp->sy);
	dst_wp->xoff = xoff; dst_wp->yoff = yoff;
	FUNC11(dst_wp, sx, sy);

	if (!FUNC8(args, 'd')) {
		if (src_w != dst_w) {
			FUNC14(src_w, dst_wp, 1);
			FUNC14(dst_w, src_wp, 1);
		} else {
			tmp_wp = dst_wp;
			FUNC14(src_w, tmp_wp, 1);
		}
	} else {
		if (src_w->active == src_wp)
			FUNC14(src_w, dst_wp, 1);
		if (dst_w->active == dst_wp)
			FUNC14(dst_w, src_wp, 1);
	}
	if (src_w != dst_w) {
		if (src_w->last == src_wp)
			src_w->last = NULL;
		if (dst_w->last == dst_wp)
			dst_w->last = NULL;
	}
	FUNC10(src_w);
	FUNC10(dst_w);

out:
	if (FUNC12(src_w))
		FUNC10(src_w);
	if (src_w != dst_w && FUNC12(dst_w))
		FUNC10(dst_w);
	return (CMD_RETURN_NORMAL);
}