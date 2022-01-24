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
typedef  size_t u_int ;
struct window_pane {int /*<<< orphan*/  base; } ;
struct screen {int /*<<< orphan*/  mode; } ;
struct TYPE_2__ {size_t field; scalar_t__ reversed; } ;
struct mode_tree_data {int references; char const** sort_list; size_t sort_size; int preview; struct screen screen; int /*<<< orphan*/  children; int /*<<< orphan*/  menucb; int /*<<< orphan*/  searchcb; int /*<<< orphan*/  drawcb; int /*<<< orphan*/  buildcb; int /*<<< orphan*/ * filter; TYPE_1__ sort_crit; struct menu_item const* menu; void* modedata; struct window_pane* wp; } ;
struct menu_item {int dummy; } ;
struct args {int dummy; } ;
typedef  int /*<<< orphan*/  mode_tree_search_cb ;
typedef  int /*<<< orphan*/  mode_tree_menu_cb ;
typedef  int /*<<< orphan*/  mode_tree_draw_cb ;
typedef  int /*<<< orphan*/  mode_tree_build_cb ;

/* Variables and functions */
 int /*<<< orphan*/  MODE_CURSOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (struct args*,float) ; 
 scalar_t__ FUNC2 (struct args*,float) ; 
 int /*<<< orphan*/  FUNC3 (struct screen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 struct mode_tree_data* FUNC7 (int,int) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 

struct mode_tree_data *
FUNC9(struct window_pane *wp, struct args *args,
    mode_tree_build_cb buildcb, mode_tree_draw_cb drawcb,
    mode_tree_search_cb searchcb, mode_tree_menu_cb menucb, void *modedata,
    const struct menu_item *menu, const char **sort_list, u_int sort_size,
    struct screen **s)
{
	struct mode_tree_data	*mtd;
	const char		*sort;
	u_int			 i;

	mtd = FUNC7(1, sizeof *mtd);
	mtd->references = 1;

	mtd->wp = wp;
	mtd->modedata = modedata;
	mtd->menu = menu;

	mtd->sort_list = sort_list;
	mtd->sort_size = sort_size;

	mtd->preview = !FUNC2(args, 'N');

	sort = FUNC1(args, 'O');
	if (sort != NULL) {
		for (i = 0; i < sort_size; i++) {
			if (FUNC6(sort, sort_list[i]) == 0)
				mtd->sort_crit.field = i;
		}
	}
	mtd->sort_crit.reversed = FUNC2(args, 'r');

	if (FUNC2(args, 'f'))
		mtd->filter = FUNC8(FUNC1(args, 'f'));
	else
		mtd->filter = NULL;

	mtd->buildcb = buildcb;
	mtd->drawcb = drawcb;
	mtd->searchcb = searchcb;
	mtd->menucb = menucb;

	FUNC0(&mtd->children);

	*s = &mtd->screen;
	FUNC3(*s, FUNC4(&wp->base), FUNC5(&wp->base), 0);
	(*s)->mode &= ~MODE_CURSOR;

	return (mtd);
}