#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* avl_root; } ;
typedef  TYPE_1__ avl_tree_t ;
struct TYPE_14__ {struct TYPE_14__** avl_child; } ;
typedef  TYPE_2__ avl_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC6(avl_tree_t *tree, avl_node_t *node, int balance)
{
	int left = !(balance < 0);	/* when balance = -2, left will be 0 */
	int right = 1 - left;
	int left_heavy = balance >> 1;
	int right_heavy = -left_heavy;
	avl_node_t *parent = FUNC5(node);
	avl_node_t *child = node->avl_child[left];
	avl_node_t *cright;
	avl_node_t *gchild;
	avl_node_t *gright;
	avl_node_t *gleft;
	int which_child = FUNC4(node);
	int child_bal = FUNC3(child);

	/* BEGIN CSTYLED */
	/*
	 * case 1 : node is overly left heavy, the left child is balanced or
	 * also left heavy. This requires the following rotation.
	 *
	 *                   (node bal:-2)
	 *                    /           \
	 *                   /             \
	 *              (child bal:0 or -1)
	 *              /    \
	 *             /      \
	 *                     cright
	 *
	 * becomes:
	 *
	 *              (child bal:1 or 0)
	 *              /        \
	 *             /          \
	 *                        (node bal:-1 or 0)
	 *                         /     \
	 *                        /       \
	 *                     cright
	 *
	 * we detect this situation by noting that child's balance is not
	 * right_heavy.
	 */
	/* END CSTYLED */
	if (child_bal != right_heavy) {

		/*
		 * compute new balance of nodes
		 *
		 * If child used to be left heavy (now balanced) we reduced
		 * the height of this sub-tree -- used in "return...;" below
		 */
		child_bal += right_heavy; /* adjust towards right */

		/*
		 * move "cright" to be node's left child
		 */
		cright = child->avl_child[right];
		node->avl_child[left] = cright;
		if (cright != NULL) {
			FUNC2(cright, node);
			FUNC1(cright, left);
		}

		/*
		 * move node to be child's right child
		 */
		child->avl_child[right] = node;
		FUNC0(node, -child_bal);
		FUNC1(node, right);
		FUNC2(node, child);

		/*
		 * update the pointer into this subtree
		 */
		FUNC0(child, child_bal);
		FUNC1(child, which_child);
		FUNC2(child, parent);
		if (parent != NULL)
			parent->avl_child[which_child] = child;
		else
			tree->avl_root = child;

		return (child_bal == 0);
	}

	/* BEGIN CSTYLED */
	/*
	 * case 2 : When node is left heavy, but child is right heavy we use
	 * a different rotation.
	 *
	 *                   (node b:-2)
	 *                    /   \
	 *                   /     \
	 *                  /       \
	 *             (child b:+1)
	 *              /     \
	 *             /       \
	 *                   (gchild b: != 0)
	 *                     /  \
	 *                    /    \
	 *                 gleft   gright
	 *
	 * becomes:
	 *
	 *              (gchild b:0)
	 *              /       \
	 *             /         \
	 *            /           \
	 *        (child b:?)   (node b:?)
	 *         /  \          /   \
	 *        /    \        /     \
	 *            gleft   gright
	 *
	 * computing the new balances is more complicated. As an example:
	 *	 if gchild was right_heavy, then child is now left heavy
	 *		else it is balanced
	 */
	/* END CSTYLED */
	gchild = child->avl_child[right];
	gleft = gchild->avl_child[left];
	gright = gchild->avl_child[right];

	/*
	 * move gright to left child of node and
	 *
	 * move gleft to right child of node
	 */
	node->avl_child[left] = gright;
	if (gright != NULL) {
		FUNC2(gright, node);
		FUNC1(gright, left);
	}

	child->avl_child[right] = gleft;
	if (gleft != NULL) {
		FUNC2(gleft, child);
		FUNC1(gleft, right);
	}

	/*
	 * move child to left child of gchild and
	 *
	 * move node to right child of gchild and
	 *
	 * fixup parent of all this to point to gchild
	 */
	balance = FUNC3(gchild);
	gchild->avl_child[left] = child;
	FUNC0(child, (balance == right_heavy ? left_heavy : 0));
	FUNC2(child, gchild);
	FUNC1(child, left);

	gchild->avl_child[right] = node;
	FUNC0(node, (balance == left_heavy ? right_heavy : 0));
	FUNC2(node, gchild);
	FUNC1(node, right);

	FUNC0(gchild, 0);
	FUNC2(gchild, parent);
	FUNC1(gchild, which_child);
	if (parent != NULL)
		parent->avl_child[which_child] = gchild;
	else
		tree->avl_root = gchild;

	return (1);	/* the new tree is always shorter */
}