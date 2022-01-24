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
struct mode_tree_item {int /*<<< orphan*/  itemdata; int /*<<< orphan*/  name; struct mode_tree_item* parent; int /*<<< orphan*/  children; } ;
struct mode_tree_data {size_t current; int /*<<< orphan*/ * search; int /*<<< orphan*/  modedata; scalar_t__ (* searchcb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  children; TYPE_1__* line_list; } ;
struct TYPE_2__ {struct mode_tree_item* item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mode_tree_item* FUNC1 (int /*<<< orphan*/ *) ; 
 struct mode_tree_item* FUNC2 (struct mode_tree_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mode_tree_item *
FUNC5(struct mode_tree_data *mtd)
{
	struct mode_tree_item	*mti, *last, *next;

	if (mtd->search == NULL)
		return (NULL);

	mti = last = mtd->line_list[mtd->current].item;
	for (;;) {
		if (!FUNC0(&mti->children))
			mti = FUNC1(&mti->children);
		else if ((next = FUNC2(mti, entry)) != NULL)
			mti = next;
		else {
			for (;;) {
				mti = mti->parent;
				if (mti == NULL)
					break;
				if ((next = FUNC2(mti, entry)) != NULL) {
					mti = next;
					break;
				}
			}
		}
		if (mti == NULL)
			mti = FUNC1(&mtd->children);
		if (mti == last)
			break;

		if (mtd->searchcb == NULL) {
			if (FUNC3(mti->name, mtd->search) != NULL)
				return (mti);
			continue;
		}
		if (mtd->searchcb(mtd->modedata, mti->itemdata, mtd->search))
			return (mti);
	}
	return (NULL);
}