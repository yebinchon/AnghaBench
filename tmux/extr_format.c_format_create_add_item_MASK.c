#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct window_pane {int /*<<< orphan*/  id; } ;
struct mouse_event {scalar_t__ valid; } ;
struct format_tree {int /*<<< orphan*/  m; } ;
struct cmdq_item {TYPE_3__* shared; TYPE_2__* cmd; } ;
struct TYPE_6__ {struct mouse_event mouse; int /*<<< orphan*/ * formats; } ;
struct TYPE_5__ {TYPE_1__* entry; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct window_pane*,struct mouse_event*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct window_pane* FUNC1 (struct mouse_event*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct format_tree*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct format_tree*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  format_cb_mouse_line ; 
 int /*<<< orphan*/  format_cb_mouse_word ; 
 int /*<<< orphan*/  FUNC4 (struct format_tree*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mouse_event*,int) ; 

__attribute__((used)) static void
FUNC6(struct format_tree *ft, struct cmdq_item *item)
{
	struct mouse_event	*m;
	struct window_pane	*wp;
	u_int			 x, y;

	if (item->cmd != NULL)
		FUNC2(ft, "command", "%s", item->cmd->entry->name);

	if (item->shared == NULL)
		return;
	if (item->shared->formats != NULL)
		FUNC4(ft, item->shared->formats);

	m = &item->shared->mouse;
	if (m->valid && ((wp = FUNC1(m, NULL, NULL)) != NULL)) {
		FUNC2(ft, "mouse_pane", "%%%u", wp->id);
		if (FUNC0(wp, m, &x, &y, 0) == 0) {
			FUNC2(ft, "mouse_x", "%u", x);
			FUNC2(ft, "mouse_y", "%u", y);
			FUNC3(ft, "mouse_word", format_cb_mouse_word);
			FUNC3(ft, "mouse_line", format_cb_mouse_line);
		}
	}
	FUNC5(&ft->m, m, sizeof ft->m);
}