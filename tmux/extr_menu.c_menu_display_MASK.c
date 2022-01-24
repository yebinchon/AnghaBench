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
typedef  void* u_int ;
struct menu_data {int flags; int choice; void* data; int /*<<< orphan*/  cb; struct menu* menu; void* py; void* px; int /*<<< orphan*/  s; int /*<<< orphan*/  fs; struct cmdq_item* item; } ;
struct menu {scalar_t__ width; scalar_t__ count; } ;
struct cmdq_item {int dummy; } ;
struct cmd_find_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ sx; scalar_t__ sy; } ;
struct client {TYPE_1__ tty; } ;
typedef  int /*<<< orphan*/  menu_choice_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cmd_find_state*) ; 
 int /*<<< orphan*/  menu_draw_cb ; 
 int /*<<< orphan*/  menu_free_cb ; 
 int /*<<< orphan*/  menu_key_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct menu_data*) ; 
 struct menu_data* FUNC3 (int,int) ; 

int
FUNC4(struct menu *menu, int flags, struct cmdq_item *item, u_int px,
    u_int py, struct client *c, struct cmd_find_state *fs, menu_choice_cb cb,
    void *data)
{
	struct menu_data	*md;

	if (c->tty.sx < menu->width + 4 || c->tty.sy < menu->count + 2)
		return (-1);

	md = FUNC3(1, sizeof *md);
	md->item = item;
	md->flags = flags;

	if (fs != NULL)
		FUNC0(&md->fs, fs);
	FUNC1(&md->s, menu->width + 4, menu->count + 2, 0);

	md->px = px;
	md->py = py;

	md->menu = menu;
	md->choice = -1;

	md->cb = cb;
	md->data = data;

	FUNC2(c, 0, menu_draw_cb, menu_key_cb, menu_free_cb,
	    md);
	return (0);
}