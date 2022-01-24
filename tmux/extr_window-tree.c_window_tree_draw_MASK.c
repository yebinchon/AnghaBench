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
typedef  int /*<<< orphan*/  u_int ;
struct winlink {int /*<<< orphan*/  window; } ;
struct window_tree_itemdata {int type; } ;
struct window_pane {int /*<<< orphan*/  base; } ;
struct session {int dummy; } ;
struct screen_write_ctx {int dummy; } ;

/* Variables and functions */
#define  WINDOW_TREE_NONE 131 
#define  WINDOW_TREE_PANE 130 
#define  WINDOW_TREE_SESSION 129 
#define  WINDOW_TREE_WINDOW 128 
 int /*<<< orphan*/  FUNC0 (struct screen_write_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct session*,struct screen_write_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct session*,int /*<<< orphan*/ ,struct screen_write_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct window_tree_itemdata*,struct session**,struct winlink**,struct window_pane**) ; 

__attribute__((used)) static void
FUNC4(void *modedata, void *itemdata, struct screen_write_ctx *ctx,
    u_int sx, u_int sy)
{
	struct window_tree_itemdata	*item = itemdata;
	struct session			*sp;
	struct winlink			*wlp;
	struct window_pane		*wp;

	FUNC3(item, &sp, &wlp, &wp);
	if (wp == NULL)
		return;

	switch (item->type) {
	case WINDOW_TREE_NONE:
		break;
	case WINDOW_TREE_SESSION:
		FUNC1(modedata, sp, ctx, sx, sy);
		break;
	case WINDOW_TREE_WINDOW:
		FUNC2(modedata, sp, wlp->window, ctx, sx, sy);
		break;
	case WINDOW_TREE_PANE:
		FUNC0(ctx, &wp->base, sx, sy);
		break;
	}
}