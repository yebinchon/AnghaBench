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
typedef  scalar_t__ uint64_t ;
struct screen {int dummy; } ;
struct mode_tree_data {size_t current; int height; int line_size; scalar_t__ preview; int /*<<< orphan*/  width; TYPE_2__* line_list; int /*<<< orphan*/  children; int /*<<< orphan*/  saved; int /*<<< orphan*/  sort_crit; int /*<<< orphan*/  modedata; int /*<<< orphan*/  (* buildcb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ;scalar_t__ no_matches; int /*<<< orphan*/ * filter; struct screen screen; } ;
struct TYPE_4__ {TYPE_1__* item; } ;
struct TYPE_3__ {scalar_t__ tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC3 (struct mode_tree_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mode_tree_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct mode_tree_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mode_tree_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct screen*) ; 
 int FUNC9 (struct screen*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 

void
FUNC12(struct mode_tree_data *mtd)
{
	struct screen	*s = &mtd->screen;
	uint64_t	 tag;

	if (mtd->line_list != NULL)
		tag = mtd->line_list[mtd->current].item->tag;
	else
		tag = UINT64_MAX;

	FUNC0(&mtd->saved, &mtd->children, entry);
	FUNC2(&mtd->children);

	mtd->buildcb(mtd->modedata, &mtd->sort_crit, &tag, mtd->filter);
	mtd->no_matches = FUNC1(&mtd->children);
	if (mtd->no_matches)
		mtd->buildcb(mtd->modedata, &mtd->sort_crit, &tag, NULL);

	FUNC6(&mtd->saved);
	FUNC2(&mtd->saved);

	FUNC5(mtd);
	FUNC3(mtd, &mtd->children, 0);

	if (tag == UINT64_MAX)
		tag = mtd->line_list[mtd->current].item->tag;
	FUNC7(mtd, tag);

	mtd->width = FUNC8(s);
	if (mtd->preview) {
		mtd->height = (FUNC9(s) / 3) * 2;
		if (mtd->height > mtd->line_size)
			mtd->height = FUNC9(s) / 2;
		if (mtd->height < 10)
			mtd->height = FUNC9(s);
		if (FUNC9(s) - mtd->height < 2)
			mtd->height = FUNC9(s);
	} else
		mtd->height = FUNC9(s);
	FUNC4(mtd);
}