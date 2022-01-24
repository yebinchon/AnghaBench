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
struct winlink {TYPE_1__* window; } ;
struct window_tree_itemdata {scalar_t__ type; int /*<<< orphan*/  pane; int /*<<< orphan*/  winlink; int /*<<< orphan*/  session; } ;
struct window_pane {int dummy; } ;
struct session {int /*<<< orphan*/  windows; struct winlink* curw; } ;
struct TYPE_2__ {struct window_pane* active; } ;

/* Variables and functions */
 scalar_t__ WINDOW_TREE_SESSION ; 
 scalar_t__ WINDOW_TREE_WINDOW ; 
 struct session* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct window_pane*) ; 
 struct window_pane* FUNC2 (int /*<<< orphan*/ ) ; 
 struct winlink* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct window_tree_itemdata *item, struct session **sp,
    struct winlink **wlp, struct window_pane **wp)
{
	*wp = NULL;
	*wlp = NULL;
	*sp = FUNC0(item->session);
	if (*sp == NULL)
		return;
	if (item->type == WINDOW_TREE_SESSION) {
		*wlp = (*sp)->curw;
		*wp = (*wlp)->window->active;
		return;
	}

	*wlp = FUNC3(&(*sp)->windows, item->winlink);
	if (*wlp == NULL) {
		*sp = NULL;
		return;
	}
	if (item->type == WINDOW_TREE_WINDOW) {
		*wp = (*wlp)->window->active;
		return;
	}

	*wp = FUNC2(item->pane);
	if (!FUNC1((*wlp)->window, *wp))
		*wp = NULL;
	if (*wp == NULL) {
		*sp = NULL;
		*wlp = NULL;
		return;
	}
}