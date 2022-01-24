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
struct mode_tree_item {int /*<<< orphan*/  children; struct mode_tree_item* parent; } ;
struct mode_tree_data {int /*<<< orphan*/  children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mode_tree_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC1 (struct mode_tree_item*) ; 

void
FUNC2(struct mode_tree_data *mtd, struct mode_tree_item *mti)
{
	struct mode_tree_item	*parent = mti->parent;

	if (parent != NULL)
		FUNC0(&parent->children, mti, entry);
	else
		FUNC0(&mtd->children, mti, entry);
	FUNC1(mti);
}