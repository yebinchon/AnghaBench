#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {size_t avl_offset; int avl_numnodes; TYPE_2__* avl_root; } ;
typedef  TYPE_1__ avl_tree_t ;
struct TYPE_12__ {struct TYPE_12__** avl_child; } ;
typedef  TYPE_2__ avl_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (void*,size_t) ; 
 void* FUNC2 (TYPE_2__*,size_t) ; 
 int FUNC3 (TYPE_2__*) ; 
 uintptr_t FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 uintptr_t CHILDBIT ; 
 void* FUNC6 (TYPE_1__*) ; 

void *
FUNC7(avl_tree_t *tree, void **cookie)
{
	avl_node_t	*node;
	avl_node_t	*parent;
	int		child;
	void		*first;
	size_t		off = tree->avl_offset;

	/*
	 * Initial calls go to the first node or it's right descendant.
	 */
	if (*cookie == NULL) {
		first = FUNC6(tree);

		/*
		 * deal with an empty tree
		 */
		if (first == NULL) {
			*cookie = (void *)CHILDBIT;
			return (NULL);
		}

		node = FUNC1(first, off);
		parent = FUNC5(node);
		goto check_right_side;
	}

	/*
	 * If there is no parent to return to we are done.
	 */
	parent = (avl_node_t *)((uintptr_t)(*cookie) & ~CHILDBIT);
	if (parent == NULL) {
		if (tree->avl_root != NULL) {
			FUNC0(tree->avl_numnodes == 1);
			tree->avl_root = NULL;
			tree->avl_numnodes = 0;
		}
		return (NULL);
	}

	/*
	 * Remove the child pointer we just visited from the parent and tree.
	 */
	child = (uintptr_t)(*cookie) & CHILDBIT;
	parent->avl_child[child] = NULL;
	FUNC0(tree->avl_numnodes > 1);
	--tree->avl_numnodes;

	/*
	 * If we just did a right child or there isn't one, go up to parent.
	 */
	if (child == 1 || parent->avl_child[1] == NULL) {
		node = parent;
		parent = FUNC5(parent);
		goto done;
	}

	/*
	 * Do parent's right child, then leftmost descendent.
	 */
	node = parent->avl_child[1];
	while (node->avl_child[0] != NULL) {
		parent = node;
		node = node->avl_child[0];
	}

	/*
	 * If here, we moved to a left child. It may have one
	 * child on the right (when balance == +1).
	 */
check_right_side:
	if (node->avl_child[1] != NULL) {
		FUNC0(FUNC3(node) == 1);
		parent = node;
		node = node->avl_child[1];
		FUNC0(node->avl_child[0] == NULL &&
		    node->avl_child[1] == NULL);
	} else {
		FUNC0(FUNC3(node) <= 0);
	}

done:
	if (parent == NULL) {
		*cookie = (void *)CHILDBIT;
		FUNC0(node == tree->avl_root);
	} else {
		*cookie = (void *)((uintptr_t)parent | FUNC4(node));
	}

	return (FUNC2(node, off));
}