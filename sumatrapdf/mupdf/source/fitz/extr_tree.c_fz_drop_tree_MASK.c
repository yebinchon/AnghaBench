#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* value; struct TYPE_5__* key; struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef  TYPE_1__ fz_tree ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__ tree_sentinel ; 

void FUNC1(fz_context *ctx, fz_tree *node, void (*dropfunc)(fz_context *ctx, void *value))
{
	if (node)
	{
		if (node->left != &tree_sentinel)
			FUNC1(ctx, node->left, dropfunc);
		if (node->right != &tree_sentinel)
			FUNC1(ctx, node->right, dropfunc);
		FUNC0(ctx, node->key);
		if (dropfunc)
			dropfunc(ctx, node->value);
		FUNC0(ctx, node);
	}
}