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
typedef  int u_int ;
struct mode_tree_menu {int line; int /*<<< orphan*/  itemdata; struct client* c; struct mode_tree_data* data; } ;
struct mode_tree_item {int /*<<< orphan*/  itemdata; int /*<<< orphan*/  name; } ;
struct mode_tree_data {int offset; int line_size; int current; int /*<<< orphan*/  references; struct menu_item* menu; TYPE_1__* line_list; } ;
struct menu_item {int dummy; } ;
struct menu {int dummy; } ;
struct client {int dummy; } ;
struct TYPE_2__ {struct mode_tree_item* item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct menu*,struct menu_item const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct menu* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct menu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,struct client*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mode_tree_menu*) ; 
 int /*<<< orphan*/  FUNC4 (struct menu*) ; 
 int /*<<< orphan*/  mode_tree_menu_callback ; 
 struct menu_item* mode_tree_menu_items ; 
 int /*<<< orphan*/  FUNC5 (char**,char*,int /*<<< orphan*/ ) ; 
 struct mode_tree_menu* FUNC6 (int) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(struct mode_tree_data *mtd, struct client *c, u_int x,
    u_int y, int outside)
{
	struct mode_tree_item	*mti;
	struct menu		*menu;
	const struct menu_item	*items;
	struct mode_tree_menu	*mtm;
	char			*title;
	u_int			 line;

	if (mtd->offset + y > mtd->line_size - 1)
		line = mtd->current;
	else
		line = mtd->offset + y;
	mti = mtd->line_list[line].item;

	if (!outside) {
		items = mtd->menu;
		FUNC5(&title, "#[align=centre]%s", mti->name);
	} else {
		items = mode_tree_menu_items;
		title = FUNC7("");
	}
	menu = FUNC2(title);
	FUNC1(menu, items, NULL, NULL, NULL);
	FUNC0(title);

	mtm = FUNC6(sizeof *mtm);
	mtm->data = mtd;
	mtm->c = c;
	mtm->line = line;
	mtm->itemdata = mti->itemdata;
	mtd->references++;

	if (FUNC3(menu, 0, NULL, x, y, c, NULL, mode_tree_menu_callback,
	    mtm) != 0)
		FUNC4(menu);
}